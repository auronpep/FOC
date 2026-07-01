[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$RosterPath = 'C:\FOC\Workspace\OCQAgent\agent_roster.xlsx',
  [string]$AgentsRoot = 'C:\FOC\Workspace\agents\bible',
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
)

$ErrorActionPreference = 'Stop'
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'

& $PythonPath $scriptPath openclaw-commands --roster $RosterPath --agents-root $AgentsRoot
if ($LASTEXITCODE -ne 0) {
  throw "OCQ OpenClaw command generation failed with exit code $LASTEXITCODE"
}
