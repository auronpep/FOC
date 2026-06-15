[CmdletBinding()]
param()

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$workspace = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')).Path
$verifyScript = Join-Path $workspace 'verify_json.ps1'
$tempRoot = Join-Path ([System.IO.Path]::GetTempPath()) ("cq-verify-tests-" + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $tempRoot -Force | Out-Null

function New-TestCqFile {
  param(
    [Parameter(Mandatory)]
    [string]$Path,
    [Parameter(Mandatory)]
    [string]$ProgramElementsField
  )

  $content = @'
---
qid: 99999_component_gate
transformed_from: 99999
subject: CRIMINAL
topic: Test topic
subtopic: Test subtopic
outline_code: 75080102
key: A
original_key: C
letter_map: A->B, B->C, C->A, D->D
dominant_trap: B
pick_rates: predicted_seed
bank_validation_verdict: PASS
review_truth: "A clean validation file has the current CQ component payloads."
---

## 1. Final Question
Test stem?

## 2. Distilled Core Question
Test distilled core question?

## 3. Final Answer Choices
A. Correct
B. Wrong
C. Wrong
D. Wrong

## 5. Correct Answer
A (original key C)

## 6. Letter Map
- A->B | mechanic: `correct_answer` | substance: kept | pick: 20% `predicted` | dominant trap: no
- B->C | mechanic: `wrong_element` | substance: kept | pick: 30% `predicted` | dominant trap: yes
- C->A | mechanic: `half_truth` | substance: kept | pick: 40% `predicted` | dominant trap: no
- D->D | mechanic: `fabricated_rule` | substance: kept | pick: 10% `predicted` | dominant trap: no

## 7. Full Right-Answer Explanation
Test.

## 8. Full Wrong-Answer Explanations
Test.

## 9. Full Black-Letter-Law Verification AND Legal Reasoning
Test.

## 10. Why the Variation Preserves Difficulty
Test.

## 11. C3 Elimination Walkthrough
Test.

## 12. Divergence Audit
Original stem summary: Old test.
Variant stem summary: New test.

## 13. Review Truth
A clean validation file has the current CQ component payloads.

## 14. The 5 Variations Considered
Test.

### 1. Question YAML
```yaml
barmatrix_row:
  qid: 99999_component_gate
  subject: CRIMINAL
  official_key: A
```

### 2. The 17-section student case study
program_frame

### 3. c3_annotation
```json
{
  "question_id": "99999_component_gate",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "75080102",
  "distilled_core_question": "Test distilled core question?",
  "review_truth": "A clean validation file has the current CQ component payloads.",
  "c3": {
    "verdict": "C3_SOLVE",
    "residual": "A",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CLASH",
    "confidence": "HARD_STRUCTURAL",
    "difficulty": "L2",
    "distractors": [
      { "choice": "B", "filter_broken": "NOT_TRUE", "mold": "half_truth", "architecture": null, "card_ref": null, "explanation": "Test." },
      { "choice": "C", "filter_broken": "NOT_RESPONSIVE", "mold": "wrong_element", "architecture": null, "card_ref": null, "explanation": "Test." },
      { "choice": "D", "filter_broken": "NOT_TRUE", "mold": "fabricated_rule", "architecture": null, "card_ref": null, "explanation": "Test." }
    ],
    "analyzer_notes": "drift_audit: ok. transformed_from: 99999. letter_map: A->B, B->C, C->A, D->D.",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements
```json
{
  "question_id": "99999_component_gate",
  "subject": "CRIMINAL",
  "outline_code": "75080102",
  "distilled_core_question": "Test distilled core question?",
  "review_truth": "A clean validation file has the current CQ component payloads.",
  "traps": [
    { "choice": "B", "mold": "half_truth", "architecture": null, "why_attractive": "This is attractive. This breaks cleanly.", "focus_group_pct": 30, "pct_provenance": "predicted" },
    { "choice": "C", "mold": "wrong_element", "architecture": null, "why_attractive": "This is attractive. This breaks cleanly.", "focus_group_pct": 40, "pct_provenance": "predicted" },
    { "choice": "D", "mold": "fabricated_rule", "architecture": null, "why_attractive": "This is attractive. This breaks cleanly.", "focus_group_pct": 10, "pct_provenance": "predicted" }
  ],
  "remediation_card": {
    "card_id": "RC-TEST-01",
    "title": "Test card",
    "signal": "Test signal",
    "student_move": "Test move",
    "tiny_rule": "Test rule",
    "trap": "B",
    "confidence": "HARD_STRUCTURAL"
  },
  "__PROGRAM_ELEMENTS_FIELD__": [
    "free text red-zone tag"
  ]
}
```

### 5. program_intelligence
```json
{
  "question_id": "99999_component_gate",
  "subject": "CRIMINAL",
  "outline_code": "75080102",
  "distilled_core_question": "Test distilled core question?",
  "review_truth": "A clean validation file has the current CQ component payloads.",
  "wrong_answer_paths": [
    { "choice": "B", "filter_broken": "NOT_TRUE", "mold": "half_truth", "why_a_student_picks_this": "Test.", "skipped_move": "Test.", "recovery_step": "Test." }
  ],
  "drill_seeds": [
    { "drill_type": "rule recall", "target_skill": "Test skill", "prompt": "Test?", "answer": "Test." }
  ],
  "trap_tags": {
    "forensic_tags": [ "free text forensic tag" ],
    "misconception_tags": [ "free text misconception tag" ]
  },
  "component_routing": [
    {
      "destination_key": "drills",
      "route": "/drills",
      "component_tags": [ "free text component tag" ]
    }
  ],
  "crossovers": [],
  "gold_keys": [],
  "silver_keys": [],
  "outline_mastery": {
    "placement": "Test placement",
    "this_item_teaches": "Test teaching",
    "fills": [ "Test fill" ],
    "adjacent_to_master": [ "Test adjacent" ]
  }
}
```
'@

  $content = $content.Replace('__PROGRAM_ELEMENTS_FIELD__', $ProgramElementsField)

  Set-Content -LiteralPath $Path -Value $content -Encoding utf8
}

try {
  $validPath = Join-Path $tempRoot 'CQ99999.md'
  New-TestCqFile -Path $validPath -ProgramElementsField 'red_zone_dimensions'
  & pwsh -NoProfile -File $verifyScript -Path $validPath -WorkspaceRoot $workspace | Out-String | Write-Host
  if ($LASTEXITCODE -ne 0) {
    throw "Expected valid CQ output to pass, exit code $LASTEXITCODE."
  }

  $invalidPath = Join-Path $tempRoot 'CQ99998.md'
  New-TestCqFile -Path $invalidPath -ProgramElementsField 'red_zones'
  $invalidOutput = & pwsh -NoProfile -File $verifyScript -Path $invalidPath -WorkspaceRoot $workspace 2>&1 | Out-String
  Write-Host $invalidOutput
  if ($LASTEXITCODE -eq 0) {
    throw 'Expected red_zones schema drift to fail.'
  }
  if ($invalidOutput -notmatch 'red_zone_dimensions') {
    throw 'Expected failure output to mention red_zone_dimensions.'
  }

  Write-Host 'test-verify-json: PASS'
} finally {
  if (Test-Path -LiteralPath $tempRoot) {
    Remove-Item -LiteralPath $tempRoot -Recurse -Force
  }
}
