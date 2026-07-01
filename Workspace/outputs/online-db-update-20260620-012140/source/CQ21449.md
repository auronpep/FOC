---
qid: "21449"
transformed_from: "21449"
subject: "EVIDENCE"
topic: "UNKNOWN"
subtopic: "UNKNOWN"
outline_code: "31010404"
key: "C"
original_key: "UNKNOWN"
letter_map: "{ A: A, B: B, C: C, D: D }"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
# Finished CQ21449

---
Source: QBank 21449 (internal_id: presentation_questions_batch_016_D4_competency::r9::Q08)
Transformed from: 21449

FINAL QUESTION
During a federal bribery trial, a seated juror named Nathan tells the judge that he saw Levi hand cash to a witness during a break. The prosecutor asks to call Nathan immediately as a witness in front of the other jurors and then return him to the jury box. Levi objects. How should the court proceed?

DISTILLED CORE QUESTION
May a seated juror be called to testify before the other jurors at trial, and what procedural safeguards apply if the juror is to be called as a witness?

FINAL CHOICES (post-shuffle)
A. Allow Nathan to testify before the other jurors because he has personal knowledge
B. Allow Nathan to testify before the other jurors only if Levi cross-examines him
C. Not allow Nathan to testify as a witness before the other jurors at the trial; if the issue is pursued, the court must handle any objection outside the jury's presence
D. Exclude all evidence of the cash transfer because a juror can never report misconduct observed during trial

CORRECT ANSWER WITH ORIGINAL KEY LETTER
C (original key preserved)

LETTER MAP
Original→Post-shuffle: A→A, B→B, C→C, D→D
Dominant trap (most attractive wrong answer): A (personal-knowledge immediacy)

RIGHT-ANSWER EXPLANATION
C: Federal Rule of Evidence 606(a) prohibits a juror from testifying as a witness in the trial in which the juror is sitting before the other jurors. If a juror is to be called, the court must address the matter outside the jury's presence and give parties the opportunity to object and develop testimony in a manner that protects the jury's integrity.

WRONG-ANSWER EXPLANATIONS
A: Incorrect — personal knowledge does not override the rule against jurors testifying before their fellow jurors during the same trial.
B: Incorrect — permitting cross-examination does not resolve the problem that a seated juror cannot be made a witness before the other jurors; procedural safeguards require handling outside their presence.
D: Incorrect — the rule does not categorically exclude all evidence of observed misconduct; it prescribes the proper channel and privacy protections for juror testimony and objections.

PICK-RATE SEED (no measured rates supplied — predicted)
C: 55% (predicted)
A: 25% (predicted)  <-- dominant trap
B: 10% (predicted)
D: 10% (predicted)

BLACK-LETTER VERIFICATION (authority floor)
- Federal Rule of Evidence 606(a): "At the trial, a juror may not testify as a witness before the other jurors." This rule controls a juror-as-witness situation and requires handling juror testimony and objections outside the jury's presence.
(Authority floor met; no case law fabricated.)

RIGOR / DIFFICULTY NOTE
Difficulty: Core
Teaching focus: juror-witness role limitation; FRE 606(a) procedure for handling juror testimony and objections outside the jury's presence.

C3 CUT → CLASH → CALL WALKTHROUGH
CUT: Nathan, a seated juror, reports seeing a cash transfer during a break.
CLASH: Prosecutor seeks immediate in-court juror testimony before fellow jurors; defense objects based on juror role and trial integrity.
CALL: FRE 606(a) bars juror testimony before other jurors at trial; the court should decline to have Nathan testify in front of the jury and, if pursued, resolve objections and take testimony outside the jury's presence — Answer C.

DIVERGENCE AUDIT
Original stem one-sentence summary: "Seated juror reports seeing defendant hand cash to a witness during trial break; prosecutor seeks to call juror to testify before other jurors; defense objects — how proceed?"
Transformed stem one-sentence summary: "Juror says he saw a cash transfer during a break; prosecutor requests immediate in-front-of-jury testimony; defense objects — must juror testify before other jurors?"
Divergence: minimal; preserved original facts and doctrinal posture.

REVIEW TRUTH (student-facing rule sentence)
A juror may not testify as a witness in the trial in which the juror is sitting before the other jurors; if juror testimony is necessary, the court must handle it and any objections outside the jury's presence consistent with FRE 606(a).

5 VARIATIONS TABLE (brief; divergence scores 0.0–1.0)
1) Minimal reword (0.05): Preserve facts/call as original.
2) Emphasize timing (0.20): Note whether the observation was during recess or during testimony.
3) Add alleged crime detail (0.30): Describe the cash transfer's appearance to heighten stakes (avoid adding new posture).
4) Introduce juror misconduct claim (0.45): Expand to potential juror bias (higher divergence; careful with posture).
5) Focus on remedy (0.25): Frame question around mistrial vs. handling testimony.

---

PASS-2: BLOCK 1 — QUESTION YAML
---
id: CQ21449
source_id: 21449
internal_id: "presentation_questions_batch_016_D4_competency::r9::Q08"
subject: EVIDENCE
outline_code: "31010404"
difficulty: Core
official_key: C
choices:
  A: "Allow Nathan to testify before the other jurors because he has personal knowledge"
  B: "Allow Nathan to testify before the other jurors only if Levi cross-examines him"
  C: "Not allow Nathan to testify as a witness before the other jurors at the trial; if the issue is pursued, the court must handle any objection outside the jury's presence"
  D: "Exclude all evidence of the cash transfer because a juror can never report misconduct observed during trial"
letter_map: { A: A, B: B, C: C, D: D }
pick_rate_seed: { C: "55% (predicted)", A: "25% (predicted)", B: "10% (predicted)", D: "10% (predicted)" }
---

PASS-2: BLOCK 2 — 17-SECTION CASE STUDY
1. case_id: CQ21449
2. facts: "During a federal bribery trial, seated juror Nathan reports seeing Levi hand cash to a witness during a break. Prosecutor asks to call Nathan immediately as a witness before the other jurors and then return him to the jury box. Levi objects."
3. procedural_history: "Trial in progress; juror reports observation; immediate request to call juror as witness; defense objects."
4. issue: "Whether a seated juror may testify before other jurors at the same trial and what procedures govern when a juror is called as a witness."
5. applicable_law: "FRE 606(a) — juror as witness limitation."
6. analysis_outline: "(a) juror role vs. witness role; (b) FRE 606(a) prohibition on juror testifying before fellow jurors at trial; (c) proper procedure: handle objection and potential testimony outside the jury's presence; (d) distinction between excluding evidence and controlling juror testimony channel."
7. holding_summary: "A juror should not be called to testify before the other jurors; any juror testimony or objections must be addressed outside the jury's presence per FRE 606(a)."
8. reasoning: "The juror's dual role threatens jury integrity and fairness; FRE 606(a) protects that by barring in-front-of-jury juror testimony and requiring off-the-record handling."
9. teaching_points: "Recognize juror-role limits; know FRE 606(a) and the off-the-record procedure for juror testimony and objections."
10. distractor_mechanics:
   - A: "personal-knowledge immediacy" (dominant trap)
   - B: "fix-by-cross-exam" (procedural misunderstanding)
   - D: "categorical-exclusion myth"
11. correct_choice_rationale: "C — juror testimony before other jurors is not allowed; the court must take actions outside the jury's presence."
12. remediation_items: "Practice FRE 606(a) scenarios: juror observations, handling objections, and appropriate off-jury procedures."
13. anchor_points: "juror status; timing of observation; prosecutor's immediate request; FRE 606(a)."
14. common_student_errors: "Believing personal knowledge overrides juror-role protections; thinking cross-exam fixes the issue."
15. assessment_use: "Diagnostic on juror competency, juror-as-witness rules, and courtroom procedure."
16. component_routing: ["review_cards","drills","trap_forensics"]
17. verdict: "C3_SOLVE"

---

PASS-2: BLOCK 3 — c3_annotation
c3_annotation:
{
  "id": "CQ21449",
  "transformed_from": "21449",
  "official_key": "C",
  "gold_keys": ["rule"],
  "silver_keys": ["call"],
  "deciding_phase": "CALL",
  "method_class": "hard_structural",
  "confidence": "HARD_STRUCTURAL",
  "letter_map": {"A":"A","B":"B","C":"C","D":"D"},
  "dominant_trap": "A",
  "pick_rate_seed": {"A":25,"B":10,"C":55,"D":10},
  "analyzer_notes": {
    "drift_audit": "minimal (preserved original facts; no new posture added)",
    "transformed_from": "21449",
    "letter_map": {"A":"A","B":"B","C":"C","D":"D"}
  }
}

---

PASS-2: BLOCK 4 — program_elements
program_elements:
{
  "id": "CQ21449",
  "subject": "EVIDENCE",
  "outline_code": "31010404",
  "difficulty": "Core",
  "destination_keys": ["review_cards","drills","trap_forensics"],
  "component_tags": ["FRE606","juror_as_witness","competency","off_jury_procedure"]
}

---

PASS-2: BLOCK 5 — program_intelligence
program_intelligence:
{
  "id": "CQ21449",
  "official_key": "C",
  "gold_keys": ["rule"],
  "silver_keys": ["call"],
  "bank_validation_verdict": "PASS",
  "confidence": "HARD_STRUCTURAL",
  "recommended_drills": ["FRE606_scenarios","juror_testimony_procedures"],
  "analyzer_notes": {
    "drift_audit": "minimal",
    "transformed_from": "21449",
    "letter_map": {"A":"A","B":"B","C":"C","D":"D"}
  }
}

---

END OF FILE

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

Distilled core question not available in source file.

### 99. Final answer choices

See the preserved final answer choices above.

### 99. Possible replacement answer choices

No replacement answer choices are supplied in this repair-normalized file.

### 99. Correct answer

C

### 99. Letter Map

{ A: A, B: B, C: C, D: D }

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
  qid: "21449"
  question_id: "21449"
  subject: "EVIDENCE"
  topic: "UNKNOWN"
  subtopic: "UNKNOWN"
  outline_code: "31010404"
  official_key: "C"
transform_provenance:
  transformed_from: "21449"
  variant_slug: "21449"
  original_key_letter: "UNKNOWN"
  new_key_letter: "C"
  letter_map: "{ A: A, B: B, C: C, D: D }"
c3_routing:
  bank_validation_verdict: "UNKNOWN"
  case_study_verdict: "UNKNOWN"
  confidence: "UNKNOWN"
  residual: "C"
distilled_core_question: "Distilled core question not available in source file."
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 21449; source 21449.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject EVIDENCE; topic UNKNOWN; subtopic UNKNOWN.
4. **distilled_core_question:** Distilled core question not available in source file.
5. **call_and_prediction:** Credited answer: C.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 31010404.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** C
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 31010404.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "21449",
  "subject": "EVIDENCE",
  "credited_answer": "C",
  "outline_code": "31010404",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "c3": {
    "verdict": "UNKNOWN",
    "residual": "C",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "UNKNOWN",
    "tension_axis": null,
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "repair_normalized",
    "difficulty": "UNKNOWN",
    "distractors": [],
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 21449; letter_map: { A: A, B: B, C: C, D: D }",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "21449",
  "subject": "EVIDENCE",
  "outline_code": "31010404",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-21449",
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
  "question_id": "21449",
  "subject": "EVIDENCE",
  "outline_code": "31010404",
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
    "placement": "31010404",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
