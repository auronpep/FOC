[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$WorkbookPath = (Join-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) 'OCQ.xlsx'),
  [string]$OutputDir = (Join-Path (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent) 'OCQ'),
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
)

$ErrorActionPreference = 'Stop'

. (Join-Path $PSScriptRoot 'Resolve-OCQPython.ps1')
if (-not $PythonPath) { $PythonPath = Resolve-OCQPython }
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'

& $PythonPath $scriptPath export-questions --workbook $WorkbookPath --output-dir $OutputDir
if ($LASTEXITCODE -ne 0) {
  throw "OCQ question export failed with exit code $LASTEXITCODE"
}
