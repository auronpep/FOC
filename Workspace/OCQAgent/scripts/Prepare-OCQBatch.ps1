[CmdletBinding(PositionalBinding = $false)]
param(
  [Parameter(Mandatory)][string]$AgentId,
  [Parameter(Mandatory)][int]$Count,
  [string]$AgentsRoot = (Join-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) 'agents\bible'),
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
)

$ErrorActionPreference = 'Stop'

. (Join-Path $PSScriptRoot 'Resolve-OCQPython.ps1')
if (-not $PythonPath) { $PythonPath = Resolve-OCQPython }
if ($Count -lt 1) {
  throw '-Count must be at least 1.'
}

$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'
$workspace = Join-Path $AgentsRoot $AgentId

& $PythonPath $scriptPath prepare-batch --workspace $workspace --count $Count
if ($LASTEXITCODE -ne 0) {
  throw "OCQ batch preparation failed with exit code $LASTEXITCODE"
}
