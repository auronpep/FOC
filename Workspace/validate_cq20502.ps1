$ErrorActionPreference = "Stop"
$f = "C:\FOC\Workspace\Finished\CQ20502.md"
$content = Get-Content $f -Raw

function Extract-JsonBlock([string]$text, [string]$header) {
  $idx = $text.IndexOf($header)
  if ($idx -lt 0) { return $null }
  $start = $text.IndexOf("```json", $idx)
  if ($start -lt 0) { return $null }
  $start = $start + 7
  $end = $text.IndexOf("```", $start)
  if ($end -lt 0) { return $null }
  return $text.Substring($start, $end - $start)
}

$blocks = @(
  @{ name = "c3_annotation";      header = "### 3. c3_annotation" },
  @{ name = "program_elements";   header = "### 4. program_elements" },
  @{ name = "program_intelligence"; header = "### 5. program_intelligence" }
)

$allOk = $true
foreach ($b in $blocks) {
  $json = Extract-JsonBlock -text $content -header $b.header
  Write-Host "=== $($b.name) ==="
  if ($null -eq $json) {
    Write-Host "  BLOCK NOT FOUND"
    $allOk = $false
    continue
  }
  Write-Host "  Length: $($json.Length) chars"
  Write-Host "  First 80 chars: $($json.Substring(0,[Math]::Min(80,$json.Length)))"
  try {
    $obj = $json | ConvertFrom-Json -ErrorAction Stop
    Write-Host "  PARSE: OK"
    if ($b.name -eq "c3_annotation") {
      Write-Host "  question_id: $($obj.question_id)"
      Write-Host "  credited_answer: $($obj.c3.credited_answer)"
      Write-Host "  residual: $($obj.c3.residual)"
      Write-Host "  outline_code: $($obj.outline_code)"
      Write-Host "  agrees_with_key: $($obj.c3.agrees_with_key)"
      Write-Host "  drift_audit: $($obj.c3.analyzer_notes.drift_audit)"
      Write-Host "  transformed_from: $($obj.c3.analyzer_notes.transformed_from)"
      Write-Host "  letter_map (analyzer): $($obj.c3.analyzer_notes.letter_map)"
      Write-Host "  dominant_trap: $($obj.c3.analyzer_notes.dominant_trap)"
    }
    if ($b.name -eq "program_elements") {
      Write-Host "  question_id: $($obj.question_id)"
      Write-Host "  red_zone_dimensions count: $(@($obj.red_zone_dimensions).Count)"
    }
    if ($b.name -eq "program_intelligence") {
      Write-Host "  question_id: $($obj.question_id)"
      Write-Host "  component_routing count: $(@($obj.component_routing).Count)"
      Write-Host "  drill_seeds count: $(@($obj.drill_seeds).Count)"
      Write-Host "  gold_keys count: $(@($obj.gold_keys).Count)"
      Write-Host "  silver_keys count: $(@($obj.silver_keys).Count)"
    }
  } catch {
    Write-Host "  PARSE FAIL: $($_.Exception.Message)"
    $allOk = $false
  }
  Write-Host ""
}

$yamlStart = $content.IndexOf("```yaml")
$yamlEnd = $content.IndexOf("```", $yamlStart + 7)
$yamlText = $content.Substring($yamlStart + 7, $yamlEnd - $yamlStart - 7)
Write-Host "=== Question YAML ==="
Write-Host "  Length: $($yamlText.Length) chars"
Write-Host "  Lines: $(($yamlText -split "`n").Count)"

Write-Host ""
Write-Host "=== Letter consistency check (key C) ==="
$keyC_count = ([regex]::Matches($content, '"C"')).Count
$keyC_count += ([regex]::Matches($content, "key: C\b")).Count
$keyC_count += ([regex]::Matches($content, "official_key: C")).Count
$keyC_count += ([regex]::Matches($content, "new_key_letter: C")).Count
$keyC_count += ([regex]::Matches($content, "residual: C\b")).Count
$keyC_count += ([regex]::Matches($content, "residual_answer: C")).Count
$keyC_count += ([regex]::Matches($content, "credited_answer: C")).Count
Write-Host "  'C' key references: $keyC_count"
$origD_count = ([regex]::Matches($content, "original_key: D")).Count
$origD_count += ([regex]::Matches($content, "original_key_letter: D")).Count
Write-Host "  'original D' references: $origD_count"
$lm_count = ([regex]::Matches($content, 'A→B, B→A, C→D, D→C')).Count
Write-Host "  letter_map (A→B, B→A, C→D, D→C) occurrences: $lm_count"

Write-Host ""
Write-Host "=== Trailing-comma / common JSON error scan ==="
foreach ($b in $blocks) {
  $json = Extract-JsonBlock -text $content -header $b.header
  $matches = [regex]::Matches($json, ',\s*[}\]]')
  Write-Host "  $($b.name): $($matches.Count) potential trailing-comma pattern(s)"
}

if ($allOk) {
  Write-Host ""
  Write-Host "RESULT: ALL THREE JSON BLOCKS PARSE OK"
} else {
  Write-Host ""
  Write-Host "RESULT: ONE OR MORE JSON BLOCKS FAILED TO PARSE"
}
