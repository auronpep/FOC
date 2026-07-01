[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$AgentsRoot = 'C:\FOC\Workspace\agents\bible',
  [string]$OutputDir = 'C:\FOC\Workspace\OCQAgent\summary',
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
)

$ErrorActionPreference = 'Stop'
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'

& $PythonPath $scriptPath summarize --agents-root $AgentsRoot --output-dir $OutputDir
if ($LASTEXITCODE -ne 0) {
  throw "OCQ answer summary failed with exit code $LASTEXITCODE"
}
