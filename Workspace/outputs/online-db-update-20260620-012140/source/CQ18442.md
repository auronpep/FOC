---
qid: "18442"
transformed_from: "18442"
subject: "CRIMINAL"
topic: "Sixth Amendment"
subtopic: "Constitutional Protection of Accused Persons"
outline_code: "75090400"
key: "A"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "C"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "Review truth not available in source file."
---
### 1. Question YAML

```yaml
barmatrix_row:
  qid: "18442"
  internal_id: "CR-527"
  subject: "CRIMINAL"
  subject_display: "Criminal Law"
  topic: "Sixth Amendment"
  subtopic: "Constitutional Protection of Accused Persons"
  outline_code: "75090400"
  percent_correct:
    value: 60
    provenance: "source_row"
  selection_percentages:
    A:
      value: 60
      provenance: "source_row"
    B:
      value: 8
      provenance: "source_row"
    C:
      value: 24
      provenance: "source_row"
    D:
      value: 8
      provenance: "source_row"
  dominant_trap: "C"
  official_key: "A"
  question: "At arraignment on a felony charge, Dana appears without counsel. The judge asks for a plea. Dana, not understanding available defenses, pleads guilty. The court never obtains a waiver of counsel. Dana later challenges the plea. What is Dana's strongest Sixth Amendment argument?"
  call: "What is Dana's strongest Sixth Amendment argument?"
  choices:
    A: "Arraignment was a critical stage because Dana entered a guilty plea, and she had no counsel or valid waiver"
    B: "Arraignment can never be a critical stage because no witnesses testify"
    C: "The plea is valid because counsel is required only at trial"
    D: "The plea is valid if the prosecutor was not in the courtroom"
  correct_answer_explanation: "A stage where the defendant enters a plea and important rights may be lost is critical. The absence of counsel or waiver creates a strong Sixth Amendment problem."
  wrong_answer_explanations:
    B: "A stage can be critical even without witnesses if rights are affected or a plea is entered."
    C: "The Sixth Amendment protects critical pretrial stages after attachment as well."
    D: "The critical-stage analysis turns on the defendant's rights and the formal proceeding, not just prosecutor presence."
  additional_info: "Arraignment is a critical stage when important rights may be lost or pleas entered; an uncounseled plea at arraignment can violate the Sixth Amendment absent valid waiver."
  lb_rule_reference: "Arraignment is a critical stage when important rights may be lost or pleas entered; an uncounseled plea at arraignment can violate the Sixth Amendment absent valid waiver."
  lb_student_diagnostic: null

source_stack:
  - "BarMatrix row 18442 from MBE.xlsx"
  - "Criminal LAw.xlsx row 250 for pick rates and dominant trap"
  - "Official correct-answer and wrong-answer explanations"
  - "Additional black-letter rule reference"
  - "Controlled vocabularies"
  - "OUTLINE_CODES_COMPLETE.md, verified code 75090400"
  - "C3 Lessons 1, 2, 4, 7, 8, 12, 13, 14"
  - "C3 Master Deck CRIM-08 as partial Sixth Amendment anchor"
  - "Lawyer confirmation: Hamilton v. Alabama, White v. Maryland, Rothgery v. Gillespie County"

student_access_contract:
  controlling_test: "Could a smart 10-year-old with only C3 lessons, overlays, and taught tiny anchors identify the choice problem without outside doctrine?"
  access_level: "anchor_assisted"
  allowed_moves:
    - "TRUE and RESPONSIVE"
    - "CUT before CLASH before CALL"
    - "Ear overclaim: tiered_absolute"
    - "Ear overclaim: fabricated_rule"
    - "Gold Key: arraignment with a plea or possible loss of rights is a critical stage"
    - "Silver Key: do not answer arraignment in the abstract; ask what happened at that proceeding"
  forbidden_moves:
    - "Do not call the credited answer hard structural."
    - "Do not teach a full Sixth Amendment outline."
    - "Do not make prosecutor presence or witness testimony the dispositive axis."
    - "Keep case authority in lawyer_confirmation only."

stem_parse:
  accused: "Dana"
  criminal_posture: "felony arraignment"
  counsel_fact: "Dana appeared without counsel."
  court_action: "The judge asked Dana for a plea."
  defendant_action: "Dana pleaded guilty."
  understanding_fact: "Dana did not understand available defenses."
  waiver_fact: "The court never obtained a waiver of counsel."
  later_action: "Dana later challenged the plea."
  call_type: "strongest Sixth Amendment argument"
  negative_stem_inversion: false
  adjacent_call_traps:
    - "Whether witnesses testified"
    - "Whether counsel is needed only at trial"
    - "Whether the prosecutor was physically present"
  prediction: "Dana's best argument is that this arraignment was a critical stage because she entered a guilty plea without counsel or a valid waiver."

trigger_facts:
  - fact: "Dana was at arraignment on a felony charge."
    access_label: "student_visible"
    role: "formal proceeding / Sixth Amendment setting"
  - fact: "The judge asked for a plea."
    access_label: "student_visible"
    role: "critical-stage signal"
  - fact: "Dana pleaded guilty."
    access_label: "student_visible"
    role: "dispositive critical-stage fact"
  - fact: "Dana did not understand available defenses."
    access_label: "student_visible"
    role: "rights-at-risk signal"
  - fact: "Dana had no counsel."
    access_label: "student_visible"
    role: "Sixth Amendment violation signal"
  - fact: "The court never obtained a waiver of counsel."
    access_label: "student_visible"
    role: "no-waiver signal"

c3_routing:
  subject_fit: "Criminal Procedure = accused-rights posture + stage/status gate."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  method_class: "anchor_assisted"
  confidence: "ANCHOR_ASSISTED"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "A"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: null
  confidence_band: "anchor-assisted high confidence"

answer_array:
  architecture: "One fact-engaged critical-stage answer versus three adjacent-frame validity answers."
  geometry: "A is the only answer that uses the plea, no-counsel, and no-waiver facts. B, C, and D each invent a limiting condition."
  dominant_trap: "C"
  dominant_trap_reason: "C sells the common myth that Sixth Amendment counsel is a trial-only right."
  tension_axis: "critical stage with counsel required versus noncritical or trial-only proceeding"
  gold_key_ref: "GK-CRIMINAL-CRITICAL-STAGE-ARRAIGNMENT-01"
  silver_key_ref: "SK-CRIMINAL-ARRAIGNMENT-FACTS-01"

choice_walkthroughs:
  A:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "critical-stage survivor"
    c3_signal: "A uses all three load-bearing facts: plea entered, no counsel, no waiver."
    lawyer_confirmation: "An arraignment or comparable formal proceeding is critical when important rights may be lost or a plea is entered. A guilty plea without counsel or valid waiver creates the Sixth Amendment problem."
  B:
    filter_broken: "NOT_TRUE"
    mold_code: "tiered_absolute"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "overbroad_rule"
      - "common_student_myth"
      - "sounds_lawyerly"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "no-witnesses absolute"
    c3_signal: "The word 'never' overclaims. The stem gives a plea and rights-at-risk facts, not a witness-testimony question."
    lawyer_confirmation: "A proceeding can be critical even without witness testimony when rights are affected or a plea is entered."
  C:
    filter_broken: "NOT_TRUE"
    mold_code: "tiered_absolute"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "overbroad_rule"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "trial-only myth"
    c3_signal: "The word 'only' overclaims. The question is not limited to trial; it asks about an arraignment where a guilty plea was entered."
    lawyer_confirmation: "The Sixth Amendment right to counsel applies at critical pretrial stages after formal proceedings begin, not only at trial."
  D:
    filter_broken: "NOT_TRUE"
    mold_code: "fabricated_rule"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "wrong_party"
      - "fact_not_in_evidence"
      - "sounds_lawyerly"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "prosecutor-presence invented condition"
    c3_signal: "D changes the axis. The stem asks about Dana's counsel and waiver, not whether the prosecutor stood in the room."
    lawyer_confirmation: "Prosecutor presence is not the controlling condition for Sixth Amendment attachment or critical-stage analysis."

residual_answer:
  answer: "A"
  why_survives: "It is the only answer that connects the proceeding to the plea, the absence of counsel, and the absence of waiver."
  confidence_band: "ANCHOR_ASSISTED"
  student_script: "Arraignment with a guilty plea is a critical stage. Dana had no counsel and no valid waiver. Pick A."

legal_leak_audit:
  student_accessible_claims:
    - claim: "A is fact-engaged because it uses plea, no counsel, and no waiver."
      access: "passes via call/fact relation"
    - claim: "B overclaims with 'never.'"
      access: "passes via Ear overclaim plus Gold Key"
    - claim: "C overclaims with 'only at trial.'"
      access: "passes via Ear overclaim plus Gold Key"
    - claim: "D invents prosecutor presence as a condition."
      access: "passes via fabricated-rule mold plus Gold Key"
  lawyer_only_claims:
    - claim: "Hamilton v. Alabama and White v. Maryland support the critical-stage plea/arraignment rule."
      quarantine: "lawyer_confirmation only"
    - claim: "Rothgery rejects prosecutor involvement as necessary for attachment."
      quarantine: "lawyer_confirmation only"
  drift_audit: "This item is not hard structural. It is anchor-assisted because students need the critical-stage counsel anchor."

gold_keys:
  - id: "GK-CRIMINAL-CRITICAL-STAGE-ARRAIGNMENT-01"
    statement: "An arraignment or comparable formal proceeding is a critical stage when the defendant enters a plea or may lose important rights. If the defendant has no counsel and no valid waiver at that stage, the Sixth Amendment argument is strong."
    type: "constitutional_principle"
    unlocks: "trial-only, no-witnesses, and prosecutor-presence traps"
    trigger: "arraignment or pretrial hearing plus guilty plea, lost defenses, no counsel, or no waiver"
    tested_choice: "A"
    authority: "Hamilton v. Alabama; White v. Maryland; Rothgery v. Gillespie County"
    last_minute_review: true

silver_keys:
  - id: "SK-CRIMINAL-ARRAIGNMENT-FACTS-01"
    statement: "Do not answer 'arraignment' in the abstract. Ask what happened there: if the defendant entered a plea or could lose defenses, those facts make the proceeding dangerous enough to matter."
    type: "trap_spotting"
    navigates: "the no-witnesses and trial-only distractors"
    trigger: "the stem says the judge asked for a plea and the defendant pleaded guilty"
    tested_choice: "C"
    outline_code: "75090400"
    last_minute_review: true

remediation:
  card_id: "REM-CRIM-CRITICAL-STAGE-ARRAIGNMENT-01"
  title: "Arraignment Can Be Critical"
  signal: "A defendant enters a plea or may lose defenses at arraignment."
  student_move: "Treat the proceeding as a critical-stage candidate before asking about trial."
  tiny_rule: "Counsel is required at critical stages unless validly waived."
  trap: "Trial-only or witness-only reasoning."
  confidence: "ANCHOR_ASSISTED"

case_study_output:
  final_student_script: "This is not a trial-only question. Dana entered a guilty plea at arraignment, had no counsel, and gave no valid waiver. That is the strongest Sixth Amendment argument. A."
  residual: "A"
  verdict: "ANCHOR_SOLVE"

quality_control:
  qid_consistent: true
  official_key_consistent: true
  outline_code_verified: true
  controlled_vocab_checked: true
  pass_requirements_met: true
  three_single_filter_distractors: true
  legal_leak_audit_complete: true
  bank_validation_verdict: "PASS"

analytics_hooks:
  dominant_trap_choice: "C"
  dominant_trap_pct: 24
  percent_correct: 60
  primary_component: "Sixth Amendment critical-stage counsel"
  drill_family: "critical stage versus trial-only myth"
  review_queue: false
```

### 2. The 15-section student case study

## program_frame

This is a Criminal Procedure / Sixth Amendment item. The array is built around one trap: students know counsel matters at trial, but forget that counsel can also be required before trial when the proceeding is a **critical stage**.

## student_access_test

This item is **anchor-assisted**. A student can hear the overclaims in B and C, and can see that D changes the frame, but the final move needs a tiny anchor: **an arraignment where the defendant enters a plea or may lose important rights is a critical stage.**

## question_data

**Question 18442.** Dana appears at arraignment on a felony charge without counsel. The judge asks for a plea. Dana does not understand available defenses and pleads guilty. The court never obtains a waiver of counsel. Dana later challenges the plea.

**Call:** What is Dana’s strongest Sixth Amendment argument?

**Choices:**

A. Arraignment was a critical stage because Dana entered a guilty plea, and she had no counsel or valid waiver
B. Arraignment can never be a critical stage because no witnesses testify
C. The plea is valid because counsel is required only at trial
D. The plea is valid if the prosecutor was not in the courtroom

**Official key:** A.

## call_and_prediction

The call asks for Dana’s **strongest Sixth Amendment argument**, not whether witnesses testified, not whether the case had reached trial, and not whether a prosecutor was present.

Prediction: **Dana argues the arraignment was a critical stage because she entered a guilty plea without counsel and without a valid waiver.**

## trigger_facts

The load-bearing facts are narrow:

* **Felony arraignment**: formal criminal proceeding.
* **Judge asked for a plea**: not a passive scheduling event.
* **Dana pleaded guilty**: major rights affected.
* **Dana did not understand defenses**: shows why counsel mattered.
* **No counsel**: the Sixth Amendment problem.
* **No waiver**: the state cannot save the uncounseled plea through waiver.

## governing_c3_lane

**Lane:** Criminal Procedure = accused-rights posture + stage/status gate.

Run the question as a status check:

1. Has the case reached a counsel-sensitive stage?
2. Did counsel appear?
3. Did Dana validly waive counsel?

The answer is yes, no, no. That points to A.

## choice_by_choice_walkthrough

### A

**(1) Student-accessible C3 signal:** A uses all the facts that matter: arraignment, guilty plea, no counsel, and no waiver.

**(2) Student label:** Critical-stage survivor.

**(3) What a true/responsive version would look like:** This is already the true and responsive version.

**(4) Lawyer confirmation:** Arraignment can be a critical stage when rights may be lost, and a guilty plea taken without counsel is the classic danger. *Hamilton* treats arraignment as critical where available defenses or objections may be lost; *White* treats a guilty plea entered without counsel at a preliminary hearing as critical because counsel was needed for the accused to know defenses and plead intelligently. ([Justia Law][1])

### B

**(1) Student-accessible C3 signal:** “Can never” is the overclaim. The answer tries to make witness testimony the trigger, but the stem’s trigger is the guilty plea.

**(2) Student label:** No-witnesses absolute.

**(3) What a true/responsive version would look like:** “A proceeding is not critical merely because it is called an arraignment; it becomes critical when important rights may be lost or a plea is entered.”

**(4) Lawyer confirmation:** Witness testimony is not required for a critical stage. *Hamilton* focuses on rights and defenses that can be lost at arraignment, and *White* focuses on the uncounseled entry of a plea. ([Justia Law][1])

### C

**(1) Student-accessible C3 signal:** “Only at trial” is the dominant trap. It sounds simple, but it ignores the plea and no-waiver facts.

**(2) Student label:** Trial-only myth.

**(3) What a true/responsive version would look like:** “Counsel is required at trial and at critical pretrial stages after formal proceedings begin.”

**(4) Lawyer confirmation:** The Sixth Amendment right is not trial-only. Formal judicial proceedings can trigger the right, and the critical-stage inquiry asks whether counsel is needed to protect the accused at that stage. ([Justia Law][2])

### D

**(1) Student-accessible C3 signal:** D swaps in a new condition: prosecutor presence. The stem did not make that fact important.

**(2) Student label:** Prosecutor-presence invented condition.

**(3) What a true/responsive version would look like:** “The critical-stage issue turns on Dana’s rights at the formal proceeding, not on whether the prosecutor was physically present.”

**(4) Lawyer confirmation:** *Rothgery* rejects prosecutor involvement as a requirement for Sixth Amendment attachment at an initial judicial appearance; the focus is the formal accusation and liberty restriction, not the prosecutor’s physical participation. ([Justia Law][2])

## residual_answer

A survives the Cut. It is the only choice that is both true and responsive to the call.

## legal_leak_audit

This is not a hard structural item. A student cannot derive the critical-stage rule from grammar alone. The student-facing path is legitimate only after the Gold Key is taught.

Student-accessible claims:

* A is fact-engaged: plea, no counsel, no waiver.
* B and C overclaim through “never” and “only.”
* D invents a condition that the call does not support.

Lawyer-only claims:

* The authority line comes from Sixth Amendment critical-stage doctrine.
* The case-law confirmation belongs in lawyer confirmation, not the student’s first-pass reasoning.

Drift audit: Do not pretend the whole item is pure C3. The teachable move is anchor-assisted: learn the critical-stage plea anchor, then use C3 to cut the adjacent-frame traps.

## final_student_script

Counsel is not only for trial. Dana entered a guilty plea at arraignment. She had no counsel and no valid waiver. That makes the strongest Sixth Amendment argument A.

## remediation_card

**Card:** REM-CRIM-CRITICAL-STAGE-ARRAIGNMENT-01
**Signal:** A defendant enters a plea or may lose defenses at arraignment.
**Student move:** Treat the proceeding as a critical-stage candidate.
**Tiny rule:** Counsel is required at critical stages unless validly waived.
**Trap:** “No witnesses” and “only at trial.”
**Confidence:** ANCHOR_ASSISTED.

## qa_checklist

* The call is about Dana’s strongest Sixth Amendment argument.
* The deciding fact is not witness testimony.
* The deciding fact is not prosecutor presence.
* The deciding fact is Dana’s guilty plea at arraignment.
* The no-counsel and no-waiver facts are both used.
* The residual answer matches the official key.

## wrong_answer_recovery_paths

**B recovery:** You stopped at “no witnesses.” Recover by asking whether rights were affected. Dana entered a guilty plea.

**C recovery:** You treated counsel as trial-only. Recover by adding the critical-stage anchor.

**D recovery:** You made the prosecutor the actor. Recover by returning to Dana’s rights at the formal proceeding.

## outline_mastery_map

**Placement:** 75090400 — Sixth Amendment—Other Rights of the Accused > Right to Counsel.

**This item teaches:** Counsel can be required at a critical pretrial stage, including an arraignment or comparable proceeding where a plea is entered or important rights may be lost.

**Adjacent mastery:** Attachment of the Sixth Amendment right; valid waiver; critical stage; distinction from Fifth Amendment Miranda counsel.

## crossover_intersection_map

This item crosses with Civ Pro-style gate thinking: status first, merits later. Before asking whether Dana’s plea was factually accurate, ask whether the proceeding had the procedural status that required counsel.

It also crosses with C3 overclaim detection. “Never” and “only” are dangerous when the rule has an exception or a critical-stage category.

### 3. c3_annotation

```json
{
  "question_id": "18442",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "75090400",
  "distilled_core_question": "A defendant pleads guilty at arraignment without counsel and without a valid waiver. What is the strongest Sixth Amendment argument?",
  "review_truth": "An arraignment or comparable formal proceeding where the defendant enters a plea or may lose important rights is a critical stage, and counsel is required absent a valid waiver.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "A",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "ANCHOR_ASSISTED",
    "tension_axis": "critical stage with counsel required versus trial-only or noncritical proceeding",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": null,
    "difficulty": null,
    "dominant_trap": {
      "choice": "C",
      "focus_group_pct": 24,
      "why": "It sells the trial-only counsel myth."
    },
    "distractors": [
      {
        "choice": "B",
        "filter_broken": "NOT_TRUE",
        "mold": "tiered_absolute",
        "architecture": "wrong_frame",
        "card_ref": "GK-CRIMINAL-CRITICAL-STAGE-ARRAIGNMENT-01",
        "explanation": "The answer overclaims with 'can never' and makes witness testimony the trigger even though the stem gives a guilty plea and rights-at-risk facts."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_TRUE",
        "mold": "tiered_absolute",
        "architecture": "wrong_frame",
        "card_ref": "GK-CRIMINAL-CRITICAL-STAGE-ARRAIGNMENT-01",
        "explanation": "The answer overclaims with 'only at trial' and ignores critical pretrial stages."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_TRUE",
        "mold": "fabricated_rule",
        "architecture": "wrong_frame",
        "card_ref": "GK-CRIMINAL-CRITICAL-STAGE-ARRAIGNMENT-01",
        "explanation": "The answer invents prosecutor presence as a validity condition and does not respond to counsel or waiver."
      }
    ],
    "analyzer_notes": "drift_audit: anchor-assisted, not hard structural; transformed_from: none; letter_map: original A=A, B=B, C=C, D=D; source_row: 18442; pass: residual equals official key and three distractors each break exactly one filter.",
    "gold_keys": [
      {
        "id": "GK-CRIMINAL-CRITICAL-STAGE-ARRAIGNMENT-01",
        "statement": "An arraignment or comparable formal proceeding is a critical stage when the defendant enters a plea or may lose important rights. If the defendant has no counsel and no valid waiver at that stage, the Sixth Amendment argument is strong.",
        "type": "constitutional_principle",
        "unlocks": "trial-only, no-witnesses, and prosecutor-presence traps",
        "trigger": "arraignment or pretrial hearing plus guilty plea, lost defenses, no counsel, or no waiver",
        "tested_choice": "A",
        "authority": "Hamilton v. Alabama; White v. Maryland; Rothgery v. Gillespie County",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CRIMINAL-ARRAIGNMENT-FACTS-01",
        "statement": "Do not answer 'arraignment' in the abstract. Ask what happened there: if the defendant entered a plea or could lose defenses, those facts make the proceeding dangerous enough to matter.",
        "type": "trap_spotting",
        "navigates": "the no-witnesses and trial-only distractors",
        "trigger": "the stem says the judge asked for a plea and the defendant pleaded guilty",
        "tested_choice": "C",
        "outline_code": "75090400",
        "last_minute_review": true
      }
    ]
  }
}
```

### 4. program_elements

```json
{
  "question_id": "18442",
  "subject": "CRIMINAL",
  "outline_code": "75090400",
  "distilled_core_question": "A defendant pleads guilty at arraignment without counsel and without a valid waiver. What is the strongest Sixth Amendment argument?",
  "review_truth": "An arraignment or comparable formal proceeding where the defendant enters a plea or may lose important rights is a critical stage, and counsel is required absent a valid waiver.",
  "tension": {
    "axis": "critical stage versus trial-only or administrative-stage framing",
    "splitting_fact": "Dana entered a guilty plea at arraignment without counsel or waiver.",
    "resolution": "The proceeding was a critical stage for Sixth Amendment purposes."
  },
  "traps": [
    {
      "choice": "B",
      "mold": "tiered_absolute",
      "architecture": "wrong_frame",
      "why_attractive": "It sounds procedural because no witness testimony happened. The breaker is that witness testimony is not the trigger when the defendant enters a plea and rights are at risk.",
      "focus_group_pct": 8,
      "pct_provenance": "source_row"
    },
    {
      "choice": "C",
      "mold": "tiered_absolute",
      "architecture": "wrong_frame",
      "why_attractive": "It sells the common student myth that Sixth Amendment counsel matters only at trial. The breaker is that critical pretrial stages also require counsel absent valid waiver.",
      "focus_group_pct": 24,
      "pct_provenance": "source_row"
    },
    {
      "choice": "D",
      "mold": "fabricated_rule",
      "architecture": "wrong_frame",
      "why_attractive": "It sounds formal because it focuses on courtroom actors and the prosecutor. The breaker is that the Sixth Amendment issue turns on Dana's rights at the formal proceeding, not the prosecutor's physical presence.",
      "focus_group_pct": 8,
      "pct_provenance": "source_row"
    }
  ],
  "remediation_card": {
    "card_id": "REM-CRIM-CRITICAL-STAGE-ARRAIGNMENT-01",
    "title": "Arraignment Can Be Critical",
    "signal": "A defendant enters a plea or may lose defenses at arraignment.",
    "student_move": "Treat the proceeding as a critical-stage candidate before asking whether trial has begun.",
    "tiny_rule": "Counsel is required at critical stages unless validly waived.",
    "trap": "Trial-only or witness-only reasoning.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "trial-only Sixth Amendment myth",
    "critical-stage recognition",
    "waiver omission",
    "wrong courtroom actor",
    "overclaim words: never and only"
  ]
}
```

### 5. program_intelligence

```json
{
  "question_id": "18442",
  "subject": "CRIMINAL",
  "outline_code": "75090400",
  "distilled_core_question": "A defendant pleads guilty at arraignment without counsel and without a valid waiver. What is the strongest Sixth Amendment argument?",
  "review_truth": "An arraignment or comparable formal proceeding where the defendant enters a plea or may lose important rights is a critical stage, and counsel is required absent a valid waiver.",
  "wrong_answer_paths": [
    {
      "choice": "B",
      "filter_broken": "NOT_TRUE",
      "mold": "tiered_absolute",
      "why_a_student_picks_this": "The student thinks a stage is critical only when evidence or witnesses are presented.",
      "skipped_move": "They skipped the plea and rights-at-risk facts.",
      "recovery_step": "Ask whether Dana did something legally dangerous at the proceeding. She pleaded guilty."
    },
    {
      "choice": "C",
      "filter_broken": "NOT_TRUE",
      "mold": "tiered_absolute",
      "why_a_student_picks_this": "The student remembers counsel at trial and turns that memory into an exclusive rule.",
      "skipped_move": "They skipped the critical-stage anchor.",
      "recovery_step": "Replace 'trial only' with 'trial plus critical pretrial stages after attachment.'"
    },
    {
      "choice": "D",
      "filter_broken": "NOT_TRUE",
      "mold": "fabricated_rule",
      "why_a_student_picks_this": "The student treats the prosecutor as the actor who makes a proceeding adversarial.",
      "skipped_move": "They skipped the formal proceeding and waiver facts.",
      "recovery_step": "Return to the defendant-side question: counsel, plea, and waiver."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "cut",
      "target_skill": "Detect trial-only overclaims",
      "prompt": "A defendant enters a plea at arraignment without counsel. Choice says counsel is required only at trial. Cut or keep?",
      "answer": "Cut. 'Only at trial' overclaims because critical pretrial stages can require counsel."
    },
    {
      "drill_type": "trap_spotting",
      "target_skill": "Critical-stage fact identification",
      "prompt": "Which fact matters more: no witnesses testified, or the defendant entered a guilty plea?",
      "answer": "The guilty plea matters because it makes the proceeding dangerous to the accused's rights."
    },
    {
      "drill_type": "answer_array",
      "target_skill": "Find the fact-engaged survivor",
      "prompt": "One answer uses plea, no counsel, and no waiver. The others discuss witnesses, trial, or prosecutor presence. Which survives?",
      "answer": "The plea/no-counsel/no-waiver answer survives."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "trial_only_myth",
      "critical_stage_blindness",
      "wrong_actor_focus",
      "absolute_language"
    ],
    "misconception_tags": [
      "counsel_required_only_at_trial",
      "critical_stage_requires_witnesses",
      "prosecutor_presence_controls"
    ]
  },
  "component_routing": [
    {
      "component": "Ear",
      "lesson": "Lesson 4",
      "use": "Cut 'never' and 'only' overclaims once the Gold Key shows the rule is not categorical."
    },
    {
      "component": "Issue-Sense",
      "lesson": "Lesson 7",
      "use": "Predict the call as a Sixth Amendment counsel-stage question before reading the answers."
    },
    {
      "component": "Anchor Deck",
      "lesson": "Lesson 12",
      "use": "Apply the critical-stage arraignment Gold Key."
    },
    {
      "component": "Calibration",
      "lesson": "Lesson 13",
      "use": "Treat as anchor-assisted, not hard structural."
    }
  ],
  "crossovers": [
    {
      "source": "Civil Procedure gate/status habit",
      "connection": "Status of the proceeding controls before any merits discussion."
    },
    {
      "source": "C3 overclaim detection",
      "connection": "The words 'never' and 'only' signal answers that may have over-compressed the rule."
    },
    {
      "source": "Criminal procedure accused-rights routing",
      "connection": "The right is asserted by a criminal defendant against the criminal process, so route to CRIMINAL, not general Constitutional Law."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-CRITICAL-STAGE-ARRAIGNMENT-01",
      "statement": "An arraignment or comparable formal proceeding is a critical stage when the defendant enters a plea or may lose important rights. If the defendant has no counsel and no valid waiver at that stage, the Sixth Amendment argument is strong.",
      "type": "constitutional_principle",
      "unlocks": "trial-only, no-witnesses, and prosecutor-presence traps",
      "trigger": "arraignment or pretrial hearing plus guilty plea, lost defenses, no counsel, or no waiver",
      "tested_choice": "A",
      "authority": "Hamilton v. Alabama; White v. Maryland; Rothgery v. Gillespie County",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-ARRAIGNMENT-FACTS-01",
      "statement": "Do not answer 'arraignment' in the abstract. Ask what happened there: if the defendant entered a plea or could lose defenses, those facts make the proceeding dangerous enough to matter.",
      "type": "trap_spotting",
      "navigates": "the no-witnesses and trial-only distractors",
      "trigger": "the stem says the judge asked for a plea and the defendant pleaded guilty",
      "tested_choice": "C",
      "outline_code": "75090400",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "75090400 — Sixth Amendment—Other Rights of the Accused > Right to Counsel",
    "this_item_teaches": "Counsel can be required at a critical pretrial stage, including an arraignment where a plea is entered or important rights may be lost.",
    "fills": [
      "Critical-stage recognition",
      "No-counsel plus no-waiver analysis",
      "Trial-only overclaim repair"
    ],
    "adjacent_to_master": [
      "Sixth Amendment attachment",
      "valid waiver of counsel",
      "Miranda/Fifth Amendment distinction",
      "post-charge offense-specific right to counsel"
    ]
  }
}
```

[1]: https://supreme.justia.com/cases/federal/us/368/52/?utm_source=chatgpt.com " Hamilton v. Alabama | 368 U.S. 52 (1961) | Justia U.S. Supreme Court Center"
[2]: https://supreme.justia.com/cases/federal/us/554/191/?utm_source=chatgpt.com " Rothgery v. Gillespie County | 554 U.S. 191 (2008) | Justia U.S. Supreme Court Center"

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
