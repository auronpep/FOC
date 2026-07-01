[CmdletBinding(PositionalBinding = $false)]
param(
  [Parameter(Mandatory)][string]$AgentId,
  [Parameter(Mandatory)][int]$Count,
  [string]$AgentsRoot = 'C:\FOC\Workspace\agents\bible',
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
)

$ErrorActionPreference = 'Stop'
if ($Count -lt 1) {
  throw '-Count must be at least 1.'
}

$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'
$workspace = Join-Path $AgentsRoot $AgentId

& $PythonPath $scriptPath prepare-batch --workspace $workspace --count $Count
if ($LASTEXITCODE -ne 0) {
  throw "OCQ batch preparation failed with exit code $LASTEXITCODE"
}
