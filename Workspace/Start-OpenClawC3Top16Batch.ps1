param(
  [switch]$Launch,
  [int]$ThrottleLimit = 8,
  [int]$TimeoutSeconds = 28800,
  [string]$ResultsRoot = 'C:\FOC\Workspace\OpenClawBatchResults'
)

$ErrorActionPreference = 'Stop'

if ($PSVersionTable.PSVersion.Major -lt 7) {
  throw "Run this with PowerShell 7+: pwsh -NoProfile -File $PSCommandPath -Launch"
}

$openclaw = (Get-Command openclaw -ErrorAction Stop).Source
$timestamp = Get-Date -Format 'yyyyMMdd-HHmmss'
$runRoot = Join-Path $ResultsRoot "c3-top16-$timestamp"
New-Item -ItemType Directory -Force -Path $runRoot | Out-Null

$assignments = @(
  [pscustomobject]@{ chance = 1; model = 'nv-qwen3-next-80b/qwen/qwen3-next-80b-a3b-instruct'; question = 14667 },
  [pscustomobject]@{ chance = 1; model = 'minimax/MiniMax-M2.7'; question = 14675 },
  [pscustomobject]@{ chance = 1; model = 'nemotron-3-ultra-550b/nvidia/nemotron-3-ultra-550b-a55b'; question = 14587 },
  [pscustomobject]@{ chance = 1; model = 'openai/gpt-5.5'; question = 14580 },
  [pscustomobject]@{ chance = 1; model = 'xai/grok-4.20-beta-latest-reasoning'; question = 14557 },
  [pscustomobject]@{ chance = 1; model = 'nv-mistral-small-4/mistralai/mistral-small-4-119b-2603'; question = 14618 },
  [pscustomobject]@{ chance = 1; model = 'nv-kimi-2-6/moonshotai/kimi-k2.6'; question = 14600 },
  [pscustomobject]@{ chance = 1; model = 'nv-llama-4-maverick/meta/llama-4-maverick-17b-128e-instruct'; question = 14678 },
  [pscustomobject]@{ chance = 1; model = 'github-copilot/gpt-5-mini'; question = 14595 },
  [pscustomobject]@{ chance = 1; model = 'openrouter/owl-alpha'; question = 14668 },
  [pscustomobject]@{ chance = 1; model = 'google/gemini-3-flash-preview'; question = 14677 },
  [pscustomobject]@{ chance = 1; model = 'nv-mistral-medium-3-5/mistralai/mistral-medium-3.5-128b'; question = 14659 },
  [pscustomobject]@{ chance = 1; model = 'nv-qwen3-5-397b/qwen/qwen3.5-397b-a17b'; question = 14661 },
  [pscustomobject]@{ chance = 1; model = 'openai/gpt-5.4-mini'; question = 14687 },
  [pscustomobject]@{ chance = 1; model = 'nv-minimax-m3/minimaxai/minimax-m3'; question = 14573 },
  [pscustomobject]@{ chance = 1; model = 'nv-glm-5-1/z-ai/glm-5.1'; question = 14660 },
  [pscustomobject]@{ chance = 2; model = 'nemotron-3-ultra-550b/nvidia/nemotron-3-ultra-550b-a55b'; question = 14578 },
  [pscustomobject]@{ chance = 2; model = 'nv-glm-5-1/z-ai/glm-5.1'; question = 14662 },
  [pscustomobject]@{ chance = 2; model = 'nv-minimax-m3/minimaxai/minimax-m3'; question = 14592 },
  [pscustomobject]@{ chance = 2; model = 'openai/gpt-5.5'; question = 14681 },
  [pscustomobject]@{ chance = 2; model = 'openai/gpt-5.4-mini'; question = 14585 },
  [pscustomobject]@{ chance = 2; model = 'github-copilot/gpt-5-mini'; question = 14685 },
  [pscustomobject]@{ chance = 2; model = 'minimax/MiniMax-M2.7'; question = 14594 },
  [pscustomobject]@{ chance = 2; model = 'nv-mistral-small-4/mistralai/mistral-small-4-119b-2603'; question = 14679 },
  [pscustomobject]@{ chance = 2; model = 'nv-mistral-medium-3-5/mistralai/mistral-medium-3.5-128b'; question = 14595 },
  [pscustomobject]@{ chance = 2; model = 'nv-kimi-2-6/moonshotai/kimi-k2.6'; question = 14578 },
  [pscustomobject]@{ chance = 2; model = 'nv-llama-4-maverick/meta/llama-4-maverick-17b-128e-instruct'; question = 14677 },
  [pscustomobject]@{ chance = 2; model = 'nv-qwen3-next-80b/qwen/qwen3-next-80b-a3b-instruct'; question = 14662 },
  [pscustomobject]@{ chance = 2; model = 'openrouter/owl-alpha'; question = 14594 },
  [pscustomobject]@{ chance = 2; model = 'nv-qwen3-5-397b/qwen/qwen3.5-397b-a17b'; question = 14600 },
  [pscustomobject]@{ chance = 2; model = 'google/gemini-3-flash-preview'; question = 14685 },
  [pscustomobject]@{ chance = 2; model = 'xai/grok-4.20-beta-latest-reasoning'; question = 14557 }
)

$thinkingByModel = @{
  'openai/gpt-5.5' = 'xhigh'
  'openai/gpt-5.4-mini' = 'xhigh'
  'xai/grok-4.20-beta-latest-reasoning' = 'high'
  'google/gemini-3-flash-preview' = 'high'
  'openrouter/owl-alpha' = 'high'
  'github-copilot/gpt-5-mini' = 'high'
  'minimax/MiniMax-M2.7' = 'high'
  'nemotron-3-ultra-550b/nvidia/nemotron-3-ultra-550b-a55b' = 'off'
  'nv-kimi-2-6/moonshotai/kimi-k2.6' = 'off'
  'nv-glm-5-1/z-ai/glm-5.1' = 'off'
  'nv-qwen3-5-397b/qwen/qwen3.5-397b-a17b' = 'off'
  'nv-mistral-small-4/mistralai/mistral-small-4-119b-2603' = 'off'
  'nv-mistral-medium-3-5/mistralai/mistral-medium-3.5-128b' = 'off'
  'nv-minimax-m3/minimaxai/minimax-m3' = 'off'
  'nv-qwen3-next-80b/qwen/qwen3-next-80b-a3b-instruct' = 'off'
  'nv-llama-4-maverick/meta/llama-4-maverick-17b-128e-instruct' = 'off'
}

function New-Slug {
  param([Parameter(Mandatory)][string]$Text)
  $slug = ($Text -replace '[^A-Za-z0-9]+', '-').Trim('-').ToLowerInvariant()
  if ($slug.Length -gt 80) {
    return $slug.Substring(0, 80)
  }
  return $slug
}

function Receive-OpenClawBatchJobs {
  param(
    [Parameter(Mandatory)][string]$JobPrefix,
    [Parameter(Mandatory)][string]$SummaryPath
  )

  $finished = @(Get-Job | Where-Object {
    $_.Name -like "$JobPrefix*" -and $_.State -in @('Completed', 'Failed', 'Stopped')
  })

  foreach ($job in $finished) {
    try {
      $received = @(Receive-Job -Job $job -ErrorAction Continue)
      foreach ($item in $received) {
        if ($null -ne $item) {
          $item | ConvertTo-Json -Depth 12 -Compress | Add-Content -LiteralPath $SummaryPath -Encoding UTF8
          $item
        }
      }
    }
    finally {
      Remove-Job -Job $job -Force -ErrorAction SilentlyContinue
    }
  }
}

$health = & $openclaw --no-color health --json | ConvertFrom-Json
if (-not $health.ok) {
  throw 'OpenClaw health check failed.'
}

$status = & $openclaw --no-color status --json | ConvertFrom-Json
$maxConcurrent = & $openclaw --no-color config get agents.defaults.maxConcurrent --json | ConvertFrom-Json
if ([int]$maxConcurrent -lt $ThrottleLimit) {
  throw "agents.defaults.maxConcurrent is $maxConcurrent, below the requested -ThrottleLimit $ThrottleLimit."
}

$models = & $openclaw --no-color models list --json | ConvertFrom-Json
$configured = @($models.models | Where-Object { $_.tags -contains 'configured' })
$configuredKeys = @($configured.key)
$availableKeys = @($configured | Where-Object { $_.available -eq $true } | Select-Object -ExpandProperty key)
$targetModels = @($assignments | Select-Object -ExpandProperty model -Unique)
$missing = @($targetModels | Where-Object { $configuredKeys -notcontains $_ })
$unavailable = @($targetModels | Where-Object { $availableKeys -notcontains $_ })

if ($missing.Count -gt 0) {
  throw "Missing configured models: $($missing -join ', ')"
}
if ($unavailable.Count -gt 0) {
  throw "Unavailable configured models: $($unavailable -join ', ')"
}

$planned = @($assignments | ForEach-Object {
  $thinking = $thinkingByModel[$_.model]
  if (-not $thinking) {
    $thinking = 'off'
  }
  $slug = New-Slug -Text $_.model
  $sessionKey = "c3top16fixed-r$($_.chance)-q$($_.question)-$slug"
  [pscustomobject]@{
    chance = $_.chance
    model = $_.model
    thinking = $thinking
    question = $_.question
    sessionKey = $sessionKey
    prompt = "Please do this BarMatrix Criminal Law and Procedure Question $($_.question). Complete any research needed, use the highest reasoning and verification effort available for this model, and save the entire response to an md file."
    outFile = (Join-Path $runRoot "$sessionKey.json")
  }
})

$planned | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath (Join-Path $runRoot 'planned-assignments.json') -Encoding UTF8
$planned | Export-Csv -LiteralPath (Join-Path $runRoot 'planned-assignments.csv') -NoTypeInformation

[pscustomobject]@{
  generatedAt = (Get-Date).ToString('o')
  launch = [bool]$Launch
  runRoot = $runRoot
  throttleLimit = $ThrottleLimit
  timeoutSeconds = $TimeoutSeconds
  maxConcurrent = $maxConcurrent
  gatewayReachable = [bool]$status.gateway.reachable
  healthOk = [bool]$health.ok
  activeTasks = [int]$status.tasks.active
  queuedTasks = [int]$status.tasks.byStatus.queued
  runningTasks = [int]$status.tasks.byStatus.running
  targetModelCount = $targetModels.Count
  assignmentCount = $planned.Count
} | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath (Join-Path $runRoot 'preflight.json') -Encoding UTF8

if (-not $Launch) {
  Write-Host "Dry run only. No OpenClaw tasks launched."
  Write-Host "Run root: $runRoot"
  $planned | Select-Object chance, question, thinking, model, sessionKey | Format-Table -AutoSize
  Write-Host ""
  Write-Host "To launch:"
  Write-Host "pwsh -NoProfile -File `"$PSCommandPath`" -Launch"
  exit 0
}

$summaryPath = Join-Path $runRoot 'batch-summary.jsonl'
$jobPrefix = "OpenClawC3Top16_$timestamp`_"
$startedJobs = 0

foreach ($item in $planned) {
  while (@(Get-Job | Where-Object { $_.Name -like "$jobPrefix*" -and $_.State -eq 'Running' }).Count -ge $ThrottleLimit) {
    Receive-OpenClawBatchJobs -JobPrefix $jobPrefix -SummaryPath $summaryPath | Out-Host
    Start-Sleep -Seconds 5
  }

  $jobName = "$jobPrefix$($item.chance)_$($item.question)_$startedJobs"
  Start-ThreadJob -Name $jobName -ArgumentList $item, $openclaw, $TimeoutSeconds -ScriptBlock {
    param($item, $openclawPath, $timeoutSeconds)

    $argsList = @(
      '--no-color',
      'agent',
      '--agent', 'main',
      '--session-key', $item.sessionKey,
      '--model', $item.model,
      '--thinking', $item.thinking,
      '--verbose', 'on',
      '--timeout', ([string]$timeoutSeconds),
      '--json',
      '--message', $item.prompt
    )

    $started = Get-Date
    $rawLines = & $openclawPath @argsList 2>&1
    $exitCode = $LASTEXITCODE
    $rawText = ($rawLines | Out-String)
    $rawText | Set-Content -LiteralPath $item.outFile -Encoding UTF8

    [pscustomobject]@{
      sessionKey = $item.sessionKey
      model = $item.model
      thinking = $item.thinking
      question = $item.question
      chance = $item.chance
      exitCode = $exitCode
      started = $started.ToString('o')
      ended = (Get-Date).ToString('o')
      log = $item.outFile
    }
  } | Out-Null

  $startedJobs++
}

while (@(Get-Job | Where-Object { $_.Name -like "$jobPrefix*" }).Count -gt 0) {
  Receive-OpenClawBatchJobs -JobPrefix $jobPrefix -SummaryPath $summaryPath | Out-Host
  Start-Sleep -Seconds 10
}

Write-Host "Batch complete. Results folder: $runRoot"
Write-Host "Summary: $summaryPath"
