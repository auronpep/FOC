[CmdletBinding(PositionalBinding = $false)]
param(
  [string[]]$Path,
  [string[]]$Question,
  [string]$Directory,
  [string]$WorkspaceRoot = $PSScriptRoot,
  [string]$ManifestPath,
  [switch]$AllowLegacyWrappers,
  [switch]$RequireLedger,
  [switch]$Quiet
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$allowedComponentDestinations = @(
  'dashboard_summary',
  'drills',
  'red_zones',
  'trap_forensics',
  'misconceptions',
  'pattern_board',
  'matrix',
  'question_history',
  'outline_atlas',
  'review_cards'
)

function Add-Failure {
  param(
    [System.Collections.Generic.List[string]]$Failures,
    [string]$Message
  )

  $Failures.Add($Message) | Out-Null
}

function Test-HasProperty {
  param(
    [object]$Object,
    [string]$Name
  )

  if ($null -eq $Object) {
    return $false
  }

  return $null -ne $Object.PSObject.Properties[$Name]
}

function Get-PropertyValue {
  param(
    [object]$Object,
    [string]$Name
  )

  if (-not (Test-HasProperty -Object $Object -Name $Name)) {
    return $null
  }

  return $Object.PSObject.Properties[$Name].Value
}

function Test-NonEmpty {
  param([object]$Value)

  if ($null -eq $Value) {
    return $false
  }

  if ($Value -is [string]) {
    return -not [string]::IsNullOrWhiteSpace($Value)
  }

  if ($Value -is [System.Array]) {
    return $Value.Count -gt 0
  }

  if ($Value -is [System.Collections.IEnumerable] -and -not ($Value -is [string])) {
    return @($Value).Count -gt 0
  }

  return $true
}

function Require-Property {
  param(
    [System.Collections.Generic.List[string]]$Failures,
    [object]$Object,
    [string]$Name,
    [string]$Context
  )

  if (-not (Test-NonEmpty (Get-PropertyValue -Object $Object -Name $Name))) {
    Add-Failure $Failures "$Context is missing required field '$Name'."
  }
}

function Require-PropertyExists {
  param(
    [System.Collections.Generic.List[string]]$Failures,
    [object]$Object,
    [string]$Name,
    [string]$Context
  )

  if (-not (Test-HasProperty -Object $Object -Name $Name)) {
    Add-Failure $Failures "$Context is missing required field '$Name'."
  }
}

function Get-JsonBlock {
  param(
    [string]$Content,
    [int]$Number,
    [string]$Name
  )

  $escapedName = [regex]::Escape($Name)
  $pattern = '(?ms)^### ' + $Number + '\. ' + $escapedName + '\s*```json\s*(.*?)\s*```'
  $match = [regex]::Match($Content, $pattern)
  if (-not $match.Success) {
    return $null
  }

  return $match.Groups[1].Value.Trim()
}

function Convert-RequiredJson {
  param(
    [System.Collections.Generic.List[string]]$Failures,
    [string]$Json,
    [string]$Name
  )

  if ([string]::IsNullOrWhiteSpace($Json)) {
    Add-Failure $Failures "Missing JSON block '$Name'."
    return $null
  }

  try {
    return $Json | ConvertFrom-Json
  } catch {
    Add-Failure $Failures "JSON block '$Name' does not parse: $($_.Exception.Message)"
    return $null
  }
}

function Resolve-LegacyWrapper {
  param(
    [System.Collections.Generic.List[string]]$Failures,
    [object]$Object,
    [string]$ExpectedName,
    [switch]$AllowLegacyWrappers
  )

  if ($null -eq $Object) {
    return $null
  }

  if (Test-HasProperty -Object $Object -Name $ExpectedName) {
    if ($AllowLegacyWrappers) {
      return (Get-PropertyValue -Object $Object -Name $ExpectedName)
    }

    Add-Failure $Failures "$ExpectedName JSON uses a wrapper object. Emit fields directly at the top level."
  }

  return $Object
}

function Compare-JsonArray {
  param(
    [object]$Left,
    [object]$Right
  )

  $leftJson = if ($null -eq $Left) { 'null' } else { $Left | ConvertTo-Json -Depth 50 -Compress }
  $rightJson = if ($null -eq $Right) { 'null' } else { $Right | ConvertTo-Json -Depth 50 -Compress }
  return $leftJson -eq $rightJson
}

function Get-QuestionNumberFromPath {
  param([string]$FilePath)

  $name = [System.IO.Path]::GetFileNameWithoutExtension($FilePath)
  if ($name -match '^CQ(?<q>\d+)$') {
    return [int]$Matches.q
  }

  return $null
}

function Test-LedgerCloseout {
  param(
    [System.Collections.Generic.List[string]]$Failures,
    [string]$Workspace,
    [int]$QuestionNumber
  )

  $todoPath = Join-Path $Workspace 'tasks\todo.md'
  if (-not (Test-Path -LiteralPath $todoPath -PathType Leaf)) {
    Add-Failure $Failures "Missing task ledger: $todoPath"
    return
  }

  $todo = Get-Content -Raw -LiteralPath $todoPath
  if ($todo -notmatch [regex]::Escape("Finished/CQ$QuestionNumber.md") -and
      $todo -notmatch [regex]::Escape("Finished\CQ$QuestionNumber.md")) {
    Add-Failure $Failures "tasks/todo.md does not mention Finished/CQ$QuestionNumber.md."
  }

  $questionIndex = $todo.LastIndexOf("Q$QuestionNumber", [StringComparison]::OrdinalIgnoreCase)
  if ($questionIndex -lt 0) {
    Add-Failure $Failures "tasks/todo.md does not contain a Q$QuestionNumber section."
    return
  }

  $tail = $todo.Substring($questionIndex)
  if ($tail -notmatch '### Review Results') {
    Add-Failure $Failures "tasks/todo.md Q$QuestionNumber section is missing a Review Results block."
  }
}

function Test-CqFile {
  param(
    [string]$FilePath,
    [string]$Workspace,
    [switch]$AllowLegacyWrappers,
    [switch]$RequireLedger
  )

  $failures = New-Object System.Collections.Generic.List[string]
  $resolved = (Resolve-Path -LiteralPath $FilePath -ErrorAction Stop).Path
  $content = Get-Content -Raw -LiteralPath $resolved
  $questionNumber = Get-QuestionNumberFromPath -FilePath $resolved

  if (-not ($content.StartsWith("---`r`n") -or $content.StartsWith("---`n"))) {
    Add-Failure $failures 'Missing YAML frontmatter at the top of the file.'
  }

  foreach ($requiredText in @(
      '## 1. Final Question',
      '## 2. Distilled Core Question',
      '## 3. Final Answer Choices',
      '## 5. Correct Answer',
      '## 6. Letter Map',
      '## 13. Review Truth',
      '### 1. Question YAML',
      '### 2. The 17-section student case study',
      '### 3. c3_annotation',
      '### 4. program_elements',
      '### 5. program_intelligence'
    )) {
    if ($content -notmatch [regex]::Escape($requiredText)) {
      Add-Failure $failures "Missing required heading '$requiredText'."
    }
  }

  if ($content -match 'utm_|\?utm|chatgpt\.com') {
    Add-Failure $failures 'Output contains a banned tracking or chatgpt.com string.'
  }

  $c3Json = Get-JsonBlock -Content $content -Number 3 -Name 'c3_annotation'
  $elementsJson = Get-JsonBlock -Content $content -Number 4 -Name 'program_elements'
  $intelligenceJson = Get-JsonBlock -Content $content -Number 5 -Name 'program_intelligence'

  $c3 = Convert-RequiredJson -Failures $failures -Json $c3Json -Name 'c3_annotation'
  $elements = Convert-RequiredJson -Failures $failures -Json $elementsJson -Name 'program_elements'
  $intelligence = Convert-RequiredJson -Failures $failures -Json $intelligenceJson -Name 'program_intelligence'

  $c3 = Resolve-LegacyWrapper -Failures $failures -Object $c3 -ExpectedName 'c3_annotation' -AllowLegacyWrappers:$AllowLegacyWrappers
  $elements = Resolve-LegacyWrapper -Failures $failures -Object $elements -ExpectedName 'program_elements' -AllowLegacyWrappers:$AllowLegacyWrappers
  $intelligence = Resolve-LegacyWrapper -Failures $failures -Object $intelligence -ExpectedName 'program_intelligence' -AllowLegacyWrappers:$AllowLegacyWrappers

  foreach ($field in @('question_id', 'subject', 'credited_answer', 'outline_code', 'distilled_core_question', 'review_truth', 'c3')) {
    Require-Property $failures $c3 $field 'c3_annotation'
  }

  foreach ($field in @('question_id', 'subject', 'outline_code', 'distilled_core_question', 'review_truth', 'traps', 'remediation_card', 'red_zone_dimensions')) {
    Require-Property $failures $elements $field 'program_elements'
  }

  if (Test-HasProperty -Object $elements -Name 'red_zones') {
    Add-Failure $failures "program_elements uses 'red_zones'; use 'red_zone_dimensions' for the current contract."
  }

  foreach ($field in @('question_id', 'subject', 'outline_code', 'distilled_core_question', 'review_truth', 'wrong_answer_paths', 'drill_seeds', 'trap_tags', 'component_routing', 'outline_mastery')) {
    Require-Property $failures $intelligence $field 'program_intelligence'
  }

  if ($null -ne $c3 -and $null -ne $elements -and $null -ne $intelligence) {
    $ids = @($c3.question_id, $elements.question_id, $intelligence.question_id) | Where-Object { $_ }
    if (@($ids | Select-Object -Unique).Count -gt 1) {
      Add-Failure $failures "question_id differs across JSON blocks: $($ids -join ', ')."
    }

    $codes = @($c3.outline_code, $elements.outline_code, $intelligence.outline_code) | Where-Object { $_ }
    if (@($codes | Select-Object -Unique).Count -gt 1) {
      Add-Failure $failures "outline_code differs across JSON blocks: $($codes -join ', ')."
    }

    $subjects = @($c3.subject, $elements.subject, $intelligence.subject) | Where-Object { $_ }
    if (@($subjects | Select-Object -Unique).Count -gt 1) {
      Add-Failure $failures "subject differs across JSON blocks: $($subjects -join ', ')."
    }
  }

  $outlineCode = Get-PropertyValue -Object $c3 -Name 'outline_code'
  if ($outlineCode -and $outlineCode -notmatch '^\d{8}$') {
    Add-Failure $failures "outline_code '$outlineCode' is not an 8-digit code."
  }

  if ($outlineCode -and $outlineCode -ne '00000000') {
    $outlinePath = Join-Path $Workspace 'OUTLINE_CODES_COMPLETE.md'
    if (-not (Test-Path -LiteralPath $outlinePath -PathType Leaf)) {
      Add-Failure $failures "Missing OUTLINE_CODES_COMPLETE.md for outline-code verification."
    } else {
      $outlineText = Get-Content -Raw -LiteralPath $outlinePath
      if ($outlineText -notmatch [regex]::Escape($outlineCode)) {
        Add-Failure $failures "outline_code '$outlineCode' does not appear in OUTLINE_CODES_COMPLETE.md."
      }
    }
  }

  $c3Inner = Get-PropertyValue -Object $c3 -Name 'c3'
  if ($null -ne $c3Inner) {
    foreach ($field in @('verdict', 'residual', 'agrees_with_key', 'governing_law_type', 'deciding_phase', 'confidence', 'difficulty', 'distractors', 'analyzer_notes')) {
      Require-Property $failures $c3Inner $field 'c3_annotation.c3'
    }
    Require-PropertyExists $failures $c3Inner 'gold_keys' 'c3_annotation.c3'
    Require-PropertyExists $failures $c3Inner 'silver_keys' 'c3_annotation.c3'

    $notes = [string](Get-PropertyValue -Object $c3Inner -Name 'analyzer_notes')
    foreach ($needle in @('drift_audit:', 'transformed_from:', 'letter_map:')) {
      if ($notes -notmatch [regex]::Escape($needle)) {
        Add-Failure $failures "c3_annotation.c3.analyzer_notes is missing '$needle'."
      }
    }

    if ($c3Inner.distractors -and @($c3Inner.distractors).Count -ne 3) {
      Add-Failure $failures 'c3_annotation.c3.distractors must contain exactly three distractors.'
    }

    if ($c3.credited_answer -and $c3Inner.residual -and $c3.credited_answer -ne $c3Inner.residual) {
      Add-Failure $failures "credited_answer '$($c3.credited_answer)' does not match residual '$($c3Inner.residual)'."
    }
  }

  $traps = @(Get-PropertyValue -Object $elements -Name 'traps')
  foreach ($trap in $traps) {
    foreach ($field in @('choice', 'mold', 'why_attractive', 'focus_group_pct', 'pct_provenance')) {
      Require-Property $failures $trap $field 'program_elements.traps[]'
    }

    $provenance = [string](Get-PropertyValue -Object $trap -Name 'pct_provenance')
    if ($provenance -and $provenance -notin @('inherited', 'predicted')) {
      Add-Failure $failures "program_elements.traps[] pct_provenance '$provenance' must be inherited or predicted."
    }
  }

  $trapTags = Get-PropertyValue -Object $intelligence -Name 'trap_tags'
  if ($null -ne $trapTags) {
    Require-Property $failures $trapTags 'forensic_tags' 'program_intelligence.trap_tags'
    Require-Property $failures $trapTags 'misconception_tags' 'program_intelligence.trap_tags'
  }

  $routes = @(Get-PropertyValue -Object $intelligence -Name 'component_routing')
  foreach ($route in $routes) {
    if ($route -is [string]) {
      if ($route -notin $allowedComponentDestinations) {
        Add-Failure $failures "component_routing string '$route' is not a controlled destination key. Use destination_key plus optional free-text component_tags."
      }
      continue
    }

    Require-Property $failures $route 'destination_key' 'program_intelligence.component_routing[]'
    $destination = [string](Get-PropertyValue -Object $route -Name 'destination_key')
    if ($destination -and $destination -notin $allowedComponentDestinations) {
      Add-Failure $failures "component_routing destination_key '$destination' is not in controlled_vocabularies.md."
    }
  }

  if ($null -ne $c3Inner -and $null -ne $intelligence) {
    $c3GoldKeys = Get-PropertyValue -Object $c3Inner -Name 'gold_keys'
    $c3SilverKeys = Get-PropertyValue -Object $c3Inner -Name 'silver_keys'
    $intelligenceGoldKeys = Get-PropertyValue -Object $intelligence -Name 'gold_keys'
    $intelligenceSilverKeys = Get-PropertyValue -Object $intelligence -Name 'silver_keys'

    if (-not (Compare-JsonArray -Left $c3GoldKeys -Right $intelligenceGoldKeys)) {
      Add-Failure $failures 'gold_keys differ between c3_annotation and program_intelligence.'
    }

    if (-not (Compare-JsonArray -Left $c3SilverKeys -Right $intelligenceSilverKeys)) {
      Add-Failure $failures 'silver_keys differ between c3_annotation and program_intelligence.'
    }
  }

  if ($RequireLedger) {
    if ($null -eq $questionNumber) {
      Add-Failure $failures 'Cannot require ledger closeout because the file name is not CQ{N}.md.'
    } else {
      Test-LedgerCloseout -Failures $failures -Workspace $Workspace -QuestionNumber $questionNumber
    }
  }

  $result = [pscustomobject]@{
    File = $resolved
    Question = $questionNumber
    Passed = $failures.Count -eq 0
    FailureCount = $failures.Count
    Failures = @($failures)
  }

  return $result
}

function Get-TargetFiles {
  param(
    [string[]]$Path,
    [string[]]$Question,
    [string]$Directory,
    [string]$Workspace
  )

  $targets = New-Object System.Collections.Generic.List[string]

  if ($null -ne $Path) {
    # `pwsh -File` collapses "-Path a b" into one token, so callers pass a
    # comma-delimited list. Split on commas only: paths can contain spaces.
    foreach ($entry in @($Path)) {
      foreach ($p in ([string]$entry -split ',')) {
        if ([string]::IsNullOrWhiteSpace($p)) {
          continue
        }
        $targets.Add((Resolve-Path -LiteralPath $p.Trim() -ErrorAction Stop).Path) | Out-Null
      }
    }
  }

  if ($null -ne $Question) {
    foreach ($entry in @($Question)) {
      foreach ($part in ([string]$entry -split '[,\s]+')) {
        if ([string]::IsNullOrWhiteSpace($part)) {
          continue
        }
        $q = 0
        if (-not [int]::TryParse($part, [ref]$q)) {
          throw "Invalid -Question value '$part'. Use -Question 14003 or -Question '14003,14010'."
        }
        if ($q -le 0) {
          continue
        }
        $targets.Add((Resolve-Path -LiteralPath (Join-Path $Workspace "Finished\CQ$q.md") -ErrorAction Stop).Path) | Out-Null
      }
    }
  }

  if (-not [string]::IsNullOrWhiteSpace($Directory)) {
    $dir = (Resolve-Path -LiteralPath $Directory -ErrorAction Stop).Path
    Get-ChildItem -LiteralPath $dir -Filter 'CQ*.md' -File |
      Sort-Object Name |
      ForEach-Object { $targets.Add($_.FullName) | Out-Null }
  }

  return @($targets | Sort-Object -Unique)
}

$workspace = (Resolve-Path -LiteralPath $WorkspaceRoot -ErrorAction Stop).Path
$files = @(Get-TargetFiles -Path $Path -Question $Question -Directory $Directory -Workspace $workspace)

if ($files.Count -eq 0) {
  throw 'Provide -Path, -Question, or -Directory.'
}

$results = @(foreach ($file in $files) {
  Test-CqFile -FilePath $file -Workspace $workspace -AllowLegacyWrappers:$AllowLegacyWrappers -RequireLedger:$RequireLedger
})

if ($ManifestPath) {
  $manifestFullPath = $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath($ManifestPath)
  $manifestDir = Split-Path -Parent $manifestFullPath
  if ($manifestDir -and -not (Test-Path -LiteralPath $manifestDir)) {
    New-Item -ItemType Directory -Path $manifestDir -Force | Out-Null
  }
  $results | ConvertTo-Json -Depth 20 | Set-Content -LiteralPath $manifestFullPath -Encoding utf8
}

if (-not $Quiet) {
  $results |
    Select-Object File, Question, Passed, FailureCount |
    Format-Table -AutoSize

  foreach ($result in $results | Where-Object { -not $_.Passed }) {
    Write-Host ''
    Write-Host "Failures for $($result.File):"
    foreach ($failure in $result.Failures) {
      Write-Host " - $failure"
    }
  }
}

if (@($results | Where-Object { -not $_.Passed }).Count -gt 0) {
  exit 1
}

exit 0
