[CmdletBinding(PositionalBinding = $false)]
param(
  [string[]]$AgentIds = @(
    'adam','noah','abraham','isaac','jacob','joseph','moses','aaron','joshua','samuel',
    'david','solomon','mary','martha','ruth','esther','sarah','rebecca','rachel','leah'
  ),
  [int]$RowsPerAgent = 25,
  [int]$ThrottleLimit = 40,
  [string]$ScratchRoot = (Join-Path $env:TEMP ("ocq-answer-concurrency-" + (Get-Date -Format "yyyyMMdd-HHmmss-fff"))),
  [string]$PythonPath = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe',
  [switch]$KeepScratch
)

$ErrorActionPreference = 'Stop'

if ($RowsPerAgent -lt 1) {
  throw '-RowsPerAgent must be at least 1.'
}
if ($ThrottleLimit -lt 1) {
  throw '-ThrottleLimit must be at least 1.'
}
if (-not (Get-Command pwsh -ErrorAction SilentlyContinue)) {
  throw 'pwsh is required for this concurrency test.'
}

$addScript = Join-Path $PSScriptRoot 'Add-OCQAnswer.ps1'
if (-not (Test-Path -LiteralPath $addScript -PathType Leaf)) {
  throw "Add-OCQAnswer.ps1 not found: $addScript"
}
if (-not (Test-Path -LiteralPath $PythonPath -PathType Leaf)) {
  throw "Python runtime not found: $PythonPath"
}

New-Item -ItemType Directory -Path $ScratchRoot -Force | Out-Null
foreach ($agentId in $AgentIds) {
  New-Item -ItemType Directory -Path (Join-Path $ScratchRoot $agentId) -Force | Out-Null
}

try {
$jobs = foreach ($agentId in $AgentIds) {
  for ($i = 1; $i -le $RowsPerAgent; $i++) {
    [pscustomobject]@{
      AgentId = $agentId
      Bid = [string](900000 + ([array]::IndexOf($AgentIds, $agentId) * $RowsPerAgent) + $i)
      AnswerChoice = @('A','B','C','D')[($i - 1) % 4]
      ConfidenceLabel = @('easy','medium','hard')[($i - 1) % 3]
    }
  }
}

$errors = @(
  $jobs | ForEach-Object -Parallel {
    & pwsh -NoProfile -File $using:addScript `
      -AgentId $_.AgentId `
      -Bid $_.Bid `
      -AnswerChoice $_.AnswerChoice `
      -ConfidenceLabel $_.ConfidenceLabel `
      -AgentsRoot $using:ScratchRoot `
      -PythonPath $using:PythonPath

    if ($LASTEXITCODE -ne 0) {
      throw "append failed for $($_.AgentId) BID $($_.Bid) with exit code $LASTEXITCODE"
    }
  } -ThrottleLimit $ThrottleLimit 2>&1
)

$rows = @()
$badFiles = @()
foreach ($agentId in $AgentIds) {
  $answersPath = Join-Path (Join-Path $ScratchRoot $agentId) 'answers.csv'
  if (-not (Test-Path -LiteralPath $answersPath -PathType Leaf)) {
    $badFiles += "$agentId missing answers.csv"
    continue
  }
  $imported = @(Import-Csv -LiteralPath $answersPath)
  if ($imported.Count -ne $RowsPerAgent) {
    $badFiles += "$agentId expected $RowsPerAgent rows, found $($imported.Count)"
  }
  foreach ($row in $imported) {
    $rows += $row
    if (
      $row.agent_id -ne $agentId -or
      $row.answer_choice -notin @('A','B','C','D') -or
      $row.confidence_label -notin @('easy','medium','hard') -or
      [string]::IsNullOrWhiteSpace($row.bid) -or
      [string]::IsNullOrWhiteSpace($row.timestamp)
    ) {
      $badFiles += "$agentId has malformed row for BID $($row.bid)"
    }
  }
}

$duplicates = @(
  $rows |
    Group-Object agent_id,bid |
    Where-Object Count -gt 1 |
    ForEach-Object Name
)

$expectedTotal = $AgentIds.Count * $RowsPerAgent
$ok = ($errors.Count -eq 0 -and $badFiles.Count -eq 0 -and $duplicates.Count -eq 0 -and $rows.Count -eq $expectedTotal)

$result = [ordered]@{
  ok = $ok
  scratchRoot = $ScratchRoot
  agentCount = $AgentIds.Count
  rowsPerAgent = $RowsPerAgent
  expectedRows = $expectedTotal
  actualRows = $rows.Count
  throttleLimit = $ThrottleLimit
  processErrors = @($errors | ForEach-Object { [string]$_ })
  fileErrors = $badFiles
  duplicates = $duplicates
}

if (-not $KeepScratch) {
  Remove-Item -LiteralPath $ScratchRoot -Recurse -Force
  $result.scratchRemoved = $true
} else {
  $result.scratchRemoved = $false
}

$result | ConvertTo-Json -Depth 5

if (-not $ok) {
  exit 1
}
} catch {
  if (-not $KeepScratch -and (Test-Path -LiteralPath $ScratchRoot)) {
    Remove-Item -LiteralPath $ScratchRoot -Recurse -Force
  }
  throw
}
