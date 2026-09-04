param(
  [Parameter(Mandatory = $true)]
  [ValidateSet('1','2','3','4','All')]
  [string]$Group,

  [switch]$Launch,

  [int]$ThrottleLimit = 10,

  [switch]$SkipKnownBad,

  [string]$RunLabel = ("c3-fourgroup-" + (Get-Date -Format 'yyyyMMdd-HHmmss'))
)

$ErrorActionPreference = 'Stop'

$runRoot = Join-Path (Join-Path $PSScriptRoot 'OpenClawBatchResults') $RunLabel
$finishedRoot = Join-Path $PSScriptRoot 'Finished'

$thinkingByModel = @{
  'openai/gpt-5.5' = 'xhigh'
  'openai/gpt-5.4' = 'xhigh'
  'openai/gpt-5.4-mini' = 'xhigh'

  'anthropic/claude-opus-4-8' = 'high'
  'anthropic/claude-opus-4-7' = 'high'
  'anthropic/claude-opus-4-6' = 'high'
  'anthropic/claude-sonnet-4-6' = 'high'

  'google/gemini-3-flash-preview' = 'high'
  'google/gemini-2.5-pro' = 'high'
  'google/gemini-3.1-flash-lite' = 'high'

  'github-copilot/gpt-5-mini' = 'high'
  'minimax/MiniMax-M3' = 'adaptive'
  'minimax/MiniMax-M2.7' = 'adaptive'
  'openrouter/owl-alpha' = 'high'
  'openrouter/openai/gpt-oss-120b:free' = 'high'
  'openrouter/poolside/laguna-m.1:free' = 'high'
  'openrouter/nex-agi/nex-n2-pro:free' = 'high'
  'openrouter/google/gemma-4-26b-a4b-it' = 'high'
  'xai/grok-build-0.1' = 'high'
  'xai/grok-4.3' = 'high'
  'xai/grok-4.20-beta-latest-reasoning' = 'high'
}

$knownBadModels = @{
  # Current xAI account is returning 403 credits/subscription failures.
  'xai/grok-build-0.1' = 'xAI account currently returns 403 credits/subscription failure'
  'xai/grok-4.3' = 'xAI account currently returns 403 credits/subscription failure'
  'xai/grok-4.20-beta-latest-reasoning' = 'xAI account currently returns 403 credits/subscription failure'

  # Google provider is now registered, but current key/profile hit 429 quota and 503 overload in this run.
  'google/gemini-2.5-pro' = 'Google key/profile hit 429 quota in this run'
  'google/gemini-3-flash-preview' = 'Google provider returned 503 overload in this run'
}

$assignments = @(
  [pscustomobject]@{ group = 1; model = 'github-copilot/gpt-5-mini'; question = 16108 },
  [pscustomobject]@{ group = 1; model = 'google/gemini-3-flash-preview'; question = 16111 },
  [pscustomobject]@{ group = 1; model = 'minimax/MiniMax-M3'; question = 16116 },
  [pscustomobject]@{ group = 1; model = 'nv-diffusiongemma-26b/google/diffusiongemma-26b-a4b-it'; question = 16124 },
  [pscustomobject]@{ group = 1; model = 'nv-dracarys-70b/abacusai/dracarys-llama-3.1-70b-instruct'; question = 16136 },
  [pscustomobject]@{ group = 1; model = 'nv-gemma-4-31b/google/gemma-4-31b-it'; question = 16153 },
  [pscustomobject]@{ group = 1; model = 'nv-glm-5-1/z-ai/glm-5.1'; question = 16155 },
  [pscustomobject]@{ group = 1; model = 'nv-gpt-oss-120b/openai/gpt-oss-120b'; question = 16163 },
  [pscustomobject]@{ group = 1; model = 'openai/gpt-5.5'; question = 16166 },
  [pscustomobject]@{ group = 1; model = 'openrouter/owl-alpha'; question = 17097 },

  [pscustomobject]@{ group = 2; model = 'anthropic/claude-opus-4-8'; question = 17196 },
  [pscustomobject]@{ group = 2; model = 'google/gemini-2.5-pro'; question = 17328 },
  [pscustomobject]@{ group = 2; model = 'nv-kimi-2-6/moonshotai/kimi-k2.6'; question = 17405 },
  [pscustomobject]@{ group = 2; model = 'nv-llama-3-3-70b/meta/llama-3.3-70b-instruct'; question = 17564 },
  [pscustomobject]@{ group = 2; model = 'nv-llama-4-maverick/meta/llama-4-maverick-17b-128e-instruct'; question = 17746 },
  [pscustomobject]@{ group = 2; model = 'nv-mistral-medium-3-5/mistralai/mistral-medium-3.5-128b'; question = 17786 },
  [pscustomobject]@{ group = 2; model = 'openai/gpt-5.4-mini'; question = 17870 },
  [pscustomobject]@{ group = 2; model = 'openrouter/openai/gpt-oss-120b:free'; question = 17880 },
  [pscustomobject]@{ group = 2; model = 'openrouter/poolside/laguna-m.1:free'; question = 17950 },
  [pscustomobject]@{ group = 2; model = 'xai/grok-build-0.1'; question = 18296 },

  [pscustomobject]@{ group = 3; model = 'anthropic/claude-opus-4-7'; question = 18447 },
  [pscustomobject]@{ group = 3; model = 'minimax/MiniMax-M2.7'; question = 18554 },
  [pscustomobject]@{ group = 3; model = 'nemotron-3-ultra-550b/nvidia/nemotron-3-ultra-550b-a55b'; question = 18681 },
  [pscustomobject]@{ group = 3; model = 'nv-mixtral-8x7b/mistralai/mixtral-8x7b-instruct-v0.1'; question = 18759 },
  [pscustomobject]@{ group = 3; model = 'nv-nemotron-omni-30b/nvidia/nemotron-3-nano-omni-30b-a3b-reasoning'; question = 18778 },
  [pscustomobject]@{ group = 3; model = 'nv-nemotron-super-49b/nvidia/llama-3.3-nemotron-super-49b-v1'; question = 18909 },
  [pscustomobject]@{ group = 3; model = 'nv-qwen3-5-397b/qwen/qwen3.5-397b-a17b'; question = 18932 },
  [pscustomobject]@{ group = 3; model = 'openai/gpt-5.4'; question = 19008 },
  [pscustomobject]@{ group = 3; model = 'openrouter/nex-agi/nex-n2-pro:free'; question = 19133 },
  [pscustomobject]@{ group = 3; model = 'xai/grok-4.3'; question = 19232 },

  [pscustomobject]@{ group = 4; model = 'anthropic/claude-sonnet-4-6'; question = 19508 },
  [pscustomobject]@{ group = 4; model = 'google/gemini-3.1-flash-lite'; question = 19762 },
  [pscustomobject]@{ group = 4; model = 'nv-qwen3-next-80b/qwen/qwen3-next-80b-a3b-instruct'; question = 19956 },
  [pscustomobject]@{ group = 4; model = 'nv-seed-oss-36b/bytedance/seed-oss-36b-instruct'; question = 19972 },
  [pscustomobject]@{ group = 4; model = 'nv-solar-10-7b/upstage/solar-10.7b-instruct'; question = 19992 },
  [pscustomobject]@{ group = 4; model = 'nv-step-3-5-flash/stepfun-ai/step-3.5-flash'; question = 20555 },
  [pscustomobject]@{ group = 4; model = 'nv-step-3-7-flash/stepfun-ai/step-3.7-flash'; question = 20903 },
  [pscustomobject]@{ group = 4; model = 'openrouter/google/gemma-4-26b-a4b-it'; question = 20931 },
  [pscustomobject]@{ group = 4; model = 'xai/grok-4.20-beta-latest-reasoning'; question = 21022 },
  [pscustomobject]@{ group = 4; model = 'anthropic/claude-opus-4-6'; question = 16100 }
)

if ($Group -eq 'All') {
  $selected = @($assignments)
} else {
  $groupNumber = [int]$Group
  $selected = @($assignments | Where-Object { $_.group -eq $groupNumber })
}

if ($selected.Count -eq 0) {
  throw "No assignments selected for group $Group"
}

if ($SkipKnownBad) {
  $beforeSkip = $selected.Count
  $selected = @($selected | Where-Object { -not $knownBadModels.ContainsKey($_.model) })
  $skipped = $beforeSkip - $selected.Count
  if ($skipped -gt 0) {
    Write-Output "Skipped $skipped known-bad assignment(s)."
  }
}

if ($selected.Count -eq 0) {
  throw "All assignments selected for group $Group were skipped."
}

New-Item -ItemType Directory -Force -Path $runRoot | Out-Null
New-Item -ItemType Directory -Force -Path $finishedRoot | Out-Null

$dryRunRows = foreach ($item in $selected) {
  $thinking = $thinkingByModel[$item.model]
  if (-not $thinking) { $thinking = 'off' }
  $slug = ($item.model -replace '[^A-Za-z0-9]+','-').Trim('-').ToLowerInvariant()
  if ($slug.Length -gt 72) { $slug = $slug.Substring(0,72) }
  [pscustomobject]@{
    group = $item.group
    question = $item.question
    model = $item.model
    thinking = $thinking
    sessionKey = "c3g$($item.group)-$RunLabel-q$($item.question)-$slug"
    output = (Join-Path $finishedRoot ("CQ{0}.md" -f $item.question))
  }
}

if (-not $Launch) {
  Write-Output "DRY RUN ONLY. Nothing launched."
  Write-Output "Run root: $runRoot"
  Write-Output "Selected tasks: $($dryRunRows.Count)"
  $dryRunRows | Format-Table -AutoSize | Out-String -Width 4096
  Write-Output "Launch with: pwsh -NoProfile -File `"$PSCommandPath`" -Group $Group -Launch -RunLabel `"$RunLabel`""
  return
}

$summaryPath = Join-Path $runRoot 'batch-summary.jsonl'
$startsPath = Join-Path $runRoot 'starts.jsonl'
$manifestPath = Join-Path $runRoot 'manifest.json'
$dryRunRows | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $manifestPath -Encoding UTF8

Write-Output "Launching $($selected.Count) task(s)."
Write-Output "Run root: $runRoot"
Write-Output "ThrottleLimit: $ThrottleLimit"
Write-Output "Summary: $summaryPath"
Write-Output "Starts: $startsPath"
Write-Output "Live task state: openclaw --no-color tasks list --status running --json"
Write-Output "Live gateway log: Get-Content -Wait -Tail 80 `"$env:TEMP\openclaw\openclaw-$(Get-Date -Format 'yyyy-MM-dd').log`""
$dryRunRows | Format-Table -AutoSize | Out-String -Width 4096

$results = $selected | ForEach-Object -Parallel {
  $item = $_
  $runLabelLocal = $using:RunLabel
  $runRootLocal = $using:runRoot
  $finishedRootLocal = $using:finishedRoot
  $thinkingMap = $using:thinkingByModel
  $summaryPathLocal = $using:summaryPath
  $startsPathLocal = $using:startsPath

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

    $mutex = [System.Threading.Mutex]::new($false, "Global\OpenClawC3FourGroupJsonl-$hash")
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

  $thinking = $thinkingMap[$item.model]
  if (-not $thinking) { $thinking = 'off' }

  $slug = ($item.model -replace '[^A-Za-z0-9]+','-').Trim('-').ToLowerInvariant()
  if ($slug.Length -gt 72) { $slug = $slug.Substring(0,72) }

  $sessionKey = "c3g$($item.group)-$runLabelLocal-q$($item.question)-$slug"
  $outFile = Join-Path $runRootLocal "$sessionKey.log"
  $targetFile = Join-Path $finishedRootLocal ("CQ{0}.md" -f $item.question)

  $prompt = @"
Please do this BarMatrix Criminal Law and Procedure Question $($item.question).

Complete any research needed using the configured web search provider. Work directly in this session; do not spawn subagents and do not emit tool-call JSON as text.

Do not ask permission to save. Do not merely say what you would do. Do not stop after planning. Execute the file write.

You must save the entire final response to exactly:
$targetFile

The saved markdown must be a complete C3/CQ output, not a short answer. It must include the transformed question, answer choices, credited answer, wrong-answer analysis, legal verification, research notes if used, C3/trap analysis, and any required program/intelligence blocks.

Before finishing, verify the file exists, read it back, and confirm the saved file contains the complete response. If the file does not exist, create it before responding. Your final chat response should only say: saved $targetFile
"@

  $argsList = @(
    'agent',
    '--agent', 'main',
    '--session-key', $sessionKey,
    '--model', $item.model,
    '--thinking', $thinking,
    '--verbose', 'on',
    '--timeout', '28800',
    '--json',
    '--message', $prompt
  )

  $started = Get-Date
  $startRecord = [pscustomobject]@{
    event = 'start'
    group = $item.group
    question = $item.question
    model = $item.model
    thinking = $thinking
    sessionKey = $sessionKey
    started = $started
    log = $outFile
    output = $targetFile
  }
  Add-JsonLineSafeLocal -Path $startsPathLocal -Record $startRecord
  Set-Content -LiteralPath $outFile -Value ("START {0:o} group={1} q={2} model={3} thinking={4}" -f $started, $item.group, $item.question, $item.model, $thinking) -Encoding UTF8
  Write-Output ("START group={0} q={1} model={2}" -f $item.group, $item.question, $item.model)
  $raw = & openclaw @argsList 2>&1
  $exit = $LASTEXITCODE
  Add-Content -LiteralPath $outFile -Value $raw -Encoding UTF8
  $ended = Get-Date

  $result = [pscustomobject]@{
    group = $item.group
    question = $item.question
    model = $item.model
    thinking = $thinking
    sessionKey = $sessionKey
    exitCode = $exit
    started = $started
    ended = $ended
    runtimeSeconds = [math]::Round(($ended - $started).TotalSeconds, 1)
    log = $outFile
    output = $targetFile
    outputExists = Test-Path -LiteralPath $targetFile
  }
  Add-JsonLineSafeLocal -Path $summaryPathLocal -Record $result
  $result
} -ThrottleLimit $ThrottleLimit

$results | ForEach-Object { $_ | ConvertTo-Json -Compress -Depth 8 }

Write-Output "Done. Summary: $summaryPath"
