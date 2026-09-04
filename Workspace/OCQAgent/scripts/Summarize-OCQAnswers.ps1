[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$AgentsRoot = 'C:\FOC\Workspace\agents\bible',
  [string]$OutputDir = 'C:\FOC\Workspace\OCQAgent\summary',
  [string]$PythonPath
)

$ErrorActionPreference = 'Stop'

. (Join-Path $PSScriptRoot 'Resolve-OCQPython.ps1')
if (-not $PythonPath) { $PythonPath = Resolve-OCQPython }
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'

& $PythonPath $scriptPath summarize --agents-root $AgentsRoot --output-dir $OutputDir
if ($LASTEXITCODE -ne 0) {
  throw "OCQ answer summary failed with exit code $LASTEXITCODE"
}
