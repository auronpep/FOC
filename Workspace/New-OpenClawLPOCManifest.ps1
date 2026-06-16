[CmdletBinding(PositionalBinding = $false)]
param(
  [string]$CsvPath = (Join-Path $PSScriptRoot 'incoming\LPOC.csv'),
  [string]$ManifestPath = (Join-Path $PSScriptRoot 'incoming\LPOC.openclaw-manifest.json'),
  [string]$PreviewPath = (Join-Path $PSScriptRoot 'incoming\LPOC.commands.preview.ps1'),
  [string]$WorkspaceRoot = $PSScriptRoot,
  [string]$OpenClawPath = 'C:\FOC\bin\openclaw.ps1',
  [string]$Agent = 'main',
  [string]$Delimiter,
  [int]$TimeoutSeconds = 28800,
  [int]$PreviewLimit = 11
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function ConvertTo-PSQuotedString {
  param([AllowNull()][string]$Value)

  if ($null -eq $Value) {
    return "''"
  }

  return "'" + ($Value -replace "'", "''") + "'"
}

function Get-CsvDelimiter {
  param(
    [Parameter(Mandatory)][string]$Path,
    [AllowEmptyString()][string]$RequestedDelimiter
  )

  if (-not [string]::IsNullOrEmpty($RequestedDelimiter)) {
    if ($RequestedDelimiter -eq '\t') {
      return "`t"
    }

    return $RequestedDelimiter
  }

  $headerLine = Get-Content -LiteralPath $Path -TotalCount 1
  $tabCount = ([regex]::Matches($headerLine, "`t")).Count
  $commaCount = ([regex]::Matches($headerLine, ',')).Count

  if ($tabCount -gt $commaCount) {
    return "`t"
  }

  return ','
}

function Get-DelimiterName {
  param([Parameter(Mandatory)][string]$Value)

  if ($Value -eq "`t") {
    return 'tab'
  }

  if ($Value -eq ',') {
    return 'comma'
  }

  return $Value
}

function Get-ThinkingForModel {
  param([Parameter(Mandatory)][string]$Model)

  $thinkingByModel = @{
    'openai/gpt-5.5' = 'xhigh'
    'openai/gpt-5.4' = 'xhigh'
    'openai/gpt-5.4-mini' = 'xhigh'
    'anthropic/claude-opus-4-8' = 'medium'
    'anthropic/claude-opus-4-7' = 'medium'
    'anthropic/claude-opus-4-6' = 'medium'
    'anthropic/claude-sonnet-4-6' = 'high'
    'minimax/MiniMax-M3' = 'adaptive'
    'minimax/MiniMax-M2.7' = 'high'
  }

  if ($thinkingByModel.ContainsKey($Model)) {
    return $thinkingByModel[$Model]
  }

  if ($Model -like 'openrouter/*') {
    return 'high'
  }

  if ($Model -like 'xai/*') {
    return 'high'
  }

  return 'high'
}

function New-LPOCMessage {
  param(
    [Parameter(Mandatory)][int]$QuestionId,
    [Parameter(Mandatory)][string]$OutputPath
  )

  return "Please do this BarMatrix Multiple Choice Bar Exam Question $QuestionId. Complete any research needed, do not stop at planning, verify your work, and save the entire response to $OutputPath."
}

if (-not (Test-Path -LiteralPath $CsvPath -PathType Leaf)) {
  throw "CSV not found: $CsvPath"
}

if (-not (Test-Path -LiteralPath $WorkspaceRoot -PathType Container)) {
  throw "Workspace root not found: $WorkspaceRoot"
}

$resolvedCsvPath = (Resolve-Path -LiteralPath $CsvPath).Path
$resolvedWorkspaceRoot = (Resolve-Path -LiteralPath $WorkspaceRoot).Path
$qbankRoot = Join-Path $resolvedWorkspaceRoot 'QBank'
$finishedRoot = Join-Path $resolvedWorkspaceRoot 'Finished'

if (-not (Test-Path -LiteralPath $qbankRoot -PathType Container)) {
  throw "QBank folder not found: $qbankRoot"
}

if (-not (Test-Path -LiteralPath $finishedRoot -PathType Container)) {
  throw "Finished folder not found: $finishedRoot"
}

$csvDelimiter = Get-CsvDelimiter -Path $resolvedCsvPath -RequestedDelimiter $Delimiter
$rows = @(Import-Csv -LiteralPath $resolvedCsvPath -Delimiter $csvDelimiter)
if ($rows.Count -eq 0) {
  throw "CSV has no rows: $resolvedCsvPath"
}

$headers = @($rows[0].PSObject.Properties.Name)
foreach ($required in @('Question ID', 'Model')) {
  if ($headers -notcontains $required) {
    throw "CSV is missing required column '$required'. Columns: $($headers -join ', ')"
  }
}

$duplicateGroups = @($rows | Group-Object 'Question ID' | Where-Object { $_.Count -gt 1 })
if ($duplicateGroups.Count -gt 0) {
  $duplicateIds = @($duplicateGroups | Select-Object -ExpandProperty Name)
  throw "CSV contains duplicate question IDs: $($duplicateIds -join ', ')"
}

$items = New-Object System.Collections.Generic.List[object]
$missingQBankFiles = New-Object System.Collections.Generic.List[string]
$existingFinishedFiles = New-Object System.Collections.Generic.List[string]
$index = 0

foreach ($row in $rows) {
  $index += 1
  $questionIdText = ([string]$row.'Question ID').Trim()
  $model = ([string]$row.Model).Trim()

  if ([string]::IsNullOrWhiteSpace($questionIdText)) {
    throw "Row $index has a blank Question ID."
  }

  if ([string]::IsNullOrWhiteSpace($model)) {
    throw "Row $index has a blank Model."
  }

  try {
    $questionId = [int]$questionIdText
  } catch {
    throw "Row $index has a non-numeric Question ID: $questionIdText"
  }

  $qbankPath = Join-Path $qbankRoot ("{0}.md" -f $questionId)
  $outputPath = Join-Path $finishedRoot ("CQ{0}.md" -f $questionId)
  if (-not (Test-Path -LiteralPath $qbankPath -PathType Leaf)) {
    $missingQBankFiles.Add($qbankPath) | Out-Null
  }

  if (Test-Path -LiteralPath $outputPath -PathType Leaf) {
    $existingFinishedFiles.Add($outputPath) | Out-Null
  }

  $thinking = Get-ThinkingForModel -Model $model
  $message = New-LPOCMessage -QuestionId $questionId -OutputPath $outputPath

  $items.Add([pscustomobject][ordered]@{
    index = $index
    questionId = $questionId
    model = $model
    thinking = $thinking
    sessionKey = "cq$questionId"
    timeoutSeconds = $TimeoutSeconds
    verbose = 'on'
    qbankPath = $qbankPath
    outputPath = $outputPath
    message = $message
  }) | Out-Null
}

if ($missingQBankFiles.Count -gt 0) {
  throw "Missing QBank files for $($missingQBankFiles.Count) rows. First missing: $($missingQBankFiles[0])"
}

$modelCountMap = @{}
foreach ($item in $items) {
  $modelName = [string]$item.model
  if (-not $modelCountMap.ContainsKey($modelName)) {
    $modelCountMap[$modelName] = 0
  }

  $modelCountMap[$modelName] += 1
}

$modelCounts = @($modelCountMap.Keys | Sort-Object | ForEach-Object {
  [pscustomobject][ordered]@{
    model = $_
    count = $modelCountMap[$_]
    thinking = Get-ThinkingForModel -Model $_
  }
})

$itemsArray = @($items.ToArray())
$missingQBankFilesArray = @($missingQBankFiles.ToArray())
$existingFinishedFilesArray = @($existingFinishedFiles.ToArray())

$manifest = [ordered]@{
  schema = 'openclaw-lpoc-batch.v1'
  generatedAt = (Get-Date).ToString('o')
  sourceCsv = $resolvedCsvPath
  sourceDelimiter = (Get-DelimiterName -Value $csvDelimiter)
  count = $items.Count
  defaults = [ordered]@{
    openClawPath = $OpenClawPath
    agent = $Agent
    timeoutSeconds = $TimeoutSeconds
    verbose = 'on'
    sessionKeyTemplate = 'cq<questionId>'
    outputPathTemplate = (Join-Path $finishedRoot 'CQ<questionId>.md')
    qbankPathTemplate = (Join-Path $qbankRoot '<questionId>.md')
    messageTemplate = 'Please do this BarMatrix Multiple Choice Bar Exam Question <questionId>. Complete any research needed, do not stop at planning, verify your work, and save the entire response to <outputPath>.'
  }
  checks = [ordered]@{
    duplicateQuestionIds = @()
    missingQBankFiles = $missingQBankFilesArray
    existingFinishedFiles = $existingFinishedFilesArray
  }
  modelCounts = $modelCounts
  items = $itemsArray
}

$manifestParent = Split-Path -Parent $ManifestPath
if (-not (Test-Path -LiteralPath $manifestParent -PathType Container)) {
  New-Item -ItemType Directory -Force -Path $manifestParent | Out-Null
}

$previewParent = Split-Path -Parent $PreviewPath
if (-not (Test-Path -LiteralPath $previewParent -PathType Container)) {
  New-Item -ItemType Directory -Force -Path $previewParent | Out-Null
}

$manifest | ConvertTo-Json -Depth 12 | Set-Content -LiteralPath $ManifestPath -Encoding UTF8

$previewItems = @($items | Select-Object -First $PreviewLimit)
$previewLines = New-Object System.Collections.Generic.List[string]
$previewLines.Add('# Preview commands only. Running this file would launch OpenClaw agent work.') | Out-Null
$previewLines.Add('# Review first, or use Start-OpenClawLPOCBatch.ps1 for dry-run and launch controls.') | Out-Null
$previewLines.Add('# Thinking is taken from OpenClaw model defaults in C:\FOC\.openclaw\openclaw.json; no --thinking override is passed.') | Out-Null
$previewLines.Add('') | Out-Null
foreach ($item in $previewItems) {
  $previewLines.Add((
    '& {0} --no-color agent --agent {1} --session-key {2} --model {3} --verbose {4} --timeout {5} --json --message {6}' -f
    (ConvertTo-PSQuotedString $OpenClawPath),
    (ConvertTo-PSQuotedString $Agent),
    (ConvertTo-PSQuotedString $item.sessionKey),
    (ConvertTo-PSQuotedString $item.model),
    (ConvertTo-PSQuotedString $item.verbose),
    (ConvertTo-PSQuotedString ([string]$item.timeoutSeconds)),
    (ConvertTo-PSQuotedString $item.message)
  )) | Out-Null
}
$previewLines | Set-Content -LiteralPath $PreviewPath -Encoding UTF8

[pscustomobject]@{
  ManifestPath = $ManifestPath
  PreviewPath = $PreviewPath
  Count = $items.Count
  UniqueModels = @($manifest.modelCounts).Count
  ExistingFinishedFiles = $existingFinishedFiles.Count
}
