[CmdletBinding(PositionalBinding = $false)]
param(
  [string[]]$Questions,
  [int]$Start,
  [int]$End,
  [int]$Next,
  [string[]]$Models = @(
    'openai/gpt-5.5',
    'openai/gpt-5.4-mini',
    'openrouter/owl-alpha',
    'github-copilot/gpt-5-mini',
    'nemotron-3-ultra-550b/nvidia/nemotron-3-ultra-550b-a55b',
    'nv-qwen3-next-80b/qwen/qwen3-next-80b-a3b-instruct',
    'nv-qwen3-5-397b/qwen/qwen3.5-397b-a17b',
    'nv-mistral-medium-3-5/mistralai/mistral-medium-3.5-128b',
    'minimax/MiniMax-M2.7'
  ),
  [int]$ThrottleLimit = 8,
  [int]$TimeoutSeconds = 28800,
  [int]$PreflightTimeoutSeconds = 60,
  [string]$RunLabel = ("c3-custom-" + (Get-Date -Format 'yyyyMMdd-HHmmss')),
  [string]$ResultsRoot = (Join-Path $PSScriptRoot 'OpenClawBatchResults'),
  [string]$WorkspaceRoot = $PSScriptRoot,
  [switch]$Launch,
  [switch]$Force,
  [switch]$SkipKnownBad,
  [switch]$SkipPreflight,
  [switch]$SkipVerify,
  [switch]$AllowLegacyValidation
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if ($PSVersionTable.PSVersion.Major -lt 7) {
  throw "Run with PowerShell 7+: pwsh -NoProfile -File `"$PSCommandPath`""
}

if ($ThrottleLimit -lt 1) {
  throw '-ThrottleLimit must be at least 1.'
}

if ($TimeoutSeconds -lt 60) {
  throw '-TimeoutSeconds must be at least 60.'
}

if ($PreflightTimeoutSeconds -lt 5) {
  throw '-PreflightTimeoutSeconds must be at least 5.'
}

function Convert-ToTokenList {
  param([string[]]$Value)

  $tokens = New-Object System.Collections.Generic.List[string]
  foreach ($entry in @($Value)) {
    foreach ($part in ([string]$entry -split '[,\s]+')) {
      if (-not [string]::IsNullOrWhiteSpace($part)) {
        $tokens.Add($part.Trim()) | Out-Null
      }
    }
  }

  return @($tokens)
}

function Convert-ToQuestionList {
  param(
    [string[]]$QuestionTokens,
    [int]$StartValue,
    [int]$EndValue,
    [int]$NextValue,
    [string]$QBankRoot,
    [string]$FinishedRoot,
    [switch]$ForceExisting
  )

  if ($QuestionTokens -and $QuestionTokens.Count -gt 0) {
    $parsed = foreach ($entry in $QuestionTokens) {
      foreach ($part in ([string]$entry -split '[,\s]+')) {
        if ([string]::IsNullOrWhiteSpace($part)) {
          continue
        }

        $questionNumber = 0
        if (-not [int]::TryParse($part, [ref]$questionNumber)) {
          throw "Invalid question number '$part'. Use -Questions '22031,22032' or -Start 22031 -End 22050."
        }
        $questionNumber
      }
    }

    return @($parsed | Sort-Object -Unique)
  }

  if ($StartValue -gt 0 -or $EndValue -gt 0) {
    if ($StartValue -le 0 -or $EndValue -le 0) {
      throw 'Use both -Start and -End, or use -Questions, or use -Next.'
    }
    if ($EndValue -lt $StartValue) {
      throw '-End must be greater than or equal to -Start.'
    }
    return @($StartValue..$EndValue)
  }

  if ($NextValue -gt 0) {
    $qbankFiles = Get-ChildItem -LiteralPath $QBankRoot -Filter '*.md' -File |
      Where-Object { $_.BaseName -match '^\d+$' } |
      Sort-Object { [int]$_.BaseName }

    $selected = New-Object System.Collections.Generic.List[int]
    foreach ($file in $qbankFiles) {
      $q = [int]$file.BaseName
      $outputPath = Join-Path $FinishedRoot "CQ$q.md"
      if ((Test-Path -LiteralPath $outputPath -PathType Leaf) -and -not $ForceExisting) {
        continue
      }

      $selected.Add($q) | Out-Null
      if ($selected.Count -ge $NextValue) {
        break
      }
    }

    if ($selected.Count -eq 0) {
      throw 'No runnable unfinished QBank questions were found.'
    }

    return @($selected)
  }

  throw 'Provide -Questions, -Start/-End, or -Next.'
}

function Resolve-OpenClawCommand {
  $projectWrapper = (Join-Path (Split-Path -Parent $PSScriptRoot) 'bin\openclaw.ps1')
  if (Test-Path -LiteralPath $projectWrapper -PathType Leaf) {
    return $projectWrapper
  }

  $command = Get-Command openclaw -ErrorAction Stop
  return $command.Source
}

function Invoke-OpenClawJson {
  param(
    [string]$OpenClawPath,
    [string[]]$Arguments,
    [int]$CommandTimeoutSeconds
  )

  $job = Start-Job -ArgumentList $OpenClawPath, $Arguments -ScriptBlock {
    param($Path, $ArgsList)
    $raw = & $Path @ArgsList 2>&1
    [pscustomobject]@{
      ExitCode = $LASTEXITCODE
      Text = ($raw | Out-String)
    }
  }

  try {
    if (-not (Wait-Job -Job $job -Timeout $CommandTimeoutSeconds)) {
      Stop-Job -Job $job -ErrorAction SilentlyContinue
      throw "OpenClaw preflight timed out after $CommandTimeoutSeconds seconds: $($Arguments -join ' ')"
    }

    $result = Receive-Job -Job $job -ErrorAction Stop
    if ($result.ExitCode -ne 0) {
      throw "OpenClaw preflight failed with exit code $($result.ExitCode): $($Arguments -join ' ')`n$($result.Text)"
    }

    return ($result.Text | ConvertFrom-Json)
  }
  finally {
    Remove-Job -Job $job -Force -ErrorAction SilentlyContinue
  }
}

function Get-ThinkingForModel {
  param([string]$Model)

  $thinkingByModel = @{
    'openai/gpt-5.5' = 'xhigh'
    'openai/gpt-5.4' = 'xhigh'
    'openai/gpt-5.4-mini' = 'xhigh'
    'anthropic/claude-opus-4-8' = 'max'
    'anthropic/claude-opus-4-7' = 'max'
    'anthropic/claude-opus-4-6' = 'max'
    'anthropic/claude-sonnet-4-6' = 'high'
    'google/gemini-3-flash-preview' = 'high'
    'google/gemini-2.5-pro' = 'high'
    'google/gemini-3.1-flash-lite' = 'high'
    'github-copilot/gpt-5-mini' = 'high'
    'minimax/MiniMax-M3' = 'adaptive'
    'minimax/MiniMax-M2.7' = 'high'
    'openrouter/owl-alpha' = 'high'
    'openrouter/openai/gpt-oss-120b:free' = 'high'
    'openrouter/poolside/laguna-m.1:free' = 'high'
    'openrouter/nex-agi/nex-n2-pro:free' = 'high'
    'openrouter/google/gemma-4-26b-a4b-it' = 'high'
    'xai/grok-build-0.1' = 'high'
    'xai/grok-4.3' = 'high'
    'xai/grok-4.20-beta-latest-reasoning' = 'high'
  }

  if ($thinkingByModel.ContainsKey($Model)) {
    return $thinkingByModel[$Model]
  }

  return 'off'
}

function Get-KnownBadModels {
  return @{
    'xai/grok-build-0.1' = 'Prior run returned xAI credits/subscription failure.'
    'xai/grok-4.3' = 'Prior run returned xAI credits/subscription failure.'
    'xai/grok-4.20-beta-latest-reasoning' = 'Prior run returned xAI credits/subscription failure.'
    'google/gemini-2.5-pro' = 'Prior run hit Google quota.'
    'google/gemini-3-flash-preview' = 'Prior run hit Google overload/failure.'
  }
}

function New-SafeSlug {
  param([string]$Text)

  $slug = ($Text -replace '[^A-Za-z0-9]+', '-').Trim('-').ToLowerInvariant()
  if ($slug.Length -gt 72) {
    return $slug.Substring(0, 72)
  }
  return $slug
}

function New-C3Prompt {
  param(
    [int]$QuestionNumber,
    [string]$TargetFile
  )

  return @"
Do BarMatrix question Q$QuestionNumber only.

Rules:
- Process exactly one question.
- Do not start another question.
- Do not spawn subagents.
- Do not ask permission to save.
- Do not merely plan. Execute the file write.
- Never edit files in QBank.
- Save the complete final markdown output exactly to:
$TargetFile

Use the local workspace files:
- AGENTS.md
- PROMPT.md
- controlled_vocabularies.md
- skills/cq-transform-qa/SKILL.md
- OUTLINE_CODES_COMPLETE.md
- QBank/$QuestionNumber.md

Treat PROMPT.md and skills/cq-transform-qa/SKILL.md as binding. Use QBank/$QuestionNumber.md only for the source question row after its QUESTION TO REVIEW section; ignore stale embedded instructions in QBank that conflict with PROMPT.md.

The saved file must be a complete C3/CQ output:
- YAML frontmatter
- Pass-1 transform report
- all five Pass-2 blocks
- named parseable JSON blocks for c3_annotation, program_elements, and program_intelligence
- verified outline_code from OUTLINE_CODES_COMPLETE.md or 00000000 with a reason
- controlled vocabulary values only from controlled_vocabularies.md
- updated tasks/todo.md review results for Q$QuestionNumber

Before finishing, run:
pwsh -NoProfile -File verify_json.ps1 -Path Finished/CQ$QuestionNumber.md -WorkspaceRoot . -RequireLedger

If validation fails, fix the saved file and rerun validation until it passes. If a legal/key issue makes the item impossible to pass cleanly, still create the complete CQ file, set the appropriate NEEDS_HUMAN or FORK_OR_SPLIT verdict, make every JSON block parse, and state the blocker in the file.

Final chat response should only say:
saved $TargetFile
"@
}

$workspace = (Resolve-Path -LiteralPath $WorkspaceRoot).Path
$qbank = Join-Path $workspace 'QBank'
$finished = Join-Path $workspace 'Finished'
$verifyScript = Join-Path $workspace 'verify_json.ps1'
$runRoot = Join-Path $ResultsRoot $RunLabel

if (-not (Test-Path -LiteralPath $qbank -PathType Container)) {
  throw "Missing QBank folder: $qbank"
}
if (-not (Test-Path -LiteralPath $finished -PathType Container)) {
  throw "Missing Finished folder: $finished"
}
if (-not $SkipVerify -and -not (Test-Path -LiteralPath $verifyScript -PathType Leaf)) {
  throw "Missing verifier script: $verifyScript"
}

$modelList = @(Convert-ToTokenList -Value $Models)
if ($modelList.Count -eq 0) {
  throw 'At least one model is required.'
}

$knownBad = Get-KnownBadModels
if ($SkipKnownBad) {
  $modelList = @($modelList | Where-Object { -not $knownBad.ContainsKey($_) })
  if ($modelList.Count -eq 0) {
    throw 'All selected models are marked known-bad.'
  }
} else {
  $knownBadSelected = @($modelList | Where-Object { $knownBad.ContainsKey($_) })
  if ($knownBadSelected.Count -gt 0) {
    Write-Warning "Selected model(s) have prior failure notes: $($knownBadSelected -join ', '). Use -SkipKnownBad to drop them."
  }
}

$questionList = Convert-ToQuestionList `
  -QuestionTokens $Questions `
  -StartValue $Start `
  -EndValue $End `
  -NextValue $Next `
  -QBankRoot $qbank `
  -FinishedRoot $finished `
  -ForceExisting:$Force

New-Item -ItemType Directory -Force -Path $runRoot | Out-Null

$openclaw = Resolve-OpenClawCommand
$planned = New-Object System.Collections.Generic.List[object]
$runIndex = 0

foreach ($q in $questionList) {
  $sourcePath = Join-Path $qbank "$q.md"
  $targetPath = Join-Path $finished "CQ$q.md"

  if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf)) {
    throw "Missing source question: $sourcePath"
  }

  if ((Test-Path -LiteralPath $targetPath -PathType Leaf) -and -not $Force) {
    $planned.Add([pscustomobject]@{
      question = $q
      action = 'skip-existing'
      model = ''
      thinking = ''
      sessionKey = ''
      output = $targetPath
      source = $sourcePath
    }) | Out-Null
    continue
  }

  $model = $modelList[$runIndex % $modelList.Count]
  $thinking = Get-ThinkingForModel -Model $model
  $slug = New-SafeSlug -Text $model
  $sessionKey = "$RunLabel-q$q-$slug"

  $planned.Add([pscustomobject]@{
    question = $q
    action = 'run'
    model = $model
    thinking = $thinking
    sessionKey = $sessionKey
    output = $targetPath
    source = $sourcePath
    prompt = (New-C3Prompt -QuestionNumber $q -TargetFile $targetPath)
  }) | Out-Null
  $runIndex++
}

$plannedRuns = @($planned | Where-Object { $_.action -eq 'run' })

$manifestPath = Join-Path $runRoot 'manifest.json'
$manifestCsvPath = Join-Path $runRoot 'manifest.csv'
$preflightPath = Join-Path $runRoot 'preflight.json'
$summaryPath = Join-Path $runRoot 'batch-summary.jsonl'

$planned | ConvertTo-Json -Depth 8 -AsArray | Set-Content -LiteralPath $manifestPath -Encoding UTF8
$planned | Export-Csv -LiteralPath $manifestCsvPath -NoTypeInformation

$preflight = [ordered]@{
  generatedAt = (Get-Date).ToString('o')
  launch = [bool]$Launch
  workspace = $workspace
  runRoot = $runRoot
  openclaw = $openclaw
  throttleLimit = $ThrottleLimit
  timeoutSeconds = $TimeoutSeconds
  preflightTimeoutSeconds = $PreflightTimeoutSeconds
  skipVerify = [bool]$SkipVerify
  force = [bool]$Force
  plannedCount = $planned.Count
  runnableCount = $plannedRuns.Count
  skippedExistingCount = @($planned | Where-Object { $_.action -eq 'skip-existing' }).Count
  models = $modelList
}

if (-not $SkipPreflight) {
  $health = Invoke-OpenClawJson -OpenClawPath $openclaw -Arguments @('--no-color', 'health', '--json') -CommandTimeoutSeconds $PreflightTimeoutSeconds
  $status = Invoke-OpenClawJson -OpenClawPath $openclaw -Arguments @('--no-color', 'status', '--json') -CommandTimeoutSeconds $PreflightTimeoutSeconds
  $modelsJson = Invoke-OpenClawJson -OpenClawPath $openclaw -Arguments @('--no-color', 'models', 'list', '--json') -CommandTimeoutSeconds $PreflightTimeoutSeconds
  $configured = @($modelsJson.models | Where-Object { $_.tags -contains 'configured' })
  $configuredKeys = @($configured | Select-Object -ExpandProperty key)
  $availableKeys = @($configured | Where-Object { $_.available -eq $true } | Select-Object -ExpandProperty key)
  $targetModels = @($plannedRuns | Select-Object -ExpandProperty model -Unique)
  $missingModels = @($targetModels | Where-Object { $configuredKeys -notcontains $_ })
  $unavailableModels = @($targetModels | Where-Object { $availableKeys -notcontains $_ })

  $preflight['healthOk'] = [bool]$health.ok
  $preflight['gatewayReachable'] = [bool]$status.gateway.reachable
  $preflight['activeTasks'] = [int]$status.tasks.active
  $preflight['queuedTasks'] = [int]$status.tasks.byStatus.queued
  $preflight['runningTasks'] = [int]$status.tasks.byStatus.running
  $preflight['missingModels'] = $missingModels
  $preflight['unavailableModels'] = $unavailableModels

  if (-not $health.ok) {
    throw 'OpenClaw health check failed.'
  }
  if ($missingModels.Count -gt 0) {
    throw "Missing configured models: $($missingModels -join ', ')"
  }
  if ($unavailableModels.Count -gt 0) {
    throw "Unavailable configured models: $($unavailableModels -join ', ')"
  }
}

$preflight | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath $preflightPath -Encoding UTF8

Write-Host "Run root: $runRoot"
Write-Host "Manifest: $manifestPath"
Write-Host "Runnable tasks: $($plannedRuns.Count)"
Write-Host "Skipped existing: $(@($planned | Where-Object { $_.action -eq 'skip-existing' }).Count)"
Write-Host "ThrottleLimit: $ThrottleLimit"
Write-Host "Models: $($modelList -join ', ')"
$planned | Select-Object question, action, model, thinking, sessionKey, output | Format-Table -AutoSize

if (-not $Launch) {
  Write-Host ''
  Write-Host 'Dry run only. Add -Launch to send OpenClaw tasks.'
  $launchQuestionArg = ($plannedRuns | Select-Object -ExpandProperty question) -join ','
  $launchModelArg = $modelList -join ','
  Write-Host "Launch command:"
  Write-Host "pwsh -NoProfile -File `"$PSCommandPath`" -Questions '$launchQuestionArg' -Models '$launchModelArg' -RunLabel `"$RunLabel`" -Launch"
  exit 0
}

if ($plannedRuns.Count -eq 0) {
  Write-Host 'No runnable tasks.'
  exit 0
}

$skipVerifyFlag = [bool]$SkipVerify
$allowLegacyValidationFlag = [bool]$AllowLegacyValidation

$results = $plannedRuns | ForEach-Object -Parallel {
  $item = $_
  $openclawPath = $using:openclaw
  $workspaceLocal = $using:workspace
  $runRootLocal = $using:runRoot
  $timeoutSecondsLocal = $using:TimeoutSeconds
  $skipVerifyLocal = $using:skipVerifyFlag
  $allowLegacyValidationLocal = $using:allowLegacyValidationFlag
  $verifyScriptLocal = $using:verifyScript

  $q = [int]$item.question
  $logPath = Join-Path $runRootLocal ("{0}.log" -f $item.sessionKey)
  $verifyLogPath = Join-Path $runRootLocal ("{0}.verify.log" -f $item.sessionKey)
  $prompt = [string]$item.prompt

  $argsList = @(
    'agent',
    '--agent', 'main',
    '--session-key', [string]$item.sessionKey,
    '--model', [string]$item.model,
    '--thinking', [string]$item.thinking,
    '--verbose', 'on',
    '--timeout', ([string]$timeoutSecondsLocal),
    '--json',
    '--message', $prompt
  )

  $started = Get-Date
  Set-Content -LiteralPath $logPath -Encoding UTF8 -Value ("START {0:o} q={1} model={2} thinking={3}" -f $started, $q, $item.model, $item.thinking)
  $raw = & $openclawPath @argsList 2>&1
  $exitCode = $LASTEXITCODE
  Add-Content -LiteralPath $logPath -Encoding UTF8 -Value $raw
  $ended = Get-Date

  $outputExists = Test-Path -LiteralPath ([string]$item.output) -PathType Leaf
  $verifyExitCode = $null
  if ($outputExists -and -not $skipVerifyLocal) {
    $verifyArgs = @(
      '-NoProfile',
      '-File', $verifyScriptLocal,
      '-Path', ([string]$item.output),
      '-WorkspaceRoot', $workspaceLocal,
      '-RequireLedger'
    )
    if ($allowLegacyValidationLocal) {
      $verifyArgs += '-AllowLegacyWrappers'
    }

    $verifyRaw = & pwsh @verifyArgs 2>&1
    $verifyExitCode = $LASTEXITCODE
    $verifyRaw | Set-Content -LiteralPath $verifyLogPath -Encoding UTF8
  }

  [pscustomobject]@{
    question = $q
    model = [string]$item.model
    thinking = [string]$item.thinking
    sessionKey = [string]$item.sessionKey
    exitCode = $exitCode
    outputExists = $outputExists
    verifyExitCode = $verifyExitCode
    started = $started.ToString('o')
    ended = $ended.ToString('o')
    runtimeSeconds = [math]::Round(($ended - $started).TotalSeconds, 1)
    log = $logPath
    verifyLog = if ($outputExists -and -not $skipVerifyLocal) { $verifyLogPath } else { $null }
    output = [string]$item.output
  }
} -ThrottleLimit $ThrottleLimit

foreach ($result in $results) {
  $result | ConvertTo-Json -Depth 8 -Compress | Add-Content -LiteralPath $summaryPath -Encoding UTF8
}

$failures = @($results | Where-Object {
  $_.exitCode -ne 0 -or
  -not $_.outputExists -or
  ($null -ne $_.verifyExitCode -and $_.verifyExitCode -ne 0)
})

Write-Host ''
Write-Host "Summary: $summaryPath"
$results | Select-Object question, model, exitCode, outputExists, verifyExitCode, runtimeSeconds | Format-Table -AutoSize

if ($failures.Count -gt 0) {
  Write-Warning "$($failures.Count) task(s) need review. See $summaryPath."
  exit 1
}

Write-Host 'Batch complete.'
