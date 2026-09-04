[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$WorkbookPath = 'C:\FOC\Workspace\OCQ.xlsx',
  [string]$OutputDir = 'C:\FOC\Workspace\OCQ',
  [string]$PythonPath
)

$ErrorActionPreference = 'Stop'

. (Join-Path $PSScriptRoot 'Resolve-OCQPython.ps1')
if (-not $PythonPath) { $PythonPath = Resolve-OCQPython }
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'

& $PythonPath $scriptPath export-questions --workbook $WorkbookPath --output-dir $OutputDir
if ($LASTEXITCODE -ne 0) {
  throw "OCQ question export failed with exit code $LASTEXITCODE"
}
