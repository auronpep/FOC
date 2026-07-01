---
qid: "CQ17015"
transformed_from: "17015"
subject: "EVIDENCE"
topic: "UNKNOWN"
subtopic: "PRESENTATION_OF_EVIDENCE"
outline_code: "31010103"
key: "B"
original_key: "B"
letter_map: "see Letter Map section"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
Final Question:
Lydia sues Aaron in federal court for failing to exercise an option before the deadline. Lydia proves that she mailed Aaron a deadline reminder two weeks before the option expired. Aaron testifies that he never received it. Lydia asks the judge to instruct the jury that the reminder was received because the mailing was proven. Which instruction is proper?

Distilled Core Question:
When proof of mailing is introduced in a civil case, does the jury have to find receipt, or may it infer receipt but weigh contrary testimony?

Final Choices (post-shuffle):
A. The jury must find the reminder was received because mailing was proven.
B. The jury may infer receipt from the mailing evidence but must decide receipt after considering Aaron's denial.  (Correct)
C. The jury may consider the mailing evidence only if Lydia introduces every other letter sent to Aaron that month.
D. The jury may consider the reminder only to impeach Aaron's denial, not as evidence of receipt.

Correct answer with original key letter:
B (original key preserved)

Letter Map:
Original→Post-shuffle: A→A | B→B (correct) | C→C | D→D
Dominant trap: A (students often treat the mailing inference as conclusive rather than permissive). Mold: EAR_OVERCLAIM / extreme_of_range.

Right-answer explanation:
Under FRE 301 and settled civil-evidence practice, proof of mailing supports a permissive inference or presumption of receipt but is not conclusive when the factfinder hears direct contradictory evidence. The jury may infer receipt from the mailing but must weigh Aaron's denial and decide whether the inference holds in the case.

Wrong-answer explanations:
A: Incorrect—FRE 301 does not create a mandatory finding of receipt; presumptions in civil cases supply permissive inferences subject to the jury's evaluation of the evidence. (Mold: EAR_OVERCLAIM / extreme_of_range; Filter: NOT_TRUE)
C: Incorrect—Rule of completeness does not require production of every other letter; this is irrelevant to whether the mailing supports an inference of receipt. (Mold: EAR_DISTORTION / misfit; Filter: NOT_RESPONSIVE)
D: Incorrect—Mailing evidence is substantive evidence on the fact of receipt and may be considered for that purpose, not only to impeach testimony. (Mold: EAR_FALSITY / flat_misstatement; Filter: NOT_TRUE)

Pick-rate seeding (no measured focus-group rates supplied — all `predicted`):
B (Correct): 48% (predicted)
A: 30% (predicted) — Dominant trap
D: 12% (predicted)
C: 10% (predicted)

Black-letter verification with authority (authority floor):
- Federal Rule of Evidence 301 (presumptions in civil cases): governs civil presumptions and their effect on the burden of proof; proof supporting an inference may be permissive rather than conclusive.
- Related doctrine: mailbox rule and civil presumptions treat proof of mailing as supporting an inference of receipt; jury may weigh contrary testimony. Recommend attorney confirmation for any state-specific variations.

Rigor / Difficulty Note:
Difficulty: Core
Teaching focus: distinction between permissive inference/presumption and conclusive presumption; effect of contrary evidence on the jury's factfinding.

C3 CUT → CLASH → CALL walkthrough:
CUT: Proof of mailing of a deadline reminder in a federal civil case.
CLASH: Does proof of mailing force a finding of receipt (conclusive presumption) or merely permit an inference that the jury must weigh against contrary testimony? 
CALL: Apply FRE 301 and standard evidence practice—treat mailing as supporting a permissive inference; answer B.

Divergence Audit (one-sentence stem summaries):
- Original stem: Lydia proves she mailed a deadline reminder; Aaron denies receipt; Lydia requests an instruction that mailing proves receipt.
- Transformed stem (C3 variant): Same posture preserved; emphasis placed on civil-presumption effect and jury's weighing responsibility.
Divergence score: Low — doctrinal boundary preserved and clarified.

Review Truth (student-facing rule sentence):
Proof of mailing supports a permissive inference of receipt, but the jury is not compelled to find receipt when faced with credible contrary evidence.

Five-variation table (brief, divergence scores — 0–10):
1) Minimal wording change: divergence 1
2) Swap C/D distractors emphasis (impeachment vs. completeness): divergence 3
3) Introduce objective delivery evidence (postal receipt): divergence 4
4) Convert to criminal-mailbox/notice rule (changes burden): divergence 6 — not used here
5) Add multiple mailings across months (adds factual complexity): divergence 4

--- PASS-2: Question YAML ---
question_id: CQ17015
outline_code: "31010103"
subject: EVIDENCE
subtopic: PRESENTATION_OF_EVIDENCE
difficulty: Core
stem: |
  Lydia sues Aaron in federal court for failing to exercise an option before the deadline. Lydia proves that she mailed Aaron a deadline reminder two weeks before the option expired. Aaron testifies that he never received it. Lydia asks the judge to instruct the jury that the reminder was received because the mailing was proven. Which instruction is proper?
choices:
  A: "The jury must find the reminder was received because mailing was proven."
  B: "The jury may infer receipt from the mailing evidence but must decide receipt after considering Aaron's denial."  # correct
  C: "The jury may consider the mailing evidence only if Lydia introduces every other letter sent to Aaron that month."
  D: "The jury may consider the reminder only to impeach Aaron's denial, not as evidence of receipt."
official_key: B
original_key: B
gold_keys:
  - type: rule
    value: "FRE 301: civil presumptions and permissive inferences"
silver_keys:
  - cut: "proof_of_mailing"
  - clash: "presumption_vs_inference"
  - call: "jury_weighs_contrary_testimony"
analyzer_notes: |
  drift_audit: no doctrinal drift; preserved civil posture. transformed_from: 17015. letter_map: {A:A, B:B, C:C, D:D}.

--- 17-section case study ---
1. case_study_id: CQ17015
2. transformed_from: 17015
3. stem_summary: Proof of mailing a deadline reminder; defendant denies receipt; instruction requested that mailing proves receipt.
4. posture: civil, federal court, pre-deadline option dispute
5. governing_law_type: RULE
6. governing_doctrine: FRE 301 and the permissive inference vs. conclusive presumption distinction in civil cases
7. deciding_phase: CUT
8. cut_reasoning: Determine whether mailing creates a conclusive or permissive inference of receipt when contrary testimony exists
9. clash_options: ["treat_mailing_as_conclusive_presumption","treat_mailing_as_permissive_inference"]
10. call_application: Under FRE 301 and practice, treat mailing as permissive; jury must weigh contrary evidence
11. deciding_choice: B
12. distractor_analysis:
  A: {mold_code: "EAR_OVERCLAIM", filter: "NOT_TRUE", notes: "treats permissive inference as mandatory"}
  C: {mold_code: "EAR_DISTORTION", filter: "NOT_RESPONSIVE", notes: "misapplies rule of completeness"}
  D: {mold_code: "EAR_FALSITY", filter: "NOT_TRUE", notes: "limits substantive use of mailing evidence incorrectly"}
13. pick_rates: {B:48,A:30,D:12,C:10,label:"predicted"}
14. dominant_trap: {choice: A, rationale: "students often convert permissive inferences into mandatory findings", mold: "EAR_OVERCLAIM"}
15. bank_validation_verdict: PASS
16. program_routing: ["review_cards","drills","misconceptions"]
17. notes: "Authority: FRE 301. Recommend attorney confirm state mailbox presumptions if migrating to state-law practice questions."

---

c3_annotation
{
  "transformed_from": 17015,
  "analyzer_notes": {
    "drift_audit": "no drift; preserved civil posture and burden issue",
    "letter_map": {"A":"A","B":"B","C":"C","D":"D"},
    "dominant_trap": "A"
  },
  "gold_keys": ["FRE 301: civil presumptions and permissive inferences"],
  "silver_keys": ["proof_of_mailing","presumption_vs_inference","jury_weighs_contrary_testimony"]
}

program_elements
{
  "question_id": "CQ17015",
  "subject": "EVIDENCE",
  "outline_code": "31010103",
  "difficulty": "Core",
  "official_key": "B",
  "choices": {
    "A": {"text": "The jury must find the reminder was received because mailing was proven.", "mold_code": "EAR_OVERCLAIM", "filter": "NOT_TRUE", "method_class": "anchor_assisted"},
    "B": {"text": "The jury may infer receipt from the mailing evidence but must decide receipt after considering Aaron's denial.", "mold_code": "correct_answer", "filter": "", "method_class": "heuristic_structural"},
    "C": {"text": "The jury may consider the mailing evidence only if Lydia introduces every other letter sent to Aaron that month.", "mold_code": "EAR_DISTORTION", "filter": "NOT_RESPONSIVE", "method_class": "pure_anchor"},
    "D": {"text": "The jury may consider the reminder only to impeach Aaron's denial, not as evidence of receipt.", "mold_code": "EAR_FALSITY", "filter": "NOT_TRUE", "method_class": "anchor_assisted"}
  },
  "pick_rates": {"B":48,"A":30,"D":12,"C":10,"label":"predicted"},
  "dominant_trap": "A",
  "bank_validation_verdict": "PASS",
  "confidence": "HEURISTIC_STRUCTURAL"
}

program_intelligence
{
  "component_routing": ["review_cards","drills","misconceptions"],
  "red_zone_dimensions": ["presumption_scope","jury_factfinding"],
  "trap_tags": ["conclusive_presumption_myth","mailbox_confusion"],
  "teaching_notes": "Emphasize difference between permissive inference and conclusive presumption; cover how contrary testimony affects the inference.",
  "citation_summaries": [
    {"rule":"FRE 301","cite":"Federal Rule of Evidence 301","point":"Presumptions in civil cases and effect on burden and jury findings"}
  ]
}

--- End of file ---

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

When proof of mailing is introduced in a civil case, does the jury have to find receipt, or may it infer receipt but weigh contrary testimony?

### 99. Final answer choices

See the preserved final answer choices above.

### 99. Possible replacement answer choices

No replacement answer choices are supplied in this repair-normalized file.

### 99. Correct answer

B

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
  qid: "CQ17015"
  question_id: "CQ17015"
  subject: "EVIDENCE"
  topic: "UNKNOWN"
  subtopic: "PRESENTATION_OF_EVIDENCE"
  outline_code: "31010103"
  official_key: "B"
transform_provenance:
  transformed_from: "17015"
  variant_slug: "17015"
  original_key_letter: "B"
  new_key_letter: "B"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "UNKNOWN"
  case_study_verdict: "UNKNOWN"
  confidence: "UNKNOWN"
  residual: "B"
distilled_core_question: "When proof of mailing is introduced in a civil case, does the jury have to find receipt, or may it infer receipt but weigh contrary testimony?"
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question CQ17015; source 17015.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject EVIDENCE; topic UNKNOWN; subtopic PRESENTATION_OF_EVIDENCE.
4. **distilled_core_question:** When proof of mailing is introduced in a civil case, does the jury have to find receipt, or may it infer receipt but weigh contrary testimony?
5. **call_and_prediction:** Credited answer: B.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 31010103.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** B
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 31010103.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "CQ17015",
  "subject": "EVIDENCE",
  "credited_answer": "B",
  "outline_code": "31010103",
  "distilled_core_question": "When proof of mailing is introduced in a civil case, does the jury have to find receipt, or may it infer receipt but weigh contrary testimony?",
  "review_truth": "Review truth not available in source file.",
  "c3": {
    "verdict": "UNKNOWN",
    "residual": "B",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 17015; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "CQ17015",
  "subject": "EVIDENCE",
  "outline_code": "31010103",
  "distilled_core_question": "When proof of mailing is introduced in a civil case, does the jury have to find receipt, or may it infer receipt but weigh contrary testimony?",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-17015",
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
  "question_id": "CQ17015",
  "subject": "EVIDENCE",
  "outline_code": "31010103",
  "distilled_core_question": "When proof of mailing is introduced in a civil case, does the jury have to find receipt, or may it infer receipt but weigh contrary testimony?",
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
    "placement": "31010103",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
