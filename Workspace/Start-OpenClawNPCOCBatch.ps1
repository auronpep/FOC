#requires -Version 7.0

param(
  [string]$CsvPath = 'C:\FOC\Workspace\incoming\NPCOC.csv',

  [string]$ManifestPath = 'C:\FOC\Workspace\incoming\NPCOC.openclaw-manifest.json',

  [switch]$RegenerateManifest,

  [switch]$Launch,

  [int]$Limit = 0,

  [int]$Skip = 0,

  [int]$ThrottleLimit = 10,

  [switch]$SkipExisting,

  [string]$RunLabel = ("npcoc-" + (Get-Date -Format 'yyyyMMdd-HHmmss'))
)

$ErrorActionPreference = 'Stop'

$runRoot = Join-Path 'C:\FOC\Workspace\OpenClawBatchResults' $RunLabel
$finishedRoot = 'C:\FOC\Workspace\Finished'

function ConvertTo-OpenClawNpcocManifest {
  param(
    [Parameter(Mandatory = $true)]
    [string]$SourceCsv,

    [Parameter(Mandatory = $true)]
    [string]$DestinationJson
  )

  if (-not (Test-Path -LiteralPath $SourceCsv)) {
    throw "Missing CSV: $SourceCsv"
  }

  $header = Get-Content -LiteralPath $SourceCsv -TotalCount 1
  $delimiter = if ($header -match "`t") { "`t" } else { "," }
  $rows = @(Import-Csv -LiteralPath $SourceCsv -Delimiter $delimiter)
  if ($rows.Count -eq 0) {
    throw "CSV has no rows: $SourceCsv"
  }

  $firstColumns = @($rows[0].PSObject.Properties.Name)
  foreach ($requiredColumn in @('Question ID', 'Model')) {
    if ($requiredColumn -notin $firstColumns) {
      throw "CSV is missing required column '$requiredColumn'. Found: $($firstColumns -join ', ')"
    }
  }

  $items = for ($i = 0; $i -lt $rows.Count; $i++) {
    $qid = [string]$rows[$i].'Question ID'
    $model = [string]$rows[$i].Model
    $qid = $qid.Trim()
    $model = $model.Trim()

    if ($qid -notmatch '^\d+$') {
      throw "Invalid Question ID at CSV row $($i + 2): '$qid'"
    }
    if ([string]::IsNullOrWhiteSpace($model)) {
      throw "Missing Model at CSV row $($i + 2)"
    }

    $outputPath = "C:\FOC\Workspace\Finished\CQ$qid.md"
    $message = "Please do this BarMatrix Multiple Choice Bar Exam Question $qid. Complete any research needed, do not stop at planning, verify your work, and save the entire response to $outputPath."

    [pscustomobject]@{
      index = $i + 1
      questionId = [int]$qid
      model = $model
      sessionKey = "cq$qid"
      timeoutSeconds = 28800
      verbose = 'on'
      outputPath = $outputPath
      message = $message
    }
  }

  $dupes = @($items | Group-Object questionId | Where-Object { $_.Count -gt 1 })
  if ($dupes.Count -gt 0) {
    throw "Duplicate question IDs would collide with session key cq<id>: $($dupes.Name -join ', ')"
  }

  $manifest = [pscustomobject]@{
    schema = 'openclaw-npcoc-batch.v1'
    generatedAt = (Get-Date).ToString('o')
    sourceCsv = $SourceCsv
    delimiter = if ($delimiter -eq "`t") { 'tab' } else { 'comma' }
    count = $items.Count
    defaults = [pscustomobject]@{
      agent = 'main'
      timeoutSeconds = 28800
      verbose = 'on'
      sessionKeyTemplate = 'cq<questionId>'
      outputPathTemplate = 'C:\FOC\Workspace\Finished\CQ<questionId>.md'
      messageTemplate = 'Please do this BarMatrix Multiple Choice Bar Exam Question <questionId>. Complete any research needed, do not stop at planning, verify your work, and save the entire response to C:\FOC\Workspace\Finished\CQ<questionId>.md.'
    }
    items = $items
  }

  $destinationDir = Split-Path -Parent $DestinationJson
  New-Item -ItemType Directory -Force -Path $destinationDir | Out-Null
  $manifest | ConvertTo-Json -Depth 12 | Set-Content -LiteralPath $DestinationJson -Encoding UTF8
  return $manifest
}

function ConvertTo-PowerShellArgument {
  param([AllowNull()][string]$Value)
  if ($null -eq $Value) { return "''" }
  return "'" + ($Value -replace "'", "''") + "'"
}

function ConvertTo-PreviewCommand {
  param([Parameter(Mandatory = $true)]$Item)
  $parts = @(
    'openclaw',
    'agent',
    '--agent', (ConvertTo-PowerShellArgument 'main'),
    '--session-key', (ConvertTo-PowerShellArgument $Item.sessionKey),
    '--model', (ConvertTo-PowerShellArgument $Item.model),
    '--verbose', (ConvertTo-PowerShellArgument 'on'),
    '--timeout', '28800',
    '--json',
    '--message', (ConvertTo-PowerShellArgument $Item.message)
  )
  return ($parts -join ' ')
}

if ($RegenerateManifest -or -not (Test-Path -LiteralPath $ManifestPath)) {
  $manifest = ConvertTo-OpenClawNpcocManifest -SourceCsv $CsvPath -DestinationJson $ManifestPath
} else {
  $manifest = Get-Content -Raw -LiteralPath $ManifestPath | ConvertFrom-Json
}

if ($manifest.schema -ne 'openclaw-npcoc-batch.v1') {
  throw "Unexpected manifest schema in ${ManifestPath}: $($manifest.schema)"
}

$items = @($manifest.items)
if ($items.Count -eq 0) {
  throw "Manifest contains no items: $ManifestPath"
}

$duplicateSessions = @($items | Group-Object sessionKey | Where-Object { $_.Count -gt 1 })
if ($duplicateSessions.Count -gt 0) {
  throw "Duplicate session keys in manifest: $($duplicateSessions.Name -join ', ')"
}

if ($Skip -gt 0) {
  $items = @($items | Select-Object -Skip $Skip)
}

if ($Limit -gt 0) {
  $items = @($items | Select-Object -First $Limit)
}

if ($SkipExisting) {
  $before = $items.Count
  $items = @($items | Where-Object { -not (Test-Path -LiteralPath $_.outputPath) })
  Write-Output "SkipExisting removed $($before - $items.Count) completed item(s)."
}

if ($items.Count -eq 0) {
  throw "No items selected."
}

New-Item -ItemType Directory -Force -Path $runRoot | Out-Null
New-Item -ItemType Directory -Force -Path $finishedRoot | Out-Null

$selectedManifestPath = Join-Path $runRoot 'selected-manifest.json'
$commandsPath = Join-Path $runRoot 'commands.preview.ps1'
$startsPath = Join-Path $runRoot 'starts.jsonl'
$summaryPath = Join-Path $runRoot 'batch-summary.jsonl'

$items | ConvertTo-Json -Depth 12 | Set-Content -LiteralPath $selectedManifestPath -Encoding UTF8
$items | ForEach-Object { ConvertTo-PreviewCommand -Item $_ } | Set-Content -LiteralPath $commandsPath -Encoding UTF8

Write-Output "Manifest: $ManifestPath"
Write-Output "Run root: $runRoot"
Write-Output "Selected tasks: $($items.Count)"
Write-Output "ThrottleLimit: $ThrottleLimit"
Write-Output "Preview commands: $commandsPath"
Write-Output "Selected manifest: $selectedManifestPath"

if (-not $Launch) {
  Write-Output "DRY RUN ONLY. Nothing launched."
  $items |
    Select-Object index, questionId, model, sessionKey, outputPath |
    Format-Table -AutoSize |
    Out-String -Width 4096
  Write-Output "Launch with: pwsh -NoProfile -File `"$PSCommandPath`" -Launch -Limit $Limit -ThrottleLimit $ThrottleLimit -RunLabel `"$RunLabel`""
  return
}

Write-Output "Launching $($items.Count) OpenClaw task(s)."
Write-Output "Summary: $summaryPath"
Write-Output "Starts: $startsPath"
Write-Output "Monitor starts: Get-Content -Wait `"$startsPath`""
Write-Output "Monitor summary: Get-Content -Wait `"$summaryPath`""

$results = $items | ForEach-Object -Parallel {
  $item = $_
  $runRootLocal = $using:runRoot
  $startsPathLocal = $using:startsPath
  $summaryPathLocal = $using:summaryPath
  $started = Get-Date
  $logFile = $null

  try {
    $slug = ($item.model -replace '[^A-Za-z0-9]+','-').Trim('-').ToLowerInvariant()
    if ($slug.Length -gt 72) { $slug = $slug.Substring(0, 72) }

    $logFile = Join-Path $runRootLocal ("{0:D4}-{1}-{2}.log" -f [int]$item.index, $item.sessionKey, $slug)

    $startRecord = [pscustomobject]@{
      event = 'start'
      index = [int]$item.index
      questionId = [int]$item.questionId
      model = [string]$item.model
      sessionKey = [string]$item.sessionKey
      started = $started
      log = $logFile
      output = [string]$item.outputPath
    }
    Add-Content -LiteralPath $startsPathLocal -Value ($startRecord | ConvertTo-Json -Compress -Depth 8) -Encoding UTF8

    $argsList = @(
      'agent',
      '--agent', 'main',
      '--session-key', [string]$item.sessionKey,
      '--model', [string]$item.model,
      '--verbose', 'on',
      '--timeout', '28800',
      '--json',
      '--message', [string]$item.message
    )

    Set-Content -LiteralPath $logFile -Value ("START {0:o} index={1} q={2} model={3}" -f $started, [int]$item.index, [int]$item.questionId, [string]$item.model) -Encoding UTF8
    $raw = & openclaw @argsList 2>&1 | Tee-Object -FilePath $logFile -Append
    $exit = $LASTEXITCODE
    $ended = Get-Date

    $result = [pscustomobject]@{
      status = 'completed'
      index = [int]$item.index
      questionId = [int]$item.questionId
      model = [string]$item.model
      sessionKey = [string]$item.sessionKey
      exitCode = $exit
      started = $started
      ended = $ended
      runtimeSeconds = [math]::Round(($ended - $started).TotalSeconds, 1)
      log = $logFile
      output = [string]$item.outputPath
      outputExists = Test-Path -LiteralPath ([string]$item.outputPath)
      outputBytes = if (Test-Path -LiteralPath ([string]$item.outputPath)) { (Get-Item -LiteralPath ([string]$item.outputPath)).Length } else { 0 }
      error = $null
    }

    Add-Content -LiteralPath $summaryPathLocal -Value ($result | ConvertTo-Json -Compress -Depth 8) -Encoding UTF8
    $result
  } catch {
    $ended = Get-Date
    if (-not $logFile) {
      $fallbackSession = if ($item.sessionKey) { [string]$item.sessionKey } else { 'unknown-session' }
      $logFile = Join-Path $runRootLocal ("{0:D4}-{1}-worker-error.log" -f [int]$item.index, $fallbackSession)
    }

    $errorText = $_.Exception.Message
    try {
      Add-Content -LiteralPath $logFile -Value ("WORKER ERROR {0:o} {1}" -f $ended, $errorText) -Encoding UTF8
    } catch {
      # Keep the scheduler alive even if a secondary log write fails.
    }

    $result = [pscustomobject]@{
      status = 'worker_error'
      index = [int]$item.index
      questionId = [int]$item.questionId
      model = [string]$item.model
      sessionKey = [string]$item.sessionKey
      exitCode = -999
      started = $started
      ended = $ended
      runtimeSeconds = [math]::Round(($ended - $started).TotalSeconds, 1)
      log = $logFile
      output = [string]$item.outputPath
      outputExists = if ($item.outputPath) { Test-Path -LiteralPath ([string]$item.outputPath) } else { $false }
      outputBytes = if ($item.outputPath -and (Test-Path -LiteralPath ([string]$item.outputPath))) { (Get-Item -LiteralPath ([string]$item.outputPath)).Length } else { 0 }
      error = $errorText
    }

    try {
      Add-Content -LiteralPath $summaryPathLocal -Value ($result | ConvertTo-Json -Compress -Depth 8) -Encoding UTF8
    } catch {
      # Returning the object still surfaces the failure in the parent shell.
    }
    $result
  }
} -ThrottleLimit $ThrottleLimit

$results | ForEach-Object { $_ | ConvertTo-Json -Compress -Depth 8 }
Write-Output "Done. Summary: $summaryPath"
