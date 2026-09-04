[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$AgentsRoot = (Join-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) 'agents\bible'),
  [string]$OutputDir = (Join-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) 'OCQAgent\summary'),
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
)

$ErrorActionPreference = 'Stop'

. (Join-Path $PSScriptRoot 'Resolve-OCQPython.ps1')
if (-not $PythonPath) { $PythonPath = Resolve-OCQPython }
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'

& $PythonPath $scriptPath summarize --agents-root $AgentsRoot --output-dir $OutputDir
if ($LASTEXITCODE -ne 0) {
  throw "OCQ answer summary failed with exit code $LASTEXITCODE"
}
