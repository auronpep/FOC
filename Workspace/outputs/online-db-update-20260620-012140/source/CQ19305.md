---
qid: "19305"
transformed_from: "19305"
subject: "EVIDENCE"
topic: "UNKNOWN"
subtopic: "UNKNOWN"
outline_code: "31010403"
key: "A"
original_key: "UNKNOWN"
letter_map: "{ A: A, B: B, C: C, D: D }"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
# Finished CQ19305

---
Source: QBank 19305 (internal_id: presentation_questions_batch_015_D3_lay_opinion::r3::Q02)
Transformed from: 19305

FINAL QUESTION
In a federal battery trial, Ruth testifies that she spoke with Jonah at a restaurant shortly before the fight. Ruth says Jonah smelled strongly of wine, slurred his words, and stumbled into a chair. Ruth is asked whether Jonah appeared drunk. Jonah objects that the question calls for an opinion. How should the court rule?

DISTILLED CORE QUESTION
Is a lay witness permitted to state a perception-based opinion ("appeared drunk") when it is rationally based on her observations and helpful to the trier of fact?

FINAL CHOICES (post-shuffle)
A. Overrule the objection because the opinion is based on Ruth's perception and is helpful shorthand for her observations
B. Sustain the objection because a witness may testify only to raw facts and never to conclusions
C. Sustain the objection unless Ruth is a medical expert
D. Overrule the objection only if Ruth first proves Jonah's blood-alcohol level

CORRECT ANSWER WITH ORIGINAL KEY LETTER
A (original key preserved)

LETTER MAP
Original→Post-shuffle: A→A, B→B, C→C, D→D
Dominant trap (most attractive wrong answer): C (requirement of medical/expert proof)

RIGHT-ANSWER EXPLANATION
A: Under FRE 701, a lay witness may give an opinion that is rationally based on the witness's perception and helpful to understanding the testimony. Describing whether someone "appeared drunk" is a common perceptual shorthand (odor, speech, balance, coordination) and does not require expert testimony or chemical testing when offered as a lay observation.

WRONG-ANSWER EXPLANATIONS
B: Incorrect — FRE 701 allows certain lay opinions; witnesses need not be limited to isolated raw facts if the opinion is grounded in perception and helpfulness.
C: Incorrect — Ordinary appearance-based intoxication opinions do not require a medical or scientific expert; demanding an expert elevates the predicate beyond FRE 701's lay-opinion standard.
D: Incorrect — A blood-alcohol test is not a prerequisite to admitting a perceptual lay opinion about apparent intoxication; objective tests may be relevant but are not required to satisfy the lay-opinion predicate.

PICK-RATE SEED (no measured rates supplied — predicted)
A: 60% (predicted)
C: 20% (predicted)  <-- dominant trap
B: 12% (predicted)
D: 8% (predicted)

BLACK-LETTER VERIFICATION (authority floor)
- Federal Rule of Evidence 701 (Lay Opinion Testimony): lay opinions admissible if rationally based on perception and helpful to the trier of fact.
(Authority floor met; no fabricated cases cited.)

RIGOR / DIFFICULTY NOTE
Difficulty: Core
Teaching focus: FRE 701 predicate — perception and helpfulness; distinguishing lay shorthand from expert/chemical-proof requirements.

C3 CUT → CLASH → CALL WALKTHROUGH
CUT: Ruth's observations (odor, slurred speech, stumbling) form the perceptual basis.
CLASH: Objections claim either lay opinions are never allowed, or that expertise/scientific proof is required.
CALL: FRE 701 admits such lay shorthand when rationally based on perception and helpful — overrule the objection (A).

DIVERGENCE AUDIT
Original stem one-sentence summary: "Lay witness observed signs of intoxication and opined that defendant appeared drunk; defense objects to opinion — how should court rule?"
Transformed stem one-sentence summary: "Ruth observed odor, slurred speech, and stumbling before the fight and opined Jonah appeared drunk; defense objects on opinion/expert grounds — admit or exclude?"
Divergence: minimal; preserved original facts and doctrinal posture.

REVIEW TRUTH (student-facing rule sentence)
A lay witness may express an opinion based on personal perception if the opinion is rationally based on what the witness perceived and is helpful to the trier of fact; appearance-based intoxication opinions fit within that rule.

5 VARIATIONS TABLE (brief; divergence scores 0.0–1.0)
1) Minimal reword (0.05): Keep facts and call unchanged.
2) Emphasize sensory details (0.20): Add more descriptive sensory cues to make A more attractive.
3) Shorten observation window (0.30): State Ruth saw Jonah only briefly to make C/B more tempting.
4) Add medical testimony (0.40): Introduce an expert's testimony to shift dynamics (higher divergence).
5) Frame as homicide self-defense (0.25): Change contextual stakes slightly while keeping the evidentiary issue.

---

PASS-2: BLOCK 1 — QUESTION YAML
---
id: CQ19305
source_id: 19305
internal_id: "presentation_questions_batch_015_D3_lay_opinion::r3::Q02"
subject: EVIDENCE
outline_code: "31010403"
difficulty: Core
official_key: A
choices:
  A: "Overrule the objection because the opinion is based on Ruth's perception and is helpful shorthand for her observations"
  B: "Sustain the objection because a witness may testify only to raw facts and never to conclusions"
  C: "Sustain the objection unless Ruth is a medical expert"
  D: "Overrule the objection only if Ruth first proves Jonah's blood-alcohol level"
letter_map: { A: A, B: B, C: C, D: D }
pick_rate_seed: { A: "60% (predicted)", B: "12% (predicted)", C: "20% (predicted)", D: "8% (predicted)" }
---

PASS-2: BLOCK 2 — 17-SECTION CASE STUDY
1. case_id: CQ19305
2. facts: "Ruth spoke with Jonah shortly before a fight; Ruth observed strong odor of wine, slurred speech, and stumbling into a chair; Ruth was asked whether Jonah appeared drunk and defense objected to opinion testimony."
3. procedural_history: "Federal battery trial; evidentiary objection to lay-opinion testimony at trial."
4. issue: "Whether Ruth's appearance-based opinion about intoxication should be excluded as an improper lay opinion or admitted under FRE 701."
5. applicable_law: "FRE 701 (Lay Opinion Testimony)."
6. analysis_outline: "(a) FRE 701 predicate: perception and helpfulness; (b) whether sensory observations provide a rational basis; (c) distinction from expert testimony and chemical testing; (d) common student misconceptions."
7. holding_summary: "Appearance-based lay opinions grounded in perception are admissible when they meet the FRE 701 predicate; they do not require medical expertise or chemical testing."
8. reasoning: "The witness's sensory observations (odor, speech, balance) provide a rational basis for a lay opinion that the person appeared drunk; the opinion helps the jury and falls within FRE 701."
9. teaching_points: "Apply FRE 701 steps; contrast with expert testimony requirements; practice identifying adequate perception predicates."
10. distractor_mechanics:
   - B: "absolutist-fact-only myth"
   - C: "expert-requirement misconception" (dominant trap)
   - D: "scientific-proof over-demand"
11. correct_choice_rationale: "A — lay opinion based on perception is admissible and helpful; sensory observations suffice."
12. remediation_items: "Exercises on FRE 701 perception predicates and differentiating lay vs expert opinion."
13. anchor_points: "odor, slurred speech, stumbling; timing before fight; FRE 701 predicate."
14. common_student_errors: "Assuming lay opinions are forbidden; conflating lay-opinion with expert testimony requirements."
15. assessment_use: "Diagnostic for FRE 701 and perception-based lay opinions."
16. component_routing: ["review_cards","drills","trap_forensics"]
17. verdict: "C3_SOLVE"

---

PASS-2: BLOCK 3 — c3_annotation
c3_annotation:
{
  "id": "CQ19305",
  "transformed_from": "19305",
  "official_key": "A",
  "gold_keys": ["rule"],
  "silver_keys": ["call"],
  "deciding_phase": "CALL",
  "method_class": "hard_structural",
  "confidence": "HARD_STRUCTURAL",
  "letter_map": {"A":"A","B":"B","C":"C","D":"D"},
  "dominant_trap": "C",
  "pick_rate_seed": {"A":60,"B":12,"C":20,"D":8},
  "analyzer_notes": {
    "drift_audit": "minimal (preserved original facts; no new posture added)",
    "transformed_from": "19305",
    "letter_map": {"A":"A","B":"B","C":"C","D":"D"}
  }
}

---

PASS-2: BLOCK 4 — program_elements
program_elements:
{
  "id": "CQ19305",
  "subject": "EVIDENCE",
  "outline_code": "31010403",
  "difficulty": "Core",
  "destination_keys": ["review_cards","drills","trap_forensics"],
  "component_tags": ["FRE701","lay_opinion","perception","intoxication_appearance"]
}

---

PASS-2: BLOCK 5 — program_intelligence
program_intelligence:
{
  "id": "CQ19305",
  "official_key": "A",
  "gold_keys": ["rule"],
  "silver_keys": ["call"],
  "bank_validation_verdict": "PASS",
  "confidence": "HARD_STRUCTURAL",
  "recommended_drills": ["FRE701_perception_predicates","lay_vs_expert_opinion"],
  "analyzer_notes": {
    "drift_audit": "minimal",
    "transformed_from": "19305",
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

A

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
  qid: "19305"
  question_id: "19305"
  subject: "EVIDENCE"
  topic: "UNKNOWN"
  subtopic: "UNKNOWN"
  outline_code: "31010403"
  official_key: "A"
transform_provenance:
  transformed_from: "19305"
  variant_slug: "19305"
  original_key_letter: "UNKNOWN"
  new_key_letter: "A"
  letter_map: "{ A: A, B: B, C: C, D: D }"
c3_routing:
  bank_validation_verdict: "UNKNOWN"
  case_study_verdict: "UNKNOWN"
  confidence: "UNKNOWN"
  residual: "A"
distilled_core_question: "Distilled core question not available in source file."
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 19305; source 19305.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject EVIDENCE; topic UNKNOWN; subtopic UNKNOWN.
4. **distilled_core_question:** Distilled core question not available in source file.
5. **call_and_prediction:** Credited answer: A.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 31010403.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** A
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
  "question_id": "19305",
  "subject": "EVIDENCE",
  "credited_answer": "A",
  "outline_code": "31010403",
  "distilled_core_question": "Distilled core question not available in source file.",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 19305; letter_map: { A: A, B: B, C: C, D: D }",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "19305",
  "subject": "EVIDENCE",
  "outline_code": "31010403",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-19305",
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
  "question_id": "19305",
  "subject": "EVIDENCE",
  "outline_code": "31010403",
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
    "placement": "31010403",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
