[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$ManifestPath = (Join-Path $PSScriptRoot 'incoming\LPOC.openclaw-manifest.json'),
  [string]$OpenClawPath = (Join-Path (Split-Path -Parent $PSScriptRoot) 'bin\openclaw.ps1'),
  [string]$ResultsRoot = (Join-Path $PSScriptRoot 'OpenClawBatchResults'),
  [string]$RunLabel = ("lpoc-" + (Get-Date -Format 'yyyyMMdd-HHmmss')),
  [int]$ThrottleLimit = 8,
  [int]$Limit = 0,
  [int]$Skip = 0,
  [switch]$Launch,
  [switch]$SkipExisting,
  [switch]$Force,
  [switch]$SkipVerify,
  [switch]$RequireLedger,
  [switch]$AllowLegacyValidation
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if ($PSVersionTable.PSVersion.Major -lt 7) {
  throw "Run this with PowerShell 7+: pwsh -NoProfile -File $PSCommandPath"
}

if ($ThrottleLimit -lt 1) {
  throw '-ThrottleLimit must be at least 1.'
}

if ($Limit -lt 0) {
  throw '-Limit cannot be negative.'
}

if ($Skip -lt 0) {
  throw '-Skip cannot be negative.'
}

if ($Force -and $SkipExisting) {
  throw 'Use either -Force or -SkipExisting, not both.'
}

if (-not (Test-Path -LiteralPath $ManifestPath -PathType Leaf)) {
  throw "Manifest not found: $ManifestPath. Generate it with New-OpenClawLPOCManifest.ps1 first."
}

if (-not (Test-Path -LiteralPath $OpenClawPath -PathType Leaf)) {
  throw "FOC OpenClaw wrapper not found: $OpenClawPath"
}

function ConvertTo-PSQuotedString {
  param([AllowNull()][string]$Value)

  if ($null -eq $Value) {
    return "''"
  }

  return "'" + ($Value -replace "'", "''") + "'"
}

$manifest = Get-Content -Raw -LiteralPath $ManifestPath | ConvertFrom-Json
$items = @($manifest.items)
if ($items.Count -eq 0) {
  throw "Manifest has no items: $ManifestPath"
}

if ($Skip -gt 0) {
  $items = @($items | Select-Object -Skip $Skip)
}

if ($SkipExisting) {
  $items = @($items | Where-Object { -not (Test-Path -LiteralPath ([string]$_.outputPath) -PathType Leaf) })
}

if ($Limit -gt 0) {
  $items = @($items | Select-Object -First $Limit)
}

if (-not $Force) {
  $alreadyFinished = @($items | Where-Object { Test-Path -LiteralPath ([string]$_.outputPath) -PathType Leaf })
  if ($alreadyFinished.Count -gt 0) {
    $first = $alreadyFinished[0].outputPath
    throw "$($alreadyFinished.Count) selected output files already exist. Use -SkipExisting to omit them or -Force to regenerate. First: $first"
  }
}

$runRoot = Join-Path $ResultsRoot $RunLabel
New-Item -ItemType Directory -Force -Path $runRoot | Out-Null

$commandsPreviewPath = Join-Path $runRoot 'commands.preview.ps1'
$summaryPath = Join-Path $runRoot 'batch-summary.jsonl'
$startsPath = Join-Path $runRoot 'starts.jsonl'
$selectedManifestPath = Join-Path $runRoot 'selected-manifest.json'
$forceBackupRoot = Join-Path $runRoot 'force-existing-output-backup'

$commandLines = New-Object System.Collections.Generic.List[string]
$commandLines.Add('# Preview commands only. Running this file would launch OpenClaw agent work.') | Out-Null
$commandLines.Add("# Generated from $ManifestPath") | Out-Null
$commandLines.Add('# Thinking is taken from OpenClaw model defaults in C:\FOC\.openclaw\openclaw.json; no --thinking override is passed.') | Out-Null
$commandLines.Add('') | Out-Null

foreach ($item in $items) {
  $commandLines.Add((
    '& {0} --no-color agent --agent {1} --session-key {2} --model {3} --verbose {4} --timeout {5} --json --message {6}' -f
    (ConvertTo-PSQuotedString $OpenClawPath),
    (ConvertTo-PSQuotedString ([string]$manifest.defaults.agent)),
    (ConvertTo-PSQuotedString ([string]$item.sessionKey)),
    (ConvertTo-PSQuotedString ([string]$item.model)),
    (ConvertTo-PSQuotedString ([string]$item.verbose)),
    (ConvertTo-PSQuotedString ([string]$item.timeoutSeconds)),
    (ConvertTo-PSQuotedString ([string]$item.message))
  )) | Out-Null
}
$commandLines | Set-Content -LiteralPath $commandsPreviewPath -Encoding UTF8

[ordered]@{
  schema = 'openclaw-lpoc-run-selection.v1'
  generatedAt = (Get-Date).ToString('o')
  manifestPath = (Resolve-Path -LiteralPath $ManifestPath).Path
  openClawPath = $OpenClawPath
  runLabel = $RunLabel
  launch = [bool]$Launch
  throttleLimit = $ThrottleLimit
  count = $items.Count
  skipExisting = [bool]$SkipExisting
  force = [bool]$Force
  skipVerify = [bool]$SkipVerify
  requireLedger = [bool]$RequireLedger
  startsPath = $startsPath
  summaryPath = $summaryPath
  items = @($items)
} | ConvertTo-Json -Depth 12 | Set-Content -LiteralPath $selectedManifestPath -Encoding UTF8

Write-Host "Run root: $runRoot"
Write-Host "Selected items: $($items.Count)"
Write-Host "ThrottleLimit: $ThrottleLimit"
Write-Host "Commands preview: $commandsPreviewPath"
Write-Host "Selected manifest: $selectedManifestPath"
Write-Host "Starts: $startsPath"
Write-Host "Summary: $summaryPath"
Write-Host "Monitor starts: Get-Content -Wait `"$startsPath`""
Write-Host "Monitor summary: Get-Content -Wait `"$summaryPath`""

if (-not $Launch) {
  Write-Host ''
  Write-Host 'Dry run only. Add -Launch to start OpenClaw agent work.'
  return
}

if ($items.Count -eq 0) {
  Write-Host 'No selected items to launch.'
  return
}

$verifyScript = Join-Path $PSScriptRoot 'verify_json.ps1'
if (-not $SkipVerify -and -not (Test-Path -LiteralPath $verifyScript -PathType Leaf)) {
  throw "Verifier not found: $verifyScript"
}

if ($Force) {
  $existingOutputs = @($items | Where-Object { Test-Path -LiteralPath ([string]$_.outputPath) -PathType Leaf })
  if ($existingOutputs.Count -gt 0) {
    New-Item -ItemType Directory -Force -Path $forceBackupRoot | Out-Null
    foreach ($item in $existingOutputs) {
      $sourcePath = [string]$item.outputPath
      $backupName = "{0:0000}-CQ{1}.md" -f [int]$item.index, [int]$item.questionId
      $backupPath = Join-Path $forceBackupRoot $backupName
      Copy-Item -LiteralPath $sourcePath -Destination $backupPath -Force
      Remove-Item -LiteralPath $sourcePath -Force
    }
    Write-Host "Force backed up and removed $($existingOutputs.Count) existing output file(s): $forceBackupRoot"
  }
}

$agent = [string]$manifest.defaults.agent
$workspaceRoot = $PSScriptRoot

$results = $items | ForEach-Object -Parallel {
  $item = $_
  $openClawPathLocal = $using:OpenClawPath
  $runRootLocal = $using:runRoot
  $startsPathLocal = $using:startsPath
  $summaryPathLocal = $using:summaryPath
  $verifyScriptLocal = $using:verifyScript
  $skipVerifyLocal = [bool]$using:SkipVerify
  $requireLedgerLocal = [bool]$using:RequireLedger
  $allowLegacyValidationLocal = [bool]$using:AllowLegacyValidation
  $agentLocal = $using:agent
  $workspaceRootLocal = $using:workspaceRoot

  function Add-JsonLineSafeLocal {
    param(
      [Parameter(Mandatory)][string]$Path,
      [Parameter(Mandatory)][object]$Record
    )

    $line = $Record | ConvertTo-Json -Compress -Depth 8
    $bytes = [System.Text.Encoding]::UTF8.GetBytes($Path.ToLowerInvariant())
    $sha = [System.Security.Cryptography.SHA256]::Create()
    try {
      $hash = [System.BitConverter]::ToString($sha.ComputeHash($bytes)).Replace('-', '')
    } finally {
      $sha.Dispose()
    }

    $mutex = [System.Threading.Mutex]::new($false, "Global\OpenClawLPOCBatchJsonl-$hash")
    $acquired = $false
    try {
      $acquired = $mutex.WaitOne([TimeSpan]::FromSeconds(30))
      if (-not $acquired) {
        throw "Timed out waiting to write JSONL file: $Path"
      }

      Add-Content -LiteralPath $Path -Value $line -Encoding UTF8
    } finally {
      if ($acquired) {
        $mutex.ReleaseMutex()
      }

      $mutex.Dispose()
    }
  }

  # Defined inside the parallel block on purpose: ForEach-Object -Parallel
  # runspaces cannot see functions declared in the caller's scope.
  function Get-SafeFileNameSegmentLocal {
    param([Parameter(Mandatory)][string]$Value)

    $safe = ($Value -replace '[^A-Za-z0-9]+', '-').Trim('-').ToLowerInvariant()
    if ($safe.Length -gt 64) {
      return $safe.Substring(0, 64)
    }

    if ([string]::IsNullOrWhiteSpace($safe)) {
      return 'model'
    }

    return $safe
  }

  $started = Get-Date
  $questionId = if ($item.PSObject.Properties.Name -contains 'questionId') { [int]$item.questionId } else { -1 }
  $model = if ($item.PSObject.Properties.Name -contains 'model') { [string]$item.model } else { 'unknown-model' }
  $configuredThinking = if ($item.PSObject.Properties.Name -contains 'thinking' -and -not [string]::IsNullOrWhiteSpace([string]$item.thinking)) { [string]$item.thinking } else { $null }
  $safeModel = Get-SafeFileNameSegmentLocal -Value $model
  $logPath = Join-Path $runRootLocal ("{0:0000}-q{1}-{2}.log" -f [int]$item.index, $questionId, $safeModel)
  $verifyLogPath = Join-Path $runRootLocal ("{0:0000}-q{1}-verify.log" -f [int]$item.index, $questionId)

  try {
    $startRecord = [ordered]@{
      event = 'start'
      index = [int]$item.index
      questionId = $questionId
      model = $model
      configuredThinking = $configuredThinking
      sessionKey = [string]$item.sessionKey
      started = $started.ToString('o')
      log = $logPath
      output = [string]$item.outputPath
    }
    Add-JsonLineSafeLocal -Path $startsPathLocal -Record $startRecord

    $argsList = @(
      '--no-color',
      'agent',
      '--agent', $agentLocal,
      '--session-key', ([string]$item.sessionKey),
      '--model', $model,
      '--verbose', ([string]$item.verbose),
      '--timeout', ([string]$item.timeoutSeconds),
      '--json',
      '--message', ([string]$item.message)
    )

    Set-Content -LiteralPath $logPath -Value ("START {0:o} q={1} model={2} configuredThinking={3}" -f $started, $questionId, $model, $configuredThinking) -Encoding UTF8
    $raw = & $openClawPathLocal @argsList 2>&1 | Tee-Object -FilePath $logPath -Append
    $exitCode = $LASTEXITCODE
    $ended = Get-Date

    $outputPath = [string]$item.outputPath
    $outputExists = Test-Path -LiteralPath $outputPath -PathType Leaf
    $verifyExitCode = $null

    if ($exitCode -eq 0 -and $outputExists -and -not $skipVerifyLocal) {
      $verifyArgs = @(
        '-NoProfile',
        '-File', $verifyScriptLocal,
        '-Path', $outputPath,
        '-WorkspaceRoot', $workspaceRootLocal
      )

      if ($requireLedgerLocal) {
        $verifyArgs += '-RequireLedger'
      }

      if ($allowLegacyValidationLocal) {
        $verifyArgs += '-AllowLegacyWrappers'
      }

      $verifyRaw = & pwsh @verifyArgs 2>&1
      $verifyExitCode = $LASTEXITCODE
      Set-Content -LiteralPath $verifyLogPath -Value $verifyRaw -Encoding UTF8
    }

    $result = [ordered]@{
      status = 'completed'
      index = [int]$item.index
      questionId = $questionId
      model = $model
      configuredThinking = $configuredThinking
      sessionKey = [string]$item.sessionKey
      exitCode = $exitCode
      outputExists = $outputExists
      outputBytes = if ($outputExists) { (Get-Item -LiteralPath $outputPath).Length } else { 0 }
      verifyExitCode = $verifyExitCode
      started = $started.ToString('o')
      ended = $ended.ToString('o')
      runtimeSeconds = [math]::Round(($ended - $started).TotalSeconds, 1)
      log = $logPath
      verifyLog = if (Test-Path -LiteralPath $verifyLogPath -PathType Leaf) { $verifyLogPath } else { $null }
      output = $outputPath
      error = $null
    }

    Add-JsonLineSafeLocal -Path $summaryPathLocal -Record $result
    [pscustomobject]$result
  } catch {
    $ended = Get-Date
    $errorText = $_.Exception.Message
    try {
      Add-Content -LiteralPath $logPath -Value ("WORKER ERROR {0:o} {1}" -f $ended, $errorText) -Encoding UTF8
    } catch {
      # Keep returning a summary row even if the log write fails.
    }

    $outputPath = if ($item.PSObject.Properties.Name -contains 'outputPath') { [string]$item.outputPath } else { $null }
    $outputExists = if ($outputPath) { Test-Path -LiteralPath $outputPath -PathType Leaf } else { $false }
    $result = [ordered]@{
      status = 'worker_error'
      index = if ($item.PSObject.Properties.Name -contains 'index') { [int]$item.index } else { -1 }
      questionId = $questionId
      model = $model
      configuredThinking = $configuredThinking
      sessionKey = if ($item.PSObject.Properties.Name -contains 'sessionKey') { [string]$item.sessionKey } else { $null }
      exitCode = -999
      outputExists = $outputExists
      outputBytes = if ($outputExists) { (Get-Item -LiteralPath $outputPath).Length } else { 0 }
      verifyExitCode = $null
      started = $started.ToString('o')
      ended = $ended.ToString('o')
      runtimeSeconds = [math]::Round(($ended - $started).TotalSeconds, 1)
      log = $logPath
      verifyLog = $null
      output = $outputPath
      error = $errorText
    }
    Add-JsonLineSafeLocal -Path $summaryPathLocal -Record $result
    [pscustomobject]$result
  }
} -ThrottleLimit $ThrottleLimit

$failures = @($results | Where-Object {
  $_.exitCode -ne 0 -or
  -not $_.outputExists -or
  ($null -ne $_.verifyExitCode -and $_.verifyExitCode -ne 0)
})

Write-Host ''
Write-Host "Completed: $($results.Count)"
Write-Host "Failures: $($failures.Count)"
Write-Host "Summary: $summaryPath"

if ($failures.Count -gt 0) {
  exit 1
}
