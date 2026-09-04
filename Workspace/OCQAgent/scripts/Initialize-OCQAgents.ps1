[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$RosterPath = 'C:\FOC\Workspace\OCQAgent\agent_roster.xlsx',
  [string]$AgentsRoot = 'C:\FOC\Workspace\agents\bible',
  [string]$QuestionBankRoot = 'C:\FOC\Workspace\OCQ',
  [string]$WorkbookPath = 'C:\FOC\Workspace\OCQ.xlsx',
  [string]$QuestionIds,
  [string]$QuestionFile,
  [switch]$OverwriteInstructions,
  [string]$PythonPath
)

$ErrorActionPreference = 'Stop'

. (Join-Path $PSScriptRoot 'Resolve-OCQPython.ps1')
if (-not $PythonPath) { $PythonPath = Resolve-OCQPython }
$scriptPath = Join-Path $PSScriptRoot 'ocq_agent_tools.py'
$argsList = @(
  $scriptPath,
  'init-agents',
  '--roster', $RosterPath,
  '--agents-root', $AgentsRoot,
  '--question-bank-root', $QuestionBankRoot
)

if ($QuestionIds) {
  $argsList += @('--question-ids', $QuestionIds)
} elseif ($QuestionFile) {
  $argsList += @('--question-file', $QuestionFile)
} else {
  $argsList += @('--workbook', $WorkbookPath)
}

if ($OverwriteInstructions) {
  $argsList += '--overwrite-instructions'
}

& $PythonPath @argsList
if ($LASTEXITCODE -ne 0) {
  throw "OCQ agent initialization failed with exit code $LASTEXITCODE"
}
