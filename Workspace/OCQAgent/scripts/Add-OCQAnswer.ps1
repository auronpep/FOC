[CmdletBinding(PositionalBinding = $false)]
param(
  [Parameter(Mandatory)][string]$AgentId,
  [Parameter(Mandatory)][string]$Bid,
  [Parameter(Mandatory)][ValidateSet('A','B','C','D')][string]$AnswerChoice,
  [Parameter(Mandatory)][ValidateSet('easy','medium','hard','Easy','Medium','Hard','EASY','MEDIUM','HARD')][string]$ConfidenceLabel,
  [string]$AgentsRoot = (Join-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) 'agents\bible'),
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
)

$ErrorActionPreference = 'Stop'

. (Join-Path $PSScriptRoot 'Resolve-OCQPython.ps1')
if (-not $PythonPath) { $PythonPath = Resolve-OCQPython }
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'
$workspace = Join-Path $AgentsRoot $AgentId

& $PythonPath $scriptPath append-answer `
  --workspace $workspace `
  --agent-id $AgentId `
  --bid $Bid `
  --answer-choice $AnswerChoice `
  --confidence-label $ConfidenceLabel

if ($LASTEXITCODE -ne 0) {
  throw "OCQ answer append failed with exit code $LASTEXITCODE"
}
