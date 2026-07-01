[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$WorkbookPath = 'C:\FOC\Workspace\OCQ.xlsx',
  [string]$OutputDir = 'C:\FOC\Workspace\OCQ',
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
)

$ErrorActionPreference = 'Stop'
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'

& $PythonPath $scriptPath export-questions --workbook $WorkbookPath --output-dir $OutputDir
if ($LASTEXITCODE -ne 0) {
  throw "OCQ question export failed with exit code $LASTEXITCODE"
}
