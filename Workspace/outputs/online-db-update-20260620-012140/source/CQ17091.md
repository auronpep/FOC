---
qid: "CQ17091"
transformed_from: "17091"
subject: "EVIDENCE"
topic: "UNKNOWN"
subtopic: "PRESENTATION_OF_EVIDENCE"
outline_code: "31010405"
key: "C"
original_key: "C"
letter_map: "see Letter Map section"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
Final Question:
Ruth sues David after a collision, claiming the crash caused continuing shoulder pain. Ruth offers her testimony that she had never experienced shoulder pain before the collision. David objects that Ruth is not a medical expert and that other events after the crash could have caused the pain. Assuming Ruth has personal knowledge of her prior condition, how should the court rule?

Distilled Core Question:
Is a lay witness's testimony about her lack of prior pain relevant at threshold to support causation, or does admissibility require expert proof or exclusion for alternative causes?

Final Choices (post-shuffle):
A. Exclude the testimony, because only a medical expert may testify about whether an accident caused pain.
B. Exclude the testimony, because later events could have caused the pain.
C. Admit the testimony, because the absence of prior shoulder pain has some tendency to support causation, even if it does not prove medical causation by itself.  (Correct)
D. Admit the testimony only if Ruth first proves by clear and convincing evidence that she had no prior shoulder pain.

Correct answer with original key letter:
C (original key preserved)

Letter Map:
Original→Post-shuffle: A→A | B→B | C→C (correct) | D→D
Dominant trap: A — students import expert-proof requirement into relevance. Mold: EAR_OVERCLAIM / fabricated_rule.

Right-answer explanation:
Under FRE 401–402, testimony that a plaintiff lacked prior shoulder pain is relevant because it makes causation more probable. Whether the testimony proves medical causation is a merits question; lack of medical expertise and possible alternative causes affect weight and need for additional proof, not threshold admissibility.

Wrong-answer explanations:
A: Wrong — lay testimony about one's own prior condition is admissible as relevant perception evidence; expert proof is not required to establish the fact of prior absence of pain. (Mold: EAR_OVERCLAIM; Filter: NOT_TRUE)
B: Wrong — alternative causes affect weight and the need for additional evidence, but do not render the testimony irrelevant at threshold. (Mold: EAR_FALSITY; Filter: NOT_TRUE)
D: Wrong — relevance does not require clear-and-convincing proof before admission; the standard suggested is misplaced. (Mold: EAR_DISTORTION; Filter: NOT_RESPONSIVE)

Pick-rate seeding (predicted):
C: 56% (predicted)
A: 24% (predicted)
B: 12% (predicted)
D: 8% (predicted)

Black-letter verification with authority:
- FRE 401 (relevant evidence) and FRE 402 (general admissibility): a fact is relevant if it makes a consequential fact more or less probable. Plaintiff's testimony about prior lack of pain bears on causation and is therefore admissible unless excluded by another rule.

Rigor / Difficulty Note:
Difficulty: Core. Teaches relevance threshold vs. sufficiency/expert-proof for causation.

C3 CUT→CLASH→CALL:
CUT: Plaintiff offers lay testimony of no prior shoulder pain.
CLASH: Is that testimony inadmissible because expert proof or exclusion for alternative causes is required?
CALL: Admit as relevant under FRE 401–402; resolve alternate-cause/sufficiency issues at weight/merits. Choose C.

--- PASS-2: Question YAML ---
question_id: CQ17091
outline_code: "31010405"
subject: EVIDENCE
subtopic: PRESENTATION_OF_EVIDENCE
difficulty: Core
stem: |
  Ruth sues David after a collision, claiming continuing shoulder pain. Ruth testifies she never experienced shoulder pain before the collision. David objects that Ruth is not a medical expert and that later events could have caused the pain. Assuming Ruth has personal knowledge of her prior condition, how should the court rule?
choices:
  A: "Exclude the testimony, because only a medical expert may testify about whether an accident caused pain."
  B: "Exclude the testimony, because later events could have caused the pain."
  C: "Admit the testimony, because the absence of prior shoulder pain has some tendency to support causation, even if it does not prove medical causation by itself."  # correct
  D: "Admit the testimony only if Ruth first proves by clear and convincing evidence that she had no prior shoulder pain."
official_key: C
original_key: C

--- c3_annotation
{
  "transformed_from": 17091,
  "analyzer_notes": "drift_audit: no drift; preserved plaintiff posture and relevance focus; letter_map: {A:A,B:B,C:C,D:D}; dominant_trap: A",
  "gold_keys": ["FRE 401: relevance"]
}

--- program_elements
{
  "question_id": "CQ17091",
  "subject": "EVIDENCE",
  "outline_code": "31010405",
  "difficulty": "Core",
  "official_key": "C",
  "choices": {
    "A": {"text": "Exclude the testimony, because only a medical expert may testify about whether an accident caused pain.", "mold_code": "EAR_OVERCLAIM", "filter": "NOT_TRUE", "method_class": "anchor_assisted"},
    "B": {"text": "Exclude the testimony, because later events could have caused the pain.", "mold_code": "EAR_FALSITY", "filter": "NOT_TRUE", "method_class": "anchor_assisted"},
    "C": {"text": "Admit the testimony, because the absence of prior shoulder pain has some tendency to support causation, even if it does not prove medical causation by itself.", "mold_code": "correct_answer", "filter": "", "method_class": "heuristic_structural"},
    "D": {"text": "Admit the testimony only if Ruth first proves by clear and convincing evidence that she had no prior shoulder pain.", "mold_code": "EAR_DISTORTION", "filter": "NOT_RESPONSIVE", "method_class": "pure_anchor"}
  },
  "pick_rates": {"C":56,"A":24,"B":12,"D":8,"label":"predicted"},
  "dominant_trap": "A",
  "bank_validation_verdict": "PASS",
  "confidence": "HEURISTIC_STRUCTURAL"
}

--- program_intelligence
{
  "component_routing": ["review_cards","misconceptions","drills"],
  "red_zone_dimensions": ["relevance_threshold","causation_vs_weight"],
  "trap_tags": ["expertification_myth","sufficiency_confusion"],
  "teaching_notes": "Stress that personal-knowledge testimony about prior condition is relevant to causation; deficits in medical proof go to weight and may require experts later.",
  "citation_summaries": [
    {"rule":"FRE 401","cite":"Federal Rule of Evidence 401","point":"Relevant evidence makes a consequential fact more or less probable"}
  ]
}

--- End of file ---

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

Is a lay witness's testimony about her lack of prior pain relevant at threshold to support causation, or does admissibility require expert proof or exclusion for alternative causes?

### 99. Final answer choices

See the preserved final answer choices above.

### 99. Possible replacement answer choices

No replacement answer choices are supplied in this repair-normalized file.

### 99. Correct answer

C

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
  qid: "CQ17091"
  question_id: "CQ17091"
  subject: "EVIDENCE"
  topic: "UNKNOWN"
  subtopic: "PRESENTATION_OF_EVIDENCE"
  outline_code: "31010405"
  official_key: "C"
transform_provenance:
  transformed_from: "17091"
  variant_slug: "17091"
  original_key_letter: "C"
  new_key_letter: "C"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "UNKNOWN"
  case_study_verdict: "UNKNOWN"
  confidence: "UNKNOWN"
  residual: "C"
distilled_core_question: "Is a lay witness's testimony about her lack of prior pain relevant at threshold to support causation, or does admissibility require expert proof or exclusion for alternative causes?"
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question CQ17091; source 17091.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject EVIDENCE; topic UNKNOWN; subtopic PRESENTATION_OF_EVIDENCE.
4. **distilled_core_question:** Is a lay witness's testimony about her lack of prior pain relevant at threshold to support causation, or does admissibility require expert proof or exclusion for alternative causes?
5. **call_and_prediction:** Credited answer: C.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 31010405.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** C
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 31010405.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "CQ17091",
  "subject": "EVIDENCE",
  "credited_answer": "C",
  "outline_code": "31010405",
  "distilled_core_question": "Is a lay witness's testimony about her lack of prior pain relevant at threshold to support causation, or does admissibility require expert proof or exclusion for alternative causes?",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 17091; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "CQ17091",
  "subject": "EVIDENCE",
  "outline_code": "31010405",
  "distilled_core_question": "Is a lay witness's testimony about her lack of prior pain relevant at threshold to support causation, or does admissibility require expert proof or exclusion for alternative causes?",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-17091",
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
  "question_id": "CQ17091",
  "subject": "EVIDENCE",
  "outline_code": "31010405",
  "distilled_core_question": "Is a lay witness's testimony about her lack of prior pain relevant at threshold to support causation, or does admissibility require expert proof or exclusion for alternative causes?",
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
    "placement": "31010405",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
