[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$Path = 'C:\FOC\Workspace\OCQAgent\agent_roster.xlsx',
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
)

$ErrorActionPreference = 'Stop'
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'

& $PythonPath $scriptPath create-roster-template --path $Path
if ($LASTEXITCODE -ne 0) {
  throw "OCQ roster template creation failed with exit code $LASTEXITCODE"
}
