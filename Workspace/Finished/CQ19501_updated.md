---
qid: "CQ19501"
transformed_from: "19501"
subject: "CRIMINAL"
topic: "UNKNOWN"
subtopic: "FORGERY"
outline_code: "73030700"
key: "A"
original_key: "A"
letter_map: "see Letter Map section"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
Final Question:
After indictment for forgery, police obtain a court order requiring Mira to write sample signatures. No eyewitness is present. An expert later compares the samples to a forged check. Mira argues the expert comparison must be excluded because counsel was absent when the samples were taken. What is the best answer?

Distilled Core Question:
Does the Sixth Amendment right to counsel at post-indictment identifications (Wade/Gilbert line) require exclusion of handwriting exemplars taken after indictment when counsel was not present?

Final Choices (post-shuffle):
A. The counsel-at-lineup rule does not apply because this was physical exemplar collection, not a witness confrontation.  (Correct)
B. The evidence must be excluded because every identification-related procedure requires counsel after indictment.
C. The evidence must be excluded because handwriting is testimonial.
D. The evidence is admissible only if the expert was present when Mira was charged.

Correct answer with original key letter:
A (original key preserved)

Letter Map:
Original→Post-shuffle: A→A (correct) | B→B | C→C | D→D
Dominant trap: B (analytic: overbroad application of the counsel-at-lineup doctrine to all post-indictment evidence-gathering). Preserve B's mechanic as `EAR_OVERCLAIM: fabricated_rule`.

Right-answer explanation:
The Sixth Amendment right to counsel at post-indictment identification confrontations (United States v. Wade) protects presence at live witness confrontations likely to affect identification. Handwriting exemplars are physical exemplars and not a testimonial identification procedure; the Supreme Court in Gilbert v. California held that taking handwriting exemplars is not a critical stage requiring counsel and that exemplars reveal physical characteristics, not testimonial communication.

Wrong-answer explanations:
B: Overreads Wade—Wade protects post-indictment witness confrontations (lineups/showups) that risk tainting in-court IDs; it does not convert routine collection of physical exemplars into a counsel-protected lineup. (Mold: EAR_OVERCLAIM / fabricated_rule; Filter: NOT_TRUE)
C: Misstates the nature of handwriting exemplars—courts treat handwriting exemplars as physical characteristics, not testimonial statements invoking the Fifth Amendment's testimonial protection. (Mold: EAR_FALSITY / flat_misstatement; Filter: NOT_TRUE)
D: Reframes the problem into an irrelevant timing requirement—expert presence at charging is unrelated to the Sixth Amendment lineup doctrine. (Mold: ISSUE_SENSE / misfit; Filter: NOT_RESPONSIVE)

Pick-rate seeding (no measured focus-group rates supplied — all `predicted`):
A (Correct): 52% (predicted)
B: 26% (predicted) — Dominant trap
C: 12% (predicted)
D: 10% (predicted)

Black-letter verification with authority (authority floor):
- United States v. Wade, 388 U.S. 218 (1967) — Sixth Amendment right to counsel applies at post-indictment live identification confrontations (lineups) because those procedures risk unfairness and tainting of in-court identification.
- Gilbert v. California, 388 U.S. 263 (1967) — taking handwriting exemplars is not a "critical stage" requiring counsel and such exemplars reveal physical characteristics, not testimonial communications. See also Schmerber v. California, 384 U.S. 757 (1966) (distinguishing physical evidence from testimonial communication for Fifth Amendment purposes).
(References checked against primary sources; no citation inventing. Flag for attorney review only if bank key conflicted with primary authority.)

Rigor / Difficulty Note:
Difficulty: Core (source)
Teaching focus: recognition of scope of Wade/Gilbert and distinguishing testimonial vs. physical exemplars.

C3 CUT → CLASH → CALL walkthrough:
CUT: Post-indictment collection of handwriting exemplars.
CLASH: Does the Sixth Amendment counsel-at-lineup protection extend to this procedure? Wade protects live witness confrontations; exemplars are physical samples used for expert comparison.
CALL: Apply Gilbert—exemplars are physical, not testimonial; the procedure is not the critical-stage lineup protected by Wade. Answer A.

Divergence Audit (one-sentence stem summaries):
- Original stem: Post-indictment, police obtained court-ordered handwriting samples; expert compared them to a forged check; defendant claims expert comparison should be excluded because counsel was absent at sample collection.
- Transformed stem (C3 variant): Same posture and facts preserved; question reframed to stress constitutional doctrine boundary (lineup vs. exemplar) without adding new actors or remedies.
Divergence score: Low — intentional preservation of posture and key facts to keep the doctrinal test intact while clarifying the doctrinal friction point.

Review Truth (student-facing rule sentence):
The Sixth Amendment right to counsel at post-indictment identifications protects live witness confrontations likely to affect identification (Wade); routine collection of handwriting exemplars is a physical-evidence procedure and not a counsel-protected lineup (Gilbert).

Five-variation table (brief, divergence scores — 0–10):
1) Minimal rewrite (clarify wording): divergence 1 — low
2) Swap B/C distractors emphasis (emphasize testimonial confusion): divergence 3
3) Add a photo-array variant (would change doctrine significance): divergence 6 — not permitted here without new posture
4) Convert to fingerprint exemplar (same rule): divergence 2
5) Convert to voice exemplar (similar analysis): divergence 3

--- PASS-2: Question YAML (block)
---
question_id: CQ19501
outline_code: "73030700"
subject: CRIMINAL
subtopic: FORGERY
difficulty: Core
stem: |
  After indictment for forgery, police obtain a court order requiring Mira to write sample signatures. No eyewitness is present. An expert later compares the samples to a forged check. Mira argues the expert comparison must be excluded because counsel was absent when the samples were taken. What is the best answer?
choices:
  A: "The counsel-at-lineup rule does not apply because this was physical exemplar collection, not a witness confrontation."  # correct
  B: "The evidence must be excluded because every identification-related procedure requires counsel after indictment."
  C: "The evidence must be excluded because handwriting is testimonial."
  D: "The evidence is admissible only if the expert was present when Mira was charged."
official_key: A
original_key: A
gold_keys:
  - type: rule
    value: "Wade/Gilbert: lineup vs. exemplar distinction"
silver_keys:
  - cut: "post_indictment_physical_exemplar"
  - clash: "sixth_amendment_scope"
  - call: "exemplar_vs_identification"
analyzer_notes: |
  drift_audit: no doctrinal drift; preserved posture. transformed_from: 19501. letter_map: {A:A, B:B, C:C, D:D}.

--- 17-section case study (compact; required fields filled) ---
1. case_study_id: CQ19501
2. transformed_from: 19501
3. stem_summary: Post-indictment handwriting exemplars; expert comparison; counsel absent at collection.
4. posture: accused post-indictment; no eyewitness; court-ordered exemplar
5. governing_law_type: RULE
6. governing_doctrine: Sixth Amendment right to counsel at critical identification confrontations (Wade); distinction for physical exemplars (Gilbert)
7. deciding_phase: CUT
8. cut_reasoning: Identify whether procedure is an identification confrontation or physical exemplar collection
9. clash_options: ["apply_Wade_to_all_post_indictment_procedures", "treat_exemplars_as_physical_evidence"]
10. call_application: Apply Gilbert to hold exemplar collection not a critical stage
11. deciding_choice: A
12. distractor_analysis:
  B: {mold_code: "EAR_OVERCLAIM", filter: "NOT_TRUE", notes: "overbroad application of Wade"}
  C: {mold_code: "EAR_FALSITY", filter: "NOT_TRUE", notes: "misstates nature of handwriting exemplars"}
  D: {mold_code: "ISSUE_SENSE", filter: "NOT_RESPONSIVE", notes: "timing of expert presence irrelevant"}
13. pick_rates: {A: 52, B: 26, C: 12, D: 10, label: "predicted"}
14. dominant_trap: {choice: B, rationale: "overbroad line-up overreach is analytically attractive to students", mold: "EAR_OVERCLAIM"}
15. bank_validation_verdict: PASS
16. program_routing: ["review_cards","trap_forensics","outline_atlas"]
17. notes: "Authority: Wade (1967), Gilbert (1967). Recommend attorney confirm local variant law if state decisions differ."

---

c3_annotation
{
  "transformed_from": 19501,
  "analyzer_notes": {
    "drift_audit": "no drift; preserved defendant posture and facts; clarified doctrinal friction",
    "letter_map": {"A":"A","B":"B","C":"C","D":"D"},
    "dominant_trap": "B"
  },
  "gold_keys": ["Wade/Gilbert: lineup vs. exemplar distinction"],
  "silver_keys": ["post_indictment_physical_exemplar","sixth_amendment_scope","exemplar_vs_identification"]
}

program_elements
{
  "question_id": "CQ19501",
  "subject": "CRIMINAL",
  "outline_code": "73030700",
  "difficulty": "Core",
  "official_key": "A",
  "choices": {
    "A": {"text": "The counsel-at-lineup rule does not apply because this was physical exemplar collection, not a witness confrontation.", "mold_code": "correct_answer", "filter": "", "method_class": "hard_structural"},
    "B": {"text": "The evidence must be excluded because every identification-related procedure requires counsel after indictment.", "mold_code": "EAR_OVERCLAIM", "filter": "NOT_TRUE", "method_class": "anchor_assisted"},
    "C": {"text": "The evidence must be excluded because handwriting is testimonial.", "mold_code": "EAR_FALSITY", "filter": "NOT_TRUE", "method_class": "anchor_assisted"},
    "D": {"text": "The evidence is admissible only if the expert was present when Mira was charged.", "mold_code": "ISSUE_SENSE", "filter": "NOT_RESPONSIVE", "method_class": "pure_anchor"}
  },
  "pick_rates": {"A":52,"B":26,"C":12,"D":10,"label":"predicted"},
  "dominant_trap": "B",
  "bank_validation_verdict": "PASS",
  "confidence": "HARD_STRUCTURAL"
}

program_intelligence
{
  "component_routing": ["review_cards","trap_forensics","outline_atlas"],
  "red_zone_dimensions": ["identification_scope","procedural_stage"],
  "trap_tags": ["overbroad_wade","testimonial_confusion"],
  "teaching_notes": "Emphasize distinction between witness confrontations (Wade) and physical exemplar collection (Gilbert).",
  "citation_summaries": [
    {"case":"United States v. Wade","cite":"388 U.S. 218 (1967)","point":"right to counsel at post-indictment live identifications"},
    {"case":"Gilbert v. California","cite":"388 U.S. 263 (1967)","point":"handwriting exemplars are physical, not critical-stage identifications"}
  ]
}

--- End of file ---

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

Does the Sixth Amendment right to counsel at post-indictment identifications (Wade/Gilbert line) require exclusion of handwriting exemplars taken after indictment when counsel was not present?

### 99. Final answer choices

See the preserved final answer choices above.

### 99. Possible replacement answer choices

No replacement answer choices are supplied in this repair-normalized file.

### 99. Correct answer

A

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
  qid: "CQ19501"
  question_id: "CQ19501"
  subject: "CRIMINAL"
  topic: "UNKNOWN"
  subtopic: "FORGERY"
  outline_code: "73030700"
  official_key: "A"
transform_provenance:
  transformed_from: "19501"
  variant_slug: "19501"
  original_key_letter: "A"
  new_key_letter: "A"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "UNKNOWN"
  case_study_verdict: "UNKNOWN"
  confidence: "UNKNOWN"
  residual: "A"
distilled_core_question: "Does the Sixth Amendment right to counsel at post-indictment identifications (Wade/Gilbert line) require exclusion of handwriting exemplars taken after indictment when counsel was not present?"
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question CQ19501; source 19501.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic UNKNOWN; subtopic FORGERY.
4. **distilled_core_question:** Does the Sixth Amendment right to counsel at post-indictment identifications (Wade/Gilbert line) require exclusion of handwriting exemplars taken after indictment when counsel was not present?
5. **call_and_prediction:** Credited answer: A.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 73030700.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** A
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 73030700.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "CQ19501",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "73030700",
  "distilled_core_question": "Does the Sixth Amendment right to counsel at post-indictment identifications (Wade/Gilbert line) require exclusion of handwriting exemplars taken after indictment when counsel was not present?",
  "review_truth": "Review truth not available in source file.",
  "c3": {
    "verdict": "UNKNOWN",
    "residual": "A",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 19501; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "CQ19501",
  "subject": "CRIMINAL",
  "outline_code": "73030700",
  "distilled_core_question": "Does the Sixth Amendment right to counsel at post-indictment identifications (Wade/Gilbert line) require exclusion of handwriting exemplars taken after indictment when counsel was not present?",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-19501",
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
  "question_id": "CQ19501",
  "subject": "CRIMINAL",
  "outline_code": "73030700",
  "distilled_core_question": "Does the Sixth Amendment right to counsel at post-indictment identifications (Wade/Gilbert line) require exclusion of handwriting exemplars taken after indictment when counsel was not present?",
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
    "placement": "73030700",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
