---
qid: "CQ16160"
transformed_from: "16160"
subject: "CRIMINAL"
topic: "Other Crimes"
subtopic: "Burglary"
outline_code: "00000000"
key: "UNKNOWN"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
# CQ16160: The Parsonage Accosting

## Distilled Core Question
The defendant accosted a pastor and his spouse outside the church parsonage at night, forced them inside, compelled the spouse to open the church safe, and stole the offertory funds. Following the defendant's arrest by church security, the pastor suffered a fatal heart attack. Was the defendant guilty of burglary, robbery, and murder?

## Final Choices
A: burglary, robbery, and murder.
B: robbery and murder only.
C: burglary and robbery only.
D: robbery only.

## Correct Answer
A

## Letter Map
A: correct (residual), burglary, robbery, and murder
B: wrong (ISSUE_SENSE), robbery and murder only
C: wrong (ISSUE_SENSE), burglary and robbery only
D: wrong (ISSUE_SENSE), robbery only

## Right-Answer Explanation
The defendant committed burglary by using constructive breaking (threat of force) to enter the parsonage with intent to commit a felony (robbery). Robbery occurred because the property was taken from the victim's presence by intimidation. Felony murder is applicable because the pastor's fatal heart attack was a foreseeable consequence of the dangerous felony committed.

## Wrong-Answer Explanations
B: Ignores the burglary. Constructive breaking and entry into the parsonage with intent to commit a robbery satisfies the burglary elements.
C: Ignores the felony murder. The killing occurred during the commission of the robbery, satisfying felony murder.
D: Ignores both burglary and felony murder, which are fully supported by the facts.

## Black-Letter Verification
Burglary is defined as the breaking and entering of a dwelling of another at nighttime with intent to commit a felony therein. Constructive breaking, via threat of force, suffices for the "breaking" element. Felony murder occurs when a death results from the commission of a dangerous felony, such as robbery.

## Rigor/Difficulty Note
This is a standard application of burglary (constructive breaking), robbery (presence), and felony murder (causation) doctrines.

## C3 Walkthrough
1. **CUT**: Identify crimes (burglary, robbery, murder).
2. **CLASH**: Evaluate if elements for each are present, particularly constructive breaking for burglary, presence for robbery, and causation for felony murder.
3. **CALL**: Burglary (constructive breaking), Robbery (presence), Felony Murder (foreseeable result of dangerous felony).

## Divergence Audit
- Original: Apartment accosting, necklace.
- Variant: Parsonage accosting, offertory funds.

## Review Truth
The defendant is guilty of all three crimes because he committed burglary through constructive breaking, robbery through taking property from the victim's presence by intimidation, and felony murder because the death was a foreseeable consequence of his dangerous criminal activity.

## Five Variations Table

| Variation | Stem Change | Divergence Score |
| :--- | :--- | :--- |
| 1 | Parsonage instead of apartment | 0.1 |
| 2 | Offertory funds instead of necklace | 0.1 |
| 3 | Pastor instead of husband | 0.1 |
| 4 | Church safe instead of residential safe | 0.2 |
| 5 | Church security instead of building security | 0.1 |

# Question YAML
```yaml
qid: CQ16160
subject: CRIMINAL
topic: Other Crimes
subtopic: Burglary
difficulty: Core
verdict: PASS
```

# c3_annotation
```json
{
  "c3_annotation": {
    "c3_solution": "A",
    "analyzer_notes": "drift_audit: Parsonage/Pastor/Church funds/Church security. transformed_from: 16160. letter_map: A: correct; B: wrong; C: wrong; D: wrong."
  }
}
```

# program_elements
```json
{
  "program_elements": {
    "official_key": "A",
    "credited_answer": "A",
    "residual": "A",
    "student_script": "A",
    "gold_keys": [
      { "type": "rule", "text": "Burglary is breaking and entering a dwelling at night with intent to commit a felony." },
      { "type": "rule", "text": "Felony murder applies to deaths occurring during a dangerous felony." }
    ],
    "silver_keys": [
      { "type": "cut", "text": "Identify elements of burglary, robbery, murder." },
      { "type": "clash", "text": "Assess constructive breaking and felony murder causation." },
      { "type": "call", "text": "Confirm all three crimes are supported." }
    ]
  }
}
```

# program_intelligence
```json
{
  "program_intelligence": {
    "confidence": "HARD_STRUCTURAL",
    "case_study_verdict": "C3_SOLVE",
    "bank_validation_verdict": "PASS",
    "component_routing": [
      { "destination_key": "dashboard_summary", "component_tags": ["burglary", "robbery", "felony_murder"] }
    ]
  }
}
```

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

Distilled core question not available in source file.

### 99. Final answer choices

See the preserved final answer choices above.

### 99. Possible replacement answer choices

No replacement answer choices are supplied in this repair-normalized file.

### 99. Correct answer

UNKNOWN

### 99. Letter Map

see Letter Map section

### 99. Full right-answer explanation

See the preserved right-answer explanation above.

### 99. Full wrong-answer explanations

See the preserved wrong-answer explanations above.

### 99. Full black-letter-law verification and legal reasoning for the right answer

See the preserved black-letter-law verification and legal reasoning above.

### 99. Brief note on why the variation preserves the original rigor/difficulty

The existing authored variation and analysis are preserved; this repair normalizes the missing Pass-1 contract surface.

### 99. C3 elimination walkthrough

See the preserved C3 elimination walkthrough above.

### 99. Divergence Audit

The source file did not expose a standalone Pass-1 Divergence Audit heading. Existing authored divergence/provenance content is preserved elsewhere in this file.

### 99. Review Truth

Review truth not available in source file.

### 99. The 5 variations considered

See preserved variation audit content above when present.

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "CQ16160"
  question_id: "CQ16160"
  subject: "CRIMINAL"
  topic: "Other Crimes"
  subtopic: "Burglary"
  outline_code: "00000000"
  official_key: "UNKNOWN"
transform_provenance:
  transformed_from: "16160"
  variant_slug: "16160_christian_variant"
  original_key_letter: "UNKNOWN"
  new_key_letter: "UNKNOWN"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "UNKNOWN"
  case_study_verdict: "UNKNOWN"
  confidence: "UNKNOWN"
  residual: "UNKNOWN"
distilled_core_question: "Distilled core question not available in source file."
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question CQ16160; source 16160.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic Other Crimes; subtopic Burglary.
4. **distilled_core_question:** Distilled core question not available in source file.
5. **call_and_prediction:** Credited answer: UNKNOWN.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 00000000.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** UNKNOWN
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 00000000.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "CQ16160",
  "subject": "CRIMINAL",
  "credited_answer": "UNKNOWN",
  "outline_code": "00000000",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "c3": {
    "verdict": "UNKNOWN",
    "residual": "UNKNOWN",
    "agrees_with_key": false,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "UNKNOWN",
    "tension_axis": null,
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "repair_normalized",
    "difficulty": "UNKNOWN",
    "distractors": [],
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 16160; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "CQ16160",
  "subject": "CRIMINAL",
  "outline_code": "00000000",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-16160",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "Review truth not available in source file.",
    "trap": "See preserved traps when present.",
    "confidence": "UNKNOWN"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "CQ16160",
  "subject": "CRIMINAL",
  "outline_code": "00000000",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "wrong_answer_paths": [],
  "drill_seeds": [],
  "trap_tags": {
    "forensic_tags": [],
    "misconception_tags": []
  },
  "component_routing": [
    {
      "destination_key": "review_cards",
      "component_tags": [
        "repair_normalized"
      ]
    }
  ],
  "crossovers": [],
  "gold_keys": [],
  "silver_keys": [],
  "outline_mastery": {
    "placement": "00000000",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
