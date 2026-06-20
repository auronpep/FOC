---
qid: "22266"
transformed_from: "22266"
subject: "EVIDENCE"
topic: "UNKNOWN"
subtopic: "UNKNOWN"
outline_code: "31010400"
key: "C"
original_key: "UNKNOWN"
letter_map: "{ A: A, B: B, C: C, D: D }"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
# Finished CQ22266

---
Source: QBank 22266
Transformed from: 22266

FINAL QUESTION
The plaintiff brought a negligence action against the defendant for personal injuries that the plaintiff sustained when she was struck by the defendant's car while she was a pedestrian. In defense, the defendant asserted that he was not negligent and that the plaintiff was contributorily negligent in that she was not in the area designated as a crosswalk at the time of the accident. The plaintiff's attorney called the witness as a witness on the plaintiff's behalf. The witness testified that she held a valid driver's license, that she had been driving an automobile for 40 years, that she had seen the defendant's car just before it struck the plaintiff, and that, in her opinion, it was moving at a speed in excess of the speed limit, 35 miles per hour. If the defendant's attorney objects to the witness's testimony regarding the speed of the defendant's vehicle, which of the following would be the most effective argument in support of that objection?

DISTILLED CORE QUESTION
Can a lay witness's opinion on a vehicle's speed be excluded because the witness lacked sufficient opportunity to perceive the speed, and is that the best basis for an objection here?

FINAL CHOICES (post-shuffle)
A. The witness did not qualify as an expert on the speed of a moving automobile
B. The witness's statement of opinion concerned an ultimate fact in the litigation
C. The witness did not have sufficient opportunity to form an opinion regarding the speed of the defendant's vehicle
D. The speed of the defendant's vehicle was a fact, and therefore it cannot be established by opinion evidence

CORRECT ANSWER WITH ORIGINAL KEY LETTER
C (original key preserved)

LETTER MAP
Original→Post-shuffle: A→A, B→B, C→C, D→D
Dominant trap (most attractive wrong answer): A (assume lay witness must be an expert)

RIGHT-ANSWER EXPLANATION
C: Lay-witness opinion testimony is admissible under FRE 701 when the opinion is rationally based on the witness's perception and helpful to understanding the testimony. The critical predicate is whether the witness had a sufficient opportunity to perceive the speed; here the witness saw the car only just before impact, suggesting inadequate opportunity to form a reliable opinion.

WRONG-ANSWER EXPLANATIONS
A: Incorrect — a lay witness need not be qualified as an expert to opine on matters within ordinary perception, such as apparent speed, if based on perception.
B: Incorrect — FRE 704 permits opinions that touch on ultimate issues; that alone is not a valid basis to exclude the testimony.
D: Incorrect — facts may be established by opinion evidence when circumstances make it impractical to testify to separate underlying facts; the mere fact that "speed" is a fact does not preclude admissible opinion testimony.

PICK-RATE SEED (no measured rates supplied — all predicted)
A: 25% (predicted)
B: 12% (predicted)
C: 48% (predicted)
D: 15% (predicted)

BLACK-LETTER VERIFICATION (authority floor)
- Federal Rule of Evidence 701 (Lay Opinion Testimony): lay opinions admissible if rationally based on perception and helpful to the jury.
- Federal Rule of Evidence 704 (Opinion on Ultimate Issue): opinion testimony is not objectionable merely because it embraces an ultimate issue.
(Authority floor met by rule citations; no cases fabricated.)

RIGOR / DIFFICULTY NOTE
Difficulty: Core
Teaching focus: FRE 701 predicate — perception and opportunity to form opinion; distinction from expert-opinion requirements and ultimate-issue rules.

C3 CUT → CLASH → CALL WALKTHROUGH
CUT: Witness with long driving experience claims to perceive speed just before collision.
CLASH: Objections available include lack of sufficient opportunity to perceive (governing), misclassification as needing expert, or ultimate-issue arguments.
CALL: The most effective objection is lack of sufficient opportunity to perceive (C); that predicate defeats the opinion's admissibility even though lay-opinion rule otherwise allows such testimony.

DIVERGENCE AUDIT
Original stem one-sentence summary: "Lay witness with driving experience saw car just before impact and opined it exceeded the speed limit; which objection to that opinion is most effective?"
Transformed stem one-sentence summary: "Lay witness with 40 years' driving experience saw defendant's car moments before impact and opined it exceeded 35 mph; is 'insufficient opportunity to perceive' the strongest objection?"
Divergence: minimal; preserved original facts and posture.

REVIEW TRUTH (student-facing rule sentence)
A lay witness may state an opinion based on perception if it is rationally based on what the witness perceived and helpful to the jury; lack of sufficient opportunity to perceive can render such opinion inadmissible.

5 VARIATIONS TABLE (brief; divergence scores 0.0–1.0)
1) Minimal rephrase (0.05): Keep facts and call intact.
2) Emphasize witness's driving experience (0.20): Boost credibility background to make A more tempting.
3) Shorten perception window (0.35): State witness saw the car only "instantly before impact" to stress C.
4) Add observed skidmarks (0.40): Introduce objective facts (higher divergence; avoid altering call).
5) Highlight FRE 704 trap (0.15): Focus distractor B as common misconception.

---

PASS-2: BLOCK 1 — QUESTION YAML
---
id: CQ22266
source_id: 22266
subject: EVIDENCE
outline_code: "31010400"
difficulty: Core
official_key: C
choices:
  A: "The witness did not qualify as an expert on the speed of a moving automobile"
  B: "The witness's statement of opinion concerned an ultimate fact in the litigation"
  C: "The witness did not have sufficient opportunity to form an opinion regarding the speed of the defendant's vehicle"
  D: "The speed of the defendant's vehicle was a fact, and therefore it cannot be established by opinion evidence"
letter_map: { A: A, B: B, C: C, D: D }
pick_rate_seed: { A: "25% (predicted)", B: "12% (predicted)", C: "48% (predicted)", D: "15% (predicted)" }
---

PASS-2: BLOCK 2 — 17-SECTION CASE STUDY
1. case_id: CQ22266
2. facts: "Plaintiff struck by defendant's car while a pedestrian; defendant claims contributory negligence. Plaintiff's witness (40 years' driving experience, valid license) saw car just before impact and opined it exceeded 35 mph. Defendant objects to opinion on speed."
3. procedural_history: "Negligence action; evidentiary objection to lay-opinion testimony at trial."
4. issue: "Whether the witness's opinion about vehicle speed should be excluded for lack of sufficient opportunity to perceive, or for other reasons."
5. applicable_law: "FRE 701 (lay opinion), FRE 704 (ultimate issue)."
6. analysis_outline: "(a) FRE 701 predicate: perception and helpfulness; (b) sufficiency of opportunity to perceive; (c) difference between lay and expert testimony; (d) ultimate-issue admissibility under FRE 704."
7. holding_summary: "Lay-opinion admissibility turns on whether the opinion is rationally based on perception and helpful; insufficient opportunity to perceive supports exclusion."
8. reasoning: "Even experienced drivers can offer lay opinions about speed when based on adequate perception; where perception opportunity is fleeting, the opinion may lack the necessary predicate and be excluded."
9. teaching_points: "Practice FRE 701 analysis: perception → rational basis → helpfulness; contrast with expert-opinion requirements and ultimate-issue rules."
10. distractor_mechanics:
   - A: "expert-requirement misconception"
   - B: "ultimate-issue prohibition myth"
   - D: "fact-vs-opinion technicalism"
11. correct_choice_rationale: "C — the admissibility hinge is sufficient opportunity to perceive; here the witness's brief observation undermines that predicate."
12. remediation_items: "Exercises distinguishing lay vs expert opinion, framing FRE 701 objections, and assessing perception opportunity."
13. anchor_points: "witness's driving experience; timing of observation; FRE 701 predicate; FRE 704 allowance for ultimate-issue opinions."
14. common_student_errors: "Assuming lay witnesses must be experts; assuming ultimate-issue rule bars opinion testimony."
15. assessment_use: "Diagnostic for FRE 701/704 and perception-based opinion evidence."
16. component_routing: ["review_cards","drills","trap_forensics"]
17. verdict: "C3_SOLVE"

---

PASS-2: BLOCK 3 — c3_annotation
c3_annotation:
{
  "id": "CQ22266",
  "transformed_from": "22266",
  "official_key": "C",
  "gold_keys": ["rule"],
  "silver_keys": ["call"],
  "deciding_phase": "CALL",
  "method_class": "hard_structural",
  "confidence": "HARD_STRUCTURAL",
  "letter_map": {"A":"A","B":"B","C":"C","D":"D"},
  "dominant_trap": "A",
  "pick_rate_seed": {"A":25,"B":12,"C":48,"D":15},
  "analyzer_notes": {
    "drift_audit": "minimal (preserved original facts; no new posture added)",
    "transformed_from": "22266",
    "letter_map": {"A":"A","B":"B","C":"C","D":"D"}
  }
}

---

PASS-2: BLOCK 4 — program_elements
program_elements:
{
  "id": "CQ22266",
  "subject": "EVIDENCE",
  "outline_code": "31010400",
  "difficulty": "Core",
  "destination_keys": ["review_cards","drills","trap_forensics"],
  "component_tags": ["FRE701","perception","lay_opinion","ultimate_issue"]
}

---

PASS-2: BLOCK 5 — program_intelligence
program_intelligence:
{
  "id": "CQ22266",
  "official_key": "C",
  "gold_keys": ["rule"],
  "silver_keys": ["call"],
  "bank_validation_verdict": "PASS",
  "confidence": "HARD_STRUCTURAL",
  "recommended_drills": ["lay_vs_expert_opinions","FRE701_perception_exercises"],
  "analyzer_notes": {
    "drift_audit": "minimal",
    "transformed_from": "22266",
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
  qid: "22266"
  question_id: "22266"
  subject: "EVIDENCE"
  topic: "UNKNOWN"
  subtopic: "UNKNOWN"
  outline_code: "31010400"
  official_key: "C"
transform_provenance:
  transformed_from: "22266"
  variant_slug: "22266"
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
1. **program_frame:** Question 22266; source 22266.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject EVIDENCE; topic UNKNOWN; subtopic UNKNOWN.
4. **distilled_core_question:** Distilled core question not available in source file.
5. **call_and_prediction:** Credited answer: C.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 31010400.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** C
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 31010400.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "22266",
  "subject": "EVIDENCE",
  "credited_answer": "C",
  "outline_code": "31010400",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 22266; letter_map: { A: A, B: B, C: C, D: D }",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "22266",
  "subject": "EVIDENCE",
  "outline_code": "31010400",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-22266",
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
  "question_id": "22266",
  "subject": "EVIDENCE",
  "outline_code": "31010400",
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
    "placement": "31010400",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
