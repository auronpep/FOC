---
qid: "14828"
transformed_from: "14828"
subject: "EVIDENCE"
topic: "UNKNOWN"
subtopic: "UNKNOWN"
outline_code: "31010103"
key: "D"
original_key: "UNKNOWN"
letter_map: "{ A: A, B: B, C: C, D: D }"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
# Finished CQ14828

---
Source: QBank 14828
Transformed from: 14828

FINAL QUESTION
A woman's car was set on fire by vandals. When she submitted a claim of loss for the car to her insurance company, the insurance company refused to pay, asserting that the woman's policy had lapsed due to the nonpayment of her premium. The woman sued the insurance company for breach of contract. At trial, the woman testified that she had, in a timely manner, placed a stamped, properly addressed envelope containing the premium payment in the outgoing mail bin at her office. The woman's secretary then testified that every afternoon at closing time he takes all outgoing mail in the bin to the post office. The insurance company later called its mail clerk to testify that he opens all incoming mail and that he did not receive the woman's premium payment. The woman and the insurance company have both moved for a directed verdict. For which party, if either, should the court direct a verdict?

DISTILLED CORE QUESTION
When a sender produces evidence of timely mailing and the recipient produces direct evidence of nonreceipt, does the presumption of receipt resolve the case such that a directed verdict is appropriate?

FINAL CHOICES (post-shuffle)
A. For the insurance company, because neither the woman nor her secretary has any personal knowledge that the envelope was delivered to the post office
B. For the insurance company, because the mail clerk's direct testimony negates the woman's circumstantial evidence
C. For the woman, because there is a presumption that an envelope properly addressed and stamped was received by the addressee
D. For neither the woman nor the insurance company, because under these circumstances the jury is responsible for determining whether the insurance company received the payment

CORRECT ANSWER WITH ORIGINAL KEY LETTER
D (original key preserved)

LETTER MAP
Original→Post-shuffle: A→A, B→B, C→C, D→D
Dominant trap (most attractive wrong answer): C (presumption of receipt resolves in favor of sender)

RIGHT-ANSWER EXPLANATION
D: The woman's evidence established a presumption that the properly addressed, stamped envelope was received. The insurance company's testimony that it did not receive the payment constitutes sufficient rebuttal to take the presumption out of the case. Once rebutted, the presumption no longer decides the issue and the factfinder must determine receipt; a directed verdict for either party would be improper.

WRONG-ANSWER EXPLANATIONS
A: Incorrect — Rule 301 permits a presumption of receipt from evidence of proper mailing; the sender need not have personal knowledge of delivery to trigger the presumption.
B: Incorrect — The mail clerk's testimony rebuts the presumption but does not automatically entitle the insurer to a directed verdict; it shifts the question to the factfinder.
C: Incorrect — Though a presumption of receipt arises from properly addressed, stamped mailing, the insurer produced evidence sufficient to rebut that presumption, so the issue is for the jury.

PICK-RATE (measured; inherited from source)
A: 1% (inherited)
B: 2% (inherited)
C: 19% (inherited)  <-- dominant trap
D: 78% (inherited)

BLACK-LETTER VERIFICATION (authority floor)
- Federal Rule of Evidence 301 (Presumptions in Civil Cases) — presumption from proof of mailing may be rebutted by contrary evidence, leaving the issue for the factfinder.
(Authority floor: rule number cited; no case law fabrication.)

RIGOR / DIFFICULTY NOTE
Difficulty: Core
Teaching focus: application of presumptions (Rule 301), rebuttal, and when presumptions remove an issue from the jury.

C3 CUT → CLASH → CALL WALKTHROUGH
CUT: The plaintiff produced evidence of timely, properly addressed, stamped mailing; initial presumption of receipt arose.
CLASH: The defendant's mail-clerk testimony directly denies receipt, challenging whether the presumption controls.
CALL: The insurer's rebuttal evidence removes the presumption and creates a factual dispute for the jury — no directed verdict.

DIVERGENCE AUDIT
Original stem one-sentence summary: "Plaintiff claims timely mailed premium payment; insurer's mail clerk testifies nonreceipt; both move for directed verdict — who prevails?"
Transformed stem one-sentence summary: "Properly addressed, stamped envelope mailed and office procedures shown; insurer's mail clerk denies receipt; presumption triggered then rebutted — is directed verdict appropriate?"
Divergence: minimal; preserved original facts and doctrinal posture.

REVIEW TRUTH (student-facing rule sentence)
Proof that an envelope was properly addressed, stamped, and mailed gives rise to a presumption of receipt, but that presumption can be rebutted by credible evidence of nonreceipt; once rebutted the issue is for the factfinder rather than decided as a matter of law.

5 VARIATIONS TABLE (brief; divergence scores 0.0–1.0)
1) Minimal rephrase (0.05): Keep facts and call closely aligned to original.
2) Emphasize office-mail-practices (0.20): Expand secretary's testimony to make the mailing chain more vivid.
3) Add insurer-mail-room detail (0.30): Add clerk's routine to heighten rebuttal — avoid adding new posture.
4) Swap remedy focus (0.40): Frame as estoppel or waiver (higher divergence — risk of altering doctrine).
5) Highlight presumption mechanics (0.15): Stress that presumption shifts burden but can be rebutted.

---

PASS-2: BLOCK 1 — QUESTION YAML
---
id: CQ14828
source_id: 14828
subject: EVIDENCE
outline_code: "31010103"
difficulty: Core
official_key: D
choices:
  A: "For the insurance company, because neither the woman nor her secretary has any personal knowledge that the envelope was delivered to the post office"
  B: "For the insurance company, because the mail clerk's direct testimony negates the woman's circumstantial evidence"
  C: "For the woman, because there is a presumption that an envelope properly addressed and stamped was received by the addressee"
  D: "For neither the woman nor the insurance company, because under these circumstances the jury is responsible for determining whether the insurance company received the payment"
letter_map: { A: A, B: B, C: C, D: D }
pick_rate_seed: { A: "1% (inherited)", B: "2% (inherited)", C: "19% (inherited)", D: "78% (inherited)" }
---

PASS-2: BLOCK 2 — 17-SECTION CASE STUDY
1. case_id: CQ14828
2. facts: "Vandalism destroyed plaintiff's car; plaintiff timely mailed premium payment in stamped, properly addressed envelope placed in office outgoing bin; secretary testifies he delivers outgoing mail to post office each day at closing; insurer's mail clerk testifies he opens incoming mail and did not receive payment. Both parties move for directed verdict."
3. procedural_history: "Contract suit for breach against insurer; trial motions for directed verdict by both parties following evidence."
4. issue: "Whether the presumption of receipt from evidence of proper mailing has been rebutted such that a directed verdict is improper."
5. applicable_law: "FRE 301 (Presumptions in Civil Cases)."
6. analysis_outline: "(a) presumption arises from proof of proper mailing; (b) burden shifts to recipient to rebut; (c) sufficiency of rebuttal evidence; (d) when issue goes to jury vs. decided as matter of law."
7. holding_summary: "Evidence that properly mailed payment was received is presumptive, but credible nonreceipt evidence rebuts the presumption and leaves receipt for the jury."
8. reasoning: "The plaintiff's proof of mailing triggers the presumption of receipt; the insurer's direct testimony of nonreceipt rebuts that presumption. Because both parties presented conflicting evidence, reasonable minds could differ and the factfinder must resolve receipt."
9. teaching_points: "Distinguish triggering a presumption from establishing the underlying fact; show that rebuttal evidence can return the question to the jury; directed verdict appropriate only when evidence is legally insufficient."
10. distractor_mechanics:
   - A: "narrow-knowledge requirement" (misstates presumption trigger)
   - B: "negation-by-clerk" (mistakenly elevates clerk testimony to dispositive proof)
   - C: "presumption-wins" (assumes presumption conclusively resolves the issue)
11. correct_choice_rationale: "D — both sides produced sufficient evidence to create a factual dispute; the jury must decide receipt."
12. remediation_items: "Practice Rule 301 flow: trigger → shift burden → rebuttal → jury question."
13. anchor_points: "proper mailing proof; secretary's routine; clerk's nonreceipt testimony; standard for directed verdict."
14. common_student_errors: "Believing presumptions decide the case once triggered; conflating burden-shifting with conclusive proof."
15. assessment_use: "Use as a diagnostic on presumptions, burden-shifting, and directed-verdict standards."
16. component_routing: ["review_cards","drills","trap_forensics"]
17. verdict: "C3_SOLVE"

---

PASS-2: BLOCK 3 — c3_annotation
c3_annotation:
{
  "id": "CQ14828",
  "transformed_from": "14828",
  "official_key": "D",
  "gold_keys": ["rule"],
  "silver_keys": ["call"],
  "deciding_phase": "CALL",
  "method_class": "hard_structural",
  "confidence": "HARD_STRUCTURAL",
  "letter_map": {"A":"A","B":"B","C":"C","D":"D"},
  "dominant_trap": "C",
  "pick_rate_seed": {"A":1,"B":2,"C":19,"D":78},
  "analyzer_notes": {
    "drift_audit": "minimal (preserved original facts; no new posture added)",
    "transformed_from": "14828",
    "letter_map": {"A":"A","B":"B","C":"C","D":"D"}
  }
}

---

PASS-2: BLOCK 4 — program_elements
program_elements:
{
  "id": "CQ14828",
  "subject": "EVIDENCE",
  "outline_code": "31010103",
  "difficulty": "Core",
  "destination_keys": ["review_cards","drills","trap_forensics"],
  "component_tags": ["presumption","Rule301","rebuttal","directed_verdict"]
}

---

PASS-2: BLOCK 5 — program_intelligence
program_intelligence:
{
  "id": "CQ14828",
  "official_key": "D",
  "gold_keys": ["rule"],
  "silver_keys": ["call"],
  "bank_validation_verdict": "PASS",
  "confidence": "HARD_STRUCTURAL",
  "recommended_drills": ["presumption_flow","directed_verdict_practice"],
  "analyzer_notes": {
    "drift_audit": "minimal",
    "transformed_from": "14828",
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

D

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
  qid: "14828"
  question_id: "14828"
  subject: "EVIDENCE"
  topic: "UNKNOWN"
  subtopic: "UNKNOWN"
  outline_code: "31010103"
  official_key: "D"
transform_provenance:
  transformed_from: "14828"
  variant_slug: "14828"
  original_key_letter: "UNKNOWN"
  new_key_letter: "D"
  letter_map: "{ A: A, B: B, C: C, D: D }"
c3_routing:
  bank_validation_verdict: "UNKNOWN"
  case_study_verdict: "UNKNOWN"
  confidence: "UNKNOWN"
  residual: "D"
distilled_core_question: "Distilled core question not available in source file."
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 14828; source 14828.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject EVIDENCE; topic UNKNOWN; subtopic UNKNOWN.
4. **distilled_core_question:** Distilled core question not available in source file.
5. **call_and_prediction:** Credited answer: D.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 31010103.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** D
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
  "question_id": "14828",
  "subject": "EVIDENCE",
  "credited_answer": "D",
  "outline_code": "31010103",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "c3": {
    "verdict": "UNKNOWN",
    "residual": "D",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 14828; letter_map: { A: A, B: B, C: C, D: D }",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "14828",
  "subject": "EVIDENCE",
  "outline_code": "31010103",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-14828",
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
  "question_id": "14828",
  "subject": "EVIDENCE",
  "outline_code": "31010103",
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
    "placement": "31010103",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
