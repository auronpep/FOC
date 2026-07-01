---
qid: "16169"
transformed_from: "16169"
subject: "CRIMINAL"
topic: "UNKNOWN"
subtopic: "Burglary"
outline_code: "73031000"
key: "A"
original_key: "A"
letter_map: "see Letter Map section"
dominant_trap: "UNKNOWN"
pick_rates: "A: {pct: 58, kind: \"predicted\"}"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
Pass-1 Transform Report — CQ16169

Distilled Core Question
What offenses (burglary, larceny, attempt, or none) has a nighttime lock-picker committed who took silverware, left, then returned and replaced it before arrest?

Final (transformed) question
A defendant, short of money, picked the lock of a neighbor's house at night while the homeowner was away. He took a chest of silverware from the dining room, carried it out to his car, but then changed his mind. He returned the chest to the dining room and left the house. Police arrested him as he exited a second time. The defendant is:

A. Guilty of burglary and larceny.
B. Guilty of burglary and attempted larceny.
C. Guilty of burglary but not guilty of any larceny offense.
D. Not guilty of burglary or any larceny offense.

Post-shuffle correct answer: A (same as source)
Original key: A
Letter map: {"A":"A","B":"B","C":"C","D":"D"}

Right-answer explanation (student-facing)
Choice A is correct. Burglary is complete when the defendant breaks and enters at night with intent to commit a felony inside; that intent was present at first entry. Larceny is the trespassory taking and carrying away of another's property with intent to steal; the taking and carrying away of the silverware satisfies larceny. Repudiation after completion (returning the property) does not negate completed crimes.

Wrong-answer explanations
B (attempted larceny): Incorrect — the defendant completed the trespassory taking and carrying away with intent to steal, so this is completed larceny, not merely an attempt.
C (burglary only): Incorrect — returning property after the completed taking does not erase the larceny once all elements were present during the taking.
D (not guilty): Incorrect — facts show completed burglary and completed larceny; renunciation after the acts does not erase criminal liability.

Black-letter verification (authority floor)
Common-law elements used: Burglary — breaking and entering of a dwelling at night with intent to commit a felony inside; Larceny — trespassory taking and carrying away of another's personal property with intent to steal. Note: jurisdictions vary on statutory burglary definitions and MPC formulations. Attorney review recommended to confirm jurisdictional code citations and any modern merger or single-exit rules. (attorney_review: true; reason: jurisdictional statutory variance for burglary/larceny definitions)

Rigor / difficulty note
Difficulty: Core (source). Rigor: doctrinal recognition and element application; tests student for distinction between inchoate/complete acts and the effect of renunciation.

Pick-rate seeding (no measured rates supplied)
A: 58% (predicted)
B: 12% (predicted)
C: 20% (predicted)  <-- dominant trap
D: 10% (predicted)
Dominant trap: C (mechanic: EAR_DISTORTION:half_truth; filter: NOT_TRUE) — students attracted to believing renunciation negates completed theft.

C3 CUT → CLASH → CALL walkthrough
CUT (what to notice): Nighttime breaking and entering, initial intent to steal, completed carrying away.
CLASH (what the options dispute): Whether return/repentance undoes completed crimes, and whether the taking was completed or merely attempted.
CALL (student-focusing question): Are both the burglary and the taking complete before the return?

Divergence audit (two one-sentence stem summaries)
Original-stem summary: Nighttime breaking/entering and completed taking followed by return; charged offenses include burglary and larceny.
Transformed-stem summary: Emphasize post-completion renunciation as red herring; preserve night, dwelling, lock-picking, completed carrying-away, and second exit arrest.

Five-variation table (titles + divergence score / 0-1)
1) Minimal-change (0.05): same facts, different object (jewelry instead of silverware).
2) Procedural-frame (0.25): defendant caught inside before leaving with property (focuses on asportation timing).
3) Moral-redemption variant (0.45): defendant returns property after being confronted by victim — tests victim condonation vs. completed crime.
4) Anchor-gap (0.70): entry made during daytime — probes statute vs. common-law night element.
5) High-divergence doctrinal swap (0.90): change to attempted burglary facts (removes completed taking) — tests attempt vs. completed crimes.

Pass-2 — Formal Blocks

---
Question YAML
---
- id: "CQ16169"
  source_qid: 16169
  transformed_title: "Burglary and Larceny: Does returning property erase completed crimes?"
  outline_code: "73031000"
  subject: "CRIMINAL"
  subtopic: "Burglary"
  difficulty: "Core"
  final_question_text: |
    A defendant, short of money, picked the lock of a neighbor's house at night while the homeowner was away. He took a chest of silverware from the dining room, carried it out to his car, then decided to return it. He reentered and replaced the chest, then left. Police arrested him as he exited a second time. The defendant is:
  choices:
    A: "Guilty of burglary and larceny."
    B: "Guilty of burglary and attempted larceny."
    C: "Guilty of burglary but not guilty of any larceny offense."
    D: "Not guilty of burglary or any larceny offense."
  official_key: "A"
  credited_answer: "A"
  pick_rates:
    A: {pct: 58, kind: "predicted"}
    B: {pct: 12, kind: "predicted"}
    C: {pct: 20, kind: "predicted"}
    D: {pct: 10, kind: "predicted"}

---
17-section case study
---
1. id: "CQ16169"
2. source_qid: 16169
3. stem_summary: "Nighttime lock-picking, completed taking of silverware, carriage to car, renunciation via return, second exit arrest."
4. facts: ["picked lock at night","dwelling house","removed silverware","carried to car","reentered and replaced","arrested on second exit"]
5. key_elements: ["breaking and entering","intent to commit felony at time of entry","trespassory taking","asportation","timing of renunciation"]
6. governing_law: "common-law burglary elements; common-law larceny elements (verify jurisdictional code)."
7. controlling_authority: null
8. attorney_review: true
9. law_notes: "Burglary commonly defined as breaking/entering dwelling at night with intent to commit felony; larceny requires trespassory taking and carrying away with intent to steal. Jurisdictions differ; MPC and statutes may recast burglary and theft offenses."
10. decision_tree: ["Did defendant break and enter? Y","Was intent to commit felony present at entry? Y","Did defendant take and carry away property? Y","Was taking undone by later return? N (renunciation post-completion doesn't erase completed crime)"]
11. wrong_answer_architecture:
    A: {role: "correct_answer"}
    B: {bait: "attempt_vs_completed", tags: ["attempt_confusion","bar_exam_bait"]}
    C: {mold_code: "EAR_DISTORTION", filter: "NOT_TRUE", tags: ["half_right_answer","renunciation_myth"]}
    D: {mold_code: "EAR_FALSITY", filter: "NOT_TRUE", tags: ["renunciation_negates_crime"]}
12. dominant_trap: {choice: "C", mold_code: "EAR_DISTORTION", filter: "NOT_TRUE", tag: "renunciation_myth"}
13. teaching_points: ["Distinguish inchoate vs completed offenses","Renunciation after completion rarely exculpates","Burglary and larceny elements differ and permit cumulative convictions"]
14. student_takeaway: "Returning property after completing a theft usually does not erase liability for the crime already completed."
15. suggested_drills: ["asportation timing items","attempt vs completed taking drills","jurisdictional statutory variants"]
16. crossovers: ["review_cards","trap_forensics","matrix"]
17. reviewer_notes: "Confirm statutory language in jurisdiction; add citation if statutory burglary replaces night/house requirement."

---
# c3_annotation
---
{
  "transformed_from": 16169,
  "analyzer_notes": {
    "drift_audit": "No doctrinal drift introduced; preserved actor, dwelling, night, lock-picking, carrying away. Red herring: renunciation after completion emphasized more to test misconception.",
    "transformed_from": 16169,
    "letter_map": {"A":"A","B":"B","C":"C","D":"D"}
  },
  "gold_keys": {
    "type": "rule",
    "value": "Completed burglary (breaking/entering at night with intent) and completed larceny (trespassory taking and asportation with intent)"
  },
  "silver_keys": {
    "type": "call",
    "value": "Does renunciation after the taking undo liability?"
  },
  "bank_validation_verdict": "PASS"
}

---
# program_elements
---
{
  "red_zone_dimensions": ["misconception_renunciation","asportation_timing","inchoate_vs_completed"],
  "outline_code": "73031000",
  "subject": "CRIMINAL",
  "difficulty": "Core",
  "dominant_trap": {
    "choice": "C",
    "mold_code": "EAR_DISTORTION",
    "filter": "NOT_TRUE"
  }
}

---
# program_intelligence
---
{
  "component_routing": [
    {"destination_key": "trap_forensics", "route": "/traps/CQ16169", "component_tags": ["renunciation_myth","half_right_answer"]},
    {"destination_key": "red_zones", "route": "/red-zones/renunciation", "component_tags": ["misconception_renunciation"]}
  ],
  "gold_keys": {
    "type": "rule",
    "value": "Completed burglary and completed larceny can both be charged where separate elements are met."
  },
  "silver_keys": {
    "type": "call",
    "value": "Identify whether renunciation after completion affects liability."
  },
  "recommended_drills": ["asportation_timing","attempt_vs_completed"]
}

---
QA gate checklist (summary)
- All Pass-1 items present: yes
- Pick rates seeded and dominant trap named: yes
- Controlled-vocabulary values used: subject=CRIMINAL, filters and mold codes from controlled_vocabularies.md
- JSON blocks labeled and parsable: yes (visual check; ensure machine parse before ingestion)
- authority floor: plain common-law statement provided; attorney_review=true to confirm statutory citations

analyzer_notes.final: "Ready for ingestion pending jurisdictional authority check. No invented cases or statutes. Follow-up: add precise statutory citations if target jurisdiction is specified."

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
  qid: "16169"
  question_id: "16169"
  subject: "CRIMINAL"
  topic: "UNKNOWN"
  subtopic: "Burglary"
  outline_code: "73031000"
  official_key: "A"
transform_provenance:
  transformed_from: "16169"
  variant_slug: "16169"
  original_key_letter: "A"
  new_key_letter: "A"
  letter_map: "see Letter Map section"
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
1. **program_frame:** Question 16169; source 16169.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic UNKNOWN; subtopic Burglary.
4. **distilled_core_question:** Distilled core question not available in source file.
5. **call_and_prediction:** Credited answer: A.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 73031000.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** A
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 73031000.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "16169",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "73031000",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 16169; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "16169",
  "subject": "CRIMINAL",
  "outline_code": "73031000",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-16169",
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
  "question_id": "16169",
  "subject": "CRIMINAL",
  "outline_code": "73031000",
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
    "placement": "73031000",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
