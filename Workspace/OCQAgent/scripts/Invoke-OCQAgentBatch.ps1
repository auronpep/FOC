[CmdletBinding(PositionalBinding = $false)]
param(
  [Parameter(Mandatory)][string]$AgentId,
  [Parameter(Mandatory)][int]$Count,
  [string]$AgentsRoot = (Join-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) 'agents\bible'),
  [string]$OpenClawPath = (Join-Path (Split-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) -Parent) 'bin\openclaw.ps1'),
  [string]$SessionKey,
  [int]$TimeoutSeconds = 1800,
  [switch]$Launch
)

$ErrorActionPreference = 'Stop'

if ($Count -lt 1) {
  throw '-Count must be at least 1.'
}

$workspace = Join-Path $AgentsRoot $AgentId
if (-not (Test-Path -LiteralPath $workspace -PathType Container)) {
  throw "Agent workspace not found: $workspace"
}

$prepareScript = Join-Path $PSScriptRoot 'Prepare-OCQBatch.ps1'
& pwsh -NoProfile -File $prepareScript -AgentId $AgentId -Count $Count -AgentsRoot $AgentsRoot
if ($LASTEXITCODE -ne 0) {
  throw "Batch preparation failed with exit code $LASTEXITCODE"
}

$batchPath = Join-Path $workspace 'current_batch.txt'
$ids = @(Get-Content -LiteralPath $batchPath | Where-Object { -not [string]::IsNullOrWhiteSpace($_) })
if ($ids.Count -eq 0) {
  Write-Host "No unanswered queued questions for agent '$AgentId'."
  exit 0
}

$workspaceRoot = Split-Path (Split-Path $PSScriptRoot -Parent) -Parent
$ocqRoot = Join-Path $workspaceRoot 'OCQ'
$addAnswerScript = Join-Path $PSScriptRoot 'Add-OCQAnswer.ps1'

$message = @"
Run your OCQ blind-answer workflow as agent '$AgentId' for exactly the question IDs in current_batch.txt.

Hard stop rules:
- Process at most $($ids.Count) question(s).
- Do not continue into queue.txt after current_batch.txt is done.
- For each question, read $ocqRoot\<BID>.md.
- Pick exactly one answer choice. Do not rank choices and do not record a second choice.
- Use one ConfidenceLabel value: easy, medium, or hard.
- Append each result to your local answers.csv using:
  pwsh -NoProfile -File $addAnswerScript -AgentId $AgentId -Bid <BID> -AnswerChoice <A|B|C|D> -ConfidenceLabel <easy|medium|hard>
- Stop when current_batch.txt is complete.
"@

Write-Host "Prepared $($ids.Count) question(s) for ${AgentId}: $($ids -join ', ')"

if (-not $Launch) {
  Write-Host ''
  Write-Host 'Dry run only. Add -Launch to run OpenClaw.'
  Write-Host ''
  Write-Host 'Message preview:'
  Write-Host $message
  exit 0
}

if (-not (Test-Path -LiteralPath $OpenClawPath -PathType Leaf)) {
  throw "OpenClaw wrapper not found: $OpenClawPath"
}

if ([string]::IsNullOrWhiteSpace($SessionKey)) {
  $SessionKey = "ocq-$AgentId"
}

& $OpenClawPath agent --agent $AgentId --session-key $SessionKey --timeout $TimeoutSeconds --message $message --json
if ($LASTEXITCODE -ne 0) {
  throw "OpenClaw agent run failed with exit code $LASTEXITCODE"
}
