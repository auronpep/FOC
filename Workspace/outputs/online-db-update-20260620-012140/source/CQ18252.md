---
qid: "CQ18252"
transformed_from: "18252"
subject: "EVIDENCE"
topic: "UNKNOWN"
subtopic: "PRESENTATION_OF_EVIDENCE"
outline_code: "31010403"
key: "B"
original_key: "B"
letter_map: "see Letter Map section"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
Final Question:
In a federal negligence trial, Abigail testifies that she stood on the sidewalk and watched Simon's car pass the crosswalk just before the collision. Abigail is not a police officer or accident-reconstruction expert. Leah asks Abigail, “About how fast was Simon's car going?” Simon objects that Abigail is not qualified as an expert. How should the court rule?

Distilled Core Question:
May a lay witness give a speed estimate based on ordinary perception, or is expert qualification required?

Final Choices (post-shuffle):
A. Sustain the objection because only an expert may estimate the speed of a moving car.
B. Overrule the objection if Abigail's estimate is rationally based on what she personally observed and would help the jury.  (Correct)
C. Sustain the objection because speed is an ultimate issue for the jury.
D. Overrule the objection only if Abigail first states the exact number of seconds the car was in her view.

Correct answer with original key letter:
B (original key preserved)

Letter Map:
Original→Post-shuffle: A→A | B→B (correct) | C→C | D→D
Dominant trap: A — students often assume technical matters (like speed) require expert testimony. Preserve A's mechanic as EAR_OVERCLAIM / fabricated_rule.

Right-answer explanation:
Under Federal Rule of Evidence 701, a lay witness may give an opinion that is rationally based on the witness's perception and helpful to clearly understanding the witness's testimony or determining a fact in issue. Estimating a car's speed from personal observation is a proper lay opinion; weaknesses in precision go to weight, not admissibility.

Wrong-answer explanations:
A: Incorrect — FRE 701 allows lay opinion based on perception; estimation of speed may be admissible without expert qualification. (Mold: EAR_OVERCLAIM / fabricated_rule; Filter: NOT_TRUE)
C: Incorrect — While the jury decides ultimate issues, an admissible lay opinion relevant to that issue is not barred for speaking to an ultimate issue. (Mold: EAR_FALSITY / flat_misstatement; Filter: NOT_TRUE)
D: Incorrect — The witness need not provide stopwatch precision before offering an admissible lay estimate; lack of precision affects credibility and weight. (Mold: EAR_DISTORTION / misfit; Filter: NOT_RESPONSIVE)

Pick-rate seeding (no measured focus-group rates supplied — all `predicted`):
B (Correct): 54% (predicted)
A: 28% (predicted) — Dominant trap
C: 10% (predicted)
D: 8% (predicted)

Black-letter verification with authority (authority floor):
- Federal Rule of Evidence 701 (Lay Opinion Testimony): permits lay opinion grounded in perception and helpful to the jury. Advisory Committee Notes explain that ordinary perception-based estimates (speed, distance, apparent traits) are classic lay opinions.
- Related practice references: FRE 701 advisory committee note; state variations may apply — flag for attorney review if migrating to state-law materials.

Rigor / Difficulty Note:
Difficulty: Core
Teaching focus: distinction between expert versus lay opinion; admissibility vs. weight; what constitutes perception-based foundation.

C3 CUT → CLASH → CALL walkthrough:
CUT: Lay witness observed a passing car and is asked to estimate speed.
CLASH: Is the question admissible lay opinion (FRE 701) or an expert-only estimation requiring specialized knowledge? 
CALL: If the estimate is rationally based on the witness's perception and would help the jury, overrule the objection — Answer B.

Divergence Audit (one-sentence stem summaries):
- Original stem: Lay observer watched car pass and asked approximate speed; objection that witness is not an expert.
- Transformed stem (C3 variant): Same posture preserved; clarified focus on FRE 701 permissive lay-perception standard.
Divergence score: Low — doctrine preserved; context unchanged.

Review Truth (student-facing rule sentence):
A non-expert witness may give an opinion estimate of speed if it is rationally based on the witness’s perception and would help the jury; precision problems affect weight, not admissibility.

Five-variation table (brief, divergence scores — 0–10):
1) Ask about distance rather than speed (same rule): divergence 2
2) Make witness a trained driver or officer (reduces need to analyze FRE 701 vs 702): divergence 3
3) Change to an expert witness objection where specialized measurement required (increases divergence): divergence 6
4) Add measurement device evidence contradicting lay estimate (changes factual weight): divergence 4
5) Convert to hearsay issue (different doctrine): divergence 8

--- PASS-2: Question YAML ---
question_id: CQ18252
outline_code: "31010403"
subject: EVIDENCE
subtopic: PRESENTATION_OF_EVIDENCE
difficulty: Core
stem: |
  In a federal negligence trial, Abigail testifies that she stood on the sidewalk and watched Simon's car pass the crosswalk just before the collision. Abigail is not a police officer or accident-reconstruction expert. Leah asks Abigail, “About how fast was Simon's car going?” Simon objects that Abigail is not qualified as an expert. How should the court rule?
choices:
  A: "Sustain the objection because only an expert may estimate the speed of a moving car."
  B: "Overrule the objection if Abigail's estimate is rationally based on what she personally observed and would help the jury."  # correct
  C: "Sustain the objection because speed is an ultimate issue for the jury."
  D: "Overrule the objection only if Abigail first states the exact number of seconds the car was in her view."
official_key: B
original_key: B
gold_keys:
  - type: rule
    value: "FRE 701: lay opinion based on perception"
silver_keys:
  - cut: "lay_perception_foundation"
  - clash: "expert_vs_lay_estimate"
  - call: "admit_if_rationally_based_and_helpful"
analyzer_notes: |
  drift_audit: no doctrinal drift; preserved trial posture. transformed_from: 18252. letter_map: {A:A, B:B, C:C, D:D}.

--- 17-section case study ---
1. case_study_id: CQ18252
2. transformed_from: 18252
3. stem_summary: Lay observer on sidewalk asked to estimate passing car's speed; objection that witness is not an expert.
4. posture: civil negligence trial; lay perception question; objection to lay opinion
5. governing_law_type: RULE
6. governing_doctrine: FRE 701 — lay opinion admissibility when rationally based on perception and helpful to jury
7. deciding_phase: CUT
8. cut_reasoning: Determine whether the testimony is ordinary perception or requires specialized knowledge
9. clash_options: ["exclude_as_expert_opinion","admit_as_lay_perception"]
10. call_application: Admit under FRE 701 if rationally based on perception and helpful to jury; weak precision affects weight
11. deciding_choice: B
12. distractor_analysis:
  A: {mold_code: "EAR_OVERCLAIM", filter: "NOT_TRUE", notes: "imposes expert-only requirement where lay opinion suffices"}
  C: {mold_code: "EAR_FALSITY", filter: "NOT_TRUE", notes: "confuses ultimate issue with admissibility bar"}
  D: {mold_code: "EAR_DISTORTION", filter: "NOT_RESPONSIVE", notes: "creates irrelevant precision requirement"}
13. pick_rates: {B:54,A:28,C:10,D:8,label:"predicted"}
14. dominant_trap: {choice: A, rationale: "students over-rely on expert-only intuition for technical-seeming questions", mold: "EAR_OVERCLAIM"}
15. bank_validation_verdict: PASS
16. program_routing: ["review_cards","drills","misconceptions"]
17. notes: "Authority: FRE 701; advisory committee notes explain ordinary-perception examples (speed, distance). Recommend attorney review for state-law variants."

---

c3_annotation
{
  "transformed_from": 18252,
  "analyzer_notes": {
    "drift_audit": "no drift; preserved lay-perception posture",
    "letter_map": {"A":"A","B":"B","C":"C","D":"D"},
    "dominant_trap": "A"
  },
  "gold_keys": ["FRE 701: lay opinion based on perception"],
  "silver_keys": ["lay_perception_foundation","expert_vs_lay_estimate","admit_if_rationally_based_and_helpful"]
}

program_elements
{
  "question_id": "CQ18252",
  "subject": "EVIDENCE",
  "outline_code": "31010403",
  "difficulty": "Core",
  "official_key": "B",
  "choices": {
    "A": {"text": "Sustain the objection because only an expert may estimate the speed of a moving car.", "mold_code": "EAR_OVERCLAIM", "filter": "NOT_TRUE", "method_class": "anchor_assisted"},
    "B": {"text": "Overrule the objection if Abigail's estimate is rationally based on what she personally observed and would help the jury.", "mold_code": "correct_answer", "filter": "", "method_class": "hard_structural"},
    "C": {"text": "Sustain the objection because speed is an ultimate issue for the jury.", "mold_code": "EAR_FALSITY", "filter": "NOT_TRUE", "method_class": "anchor_assisted"},
    "D": {"text": "Overrule the objection only if Abigail first states the exact number of seconds the car was in her view.", "mold_code": "EAR_DISTORTION", "filter": "NOT_RESPONSIVE", "method_class": "pure_anchor"}
  },
  "pick_rates": {"B":54,"A":28,"C":10,"D":8,"label":"predicted"},
  "dominant_trap": "A",
  "bank_validation_verdict": "PASS",
  "confidence": "HARD_STRUCTURAL"
}

program_intelligence
{
  "component_routing": ["review_cards","drills","misconceptions"],
  "red_zone_dimensions": ["expert_vs_lay","perception_foundation"],
  "trap_tags": ["expert_only_myth","precision_confusion"],
  "teaching_notes": "Cover FRE 701 and examples of ordinary perception (speed, distance); stress that lack of precision affects weight not admissibility.",
  "citation_summaries": [
    {"rule":"FRE 701","cite":"Federal Rule of Evidence 701","point":"Lay opinion admissible if rationally based on perception and helpful to the jury"}
  ]
}

--- End of file ---

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

May a lay witness give a speed estimate based on ordinary perception, or is expert qualification required?

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
  qid: "CQ18252"
  question_id: "CQ18252"
  subject: "EVIDENCE"
  topic: "UNKNOWN"
  subtopic: "PRESENTATION_OF_EVIDENCE"
  outline_code: "31010403"
  official_key: "B"
transform_provenance:
  transformed_from: "18252"
  variant_slug: "18252"
  original_key_letter: "B"
  new_key_letter: "B"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "UNKNOWN"
  case_study_verdict: "UNKNOWN"
  confidence: "UNKNOWN"
  residual: "B"
distilled_core_question: "May a lay witness give a speed estimate based on ordinary perception, or is expert qualification required?"
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question CQ18252; source 18252.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject EVIDENCE; topic UNKNOWN; subtopic PRESENTATION_OF_EVIDENCE.
4. **distilled_core_question:** May a lay witness give a speed estimate based on ordinary perception, or is expert qualification required?
5. **call_and_prediction:** Credited answer: B.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 31010403.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** B
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 31010403.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "CQ18252",
  "subject": "EVIDENCE",
  "credited_answer": "B",
  "outline_code": "31010403",
  "distilled_core_question": "May a lay witness give a speed estimate based on ordinary perception, or is expert qualification required?",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 18252; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "CQ18252",
  "subject": "EVIDENCE",
  "outline_code": "31010403",
  "distilled_core_question": "May a lay witness give a speed estimate based on ordinary perception, or is expert qualification required?",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-18252",
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
  "question_id": "CQ18252",
  "subject": "EVIDENCE",
  "outline_code": "31010403",
  "distilled_core_question": "May a lay witness give a speed estimate based on ordinary perception, or is expert qualification required?",
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
    "placement": "31010403",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
