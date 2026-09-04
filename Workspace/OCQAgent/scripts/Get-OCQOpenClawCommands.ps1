[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$RosterPath = (Join-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) 'OCQAgent\agent_roster.xlsx'),
  [string]$AgentsRoot = (Join-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) 'agents\bible'),
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
)

$ErrorActionPreference = 'Stop'

. (Join-Path $PSScriptRoot 'Resolve-OCQPython.ps1')
if (-not $PythonPath) { $PythonPath = Resolve-OCQPython }
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'

& $PythonPath $scriptPath openclaw-commands --roster $RosterPath --agents-root $AgentsRoot
if ($LASTEXITCODE -ne 0) {
  throw "OCQ OpenClaw command generation failed with exit code $LASTEXITCODE"
}
