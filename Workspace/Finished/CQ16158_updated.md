---
qid: "16158"
transformed_from: "16158"
subject: "CRIMINAL"
topic: "Other Crimes"
subtopic: "Larceny by trick"
outline_code: "73030200"
key: "B"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "C"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "Review truth not available in source file."
---
```yaml
barmatrix_row:
  qid: "16158"
  source_workbook: "MBE.xlsx; Criminal LAw.xlsx supplemental row"
  subject: "CRIMINAL"
  subject_display: "Criminal Law"
  topic: "Other Crimes"
  subtopic: "Larceny by trick"
  outline_code: "73030200"
  official_key: "B"
  most_popular_wrong_answer: "C"
  percent_correct: null
  selection_percentages:
    A: null
    B: null
    C: null
    D: null
  stem: "In which of the following situations is the defendant most likely to be guilty of the crime charged?"
  choices:
    A: "Without the permission of the owner, the defendant takes a car with the intention of driving it three miles to a grocery store and back. The defendant is charged with larceny."
    B: "The defendant gets permission to borrow a car for the evening by falsely promising to return it, although he does not intend to do so. Two days later, he changes his mind and returns the car to its owner. The defendant is charged with larceny by trick."
    C: "The defendant gets permission to borrow a car for the evening by misrepresenting his identity and falsely claiming he has a valid driver’s license. He returns the car the next day to the car’s owner. The defendant is charged with obtaining property by false pretenses."
    D: "With permission, the defendant, promising to return it by 9:00 p.m., borrows a car. Later in the evening, the defendant decides to keep the car until the next morning and does so. The defendant is charged with embezzlement."
  official_explanation_summary: "B is correct because possession was obtained by fraud and the defendant had intent to steal when he obtained possession. Later repentance does not undo the completed offense."

source_stack:
  - "BarMatrix row Q16158"
  - "Criminal LAw.xlsx supplemental row: most_popular_wrong_answer C"
  - "OUTLINE_CODES_COMPLETE.md: 73030200 Crimes against Property > Larceny by trick"
  - "C3 Lessons 1, 2, 7, 8, 9, 12, 13, 14"
  - "C3 Master Deck CRIM-02 property-crime taxonomy"
  - "Official explanation used only for lawyer confirmation"

student_access_contract:
  controlling_test: "Could a smart 10-year-old who completed only C3 lessons and the taught tiny anchors identify the choice's problem without outside doctrine?"
  allowed_lessons:
    - "TRUE and RESPONSIVE"
    - "CUT before CLASH before CALL"
    - "Issue-Sense: wrong_element"
    - "Issue-Sense: bait_doctrine"
    - "Rule-driven item: use tiny anchor; do not fake structure"
  allowed_tiny_anchors:
    - "Larceny requires intent to steal at the time of taking."
    - "Larceny by trick is possession obtained by deceit plus stealing intent."
    - "False pretenses requires title obtained by deceit."
    - "Embezzlement requires lawful possession plus serious conversion."
  forbidden_moves:
    - "Do not solve from moral blame alone."
    - "Do not call a property-crime distinction hard structural."
    - "Do not treat every dishonest borrowing as the charged offense."

stem_parse:
  call: "Which situation makes the defendant most likely guilty of the charged crime?"
  call_type: "positive best-situation selector"
  answer_format: "four separate scenario/charge pairings"
  legal_task: "Match the fact pattern to the charged property crime."
  negative_stem_inversion: false
  adjacent_call_traps:
    - "Which defendant behaved worst morally?"
    - "Which defendant lied?"
    - "Which defendant failed to return the car?"
  dispositive_frame: "property-crime element matching"

trigger_facts:
  - choice: "A"
    fact: "Defendant intends only a short round trip and return."
    access_label: "student_visible"
    role: "negates larceny intent-to-steal anchor"
  - choice: "B"
    fact: "Defendant falsely promises return while already intending not to return."
    access_label: "student_visible"
    role: "supports larceny-by-trick mental state at possession"
  - choice: "B"
    fact: "Defendant later changes his mind and returns the car."
    access_label: "student_visible"
    role: "repentance trap; later return does not undo completed offense"
  - choice: "C"
    fact: "Owner only lets defendant borrow the car."
    access_label: "student_visible"
    role: "possession only, not title"
  - choice: "D"
    fact: "Defendant keeps the borrowed car until the next morning."
    access_label: "student_visible"
    role: "not serious enough conversion for embezzlement"

c3_routing:
  subject_fit: "Criminal property-crime item = offense taxonomy + missing-element detection."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  method_class: "anchor_assisted"
  confidence: "ANCHOR_ASSISTED"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "B"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: null

answer_array:
  architecture: "four-scenario property-crime taxonomy"
  geometry: "Each choice pairs a car-borrowing fact pattern with a different property crime."
  dominant_trap: "C"
  why_dominant_trap_is_attractive: "C has a lie and a reliance-looking transfer, so students may over-select false pretenses without checking title."
  primary_axis: "Which property interest moved: trespassory taking, possession by fraud, title by fraud, or lawful possession plus conversion?"
  residual_answer: "B"

choice_walkthroughs:
  A:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "half_right_answer"
      - "wrong_mental_state"
      - "common_student_myth"
    method_class: "anchor_assisted"
    student_label: "temporary-use larceny trap"
    c3_signal: "The choice gives an unauthorized taking, but the stated plan is to drive briefly and return."
    true_responsive_version: "A larceny version would say the defendant intended to keep the car or permanently deprive the owner at the time of taking."
    lawyer_confirmation: "Common-law larceny requires trespassory taking and carrying away of another’s personal property with intent to steal at the time of taking. A short intended borrowing does not satisfy that mental-state element."
  B:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "possession-by-fraud survivor"
    c3_signal: "The false promise gets possession, and the no-return intent exists when possession is obtained."
    true_responsive_version: "This is already the true-and-responsive version."
    lawyer_confirmation: "Larceny by trick is larceny where the owner’s apparent consent to possession is induced by fraud. The defendant’s later return does not undo guilt once the offense is complete."
  C:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "bait_doctrine"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "bar_exam_bait"
      - "half_right_answer"
      - "wrong_standard"
    method_class: "anchor_assisted"
    student_label: "title-versus-possession false-pretenses trap"
    c3_signal: "The choice has a lie, but the owner only lends the car. Borrowing transfers possession, not title."
    true_responsive_version: "A false-pretenses version would have the lie cause the owner to transfer ownership or title to the car."
    lawyer_confirmation: "False pretenses requires obtaining title by a knowing material misrepresentation with intent to defraud. A borrowed car gives possession only."
  D:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "half_right_answer"
      - "wrong_timing"
      - "wrong_element"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "late-return embezzlement trap"
    c3_signal: "The choice gives lawful possession, but only a short overstay."
    true_responsive_version: "An embezzlement version would show a serious conversion, such as selling, pledging, hiding, or deciding to keep the car as one’s own."
    lawyer_confirmation: "Embezzlement requires fraudulent conversion of property in lawful possession. A brief unauthorized delay in return is not a serious enough interference to constitute conversion."

residual_answer:
  answer: "B"
  why_survives: "It is the only choice where the charged crime lines up with the facts: possession was obtained by deceit, and the defendant had stealing intent when possession was obtained."
  confidence_band: "anchor-assisted high confidence"

legal_leak_audit:
  student_accessible_claims:
    - claim: "This is not a morality contest; it is a charged-crime matching question."
      status: "passes via call/fact relation"
    - claim: "A lacks the stealing-intent element."
      status: "passes via larceny tiny anchor"
    - claim: "C is possession only, not title."
      status: "passes via false-pretenses tiny anchor"
    - claim: "D lacks serious conversion."
      status: "passes via embezzlement tiny anchor"
  lawyer_only_claims:
    - claim: "Full common-law definitions of larceny, larceny by trick, false pretenses, and embezzlement."
      quarantine: "lawyer_confirmation only"
  legal_leak_risk: "High if the explanation pretends property-crime taxonomy is hard structure."
  mitigation: "All offense distinctions are labeled anchor_assisted."

remediation:
  card_id: "REM-CRIM-PROPERTY-CRIME-MATCH-01"
  title: "Property Crime Matching Grid"
  signal: "Four choices each charge a different theft offense."
  student_move: "Ask what moved and how: trespassory taking, possession by fraud, title by fraud, or lawful possession plus conversion."
  tiny_rule: "Larceny by trick is possession by deceit; false pretenses is title by deceit."
  trap: "Selecting the lie-based answer without checking title versus possession."
  confidence: "ANCHOR_ASSISTED"

case_study_output:
  final_student_script: "This is a property-crime matching grid. A is only a temporary use, so no larceny intent. C is only a borrowed car, so no title for false pretenses. D is only a late return, so no serious conversion. B has possession obtained by a false promise plus intent not to return at the start. Pick B."
  residual: "B"
  verdict: "ANCHOR_SOLVE"

quality_control:
  official_key_used: "B"
  residual_matches_official_key: true
  exactly_three_distractors: true
  each_distractor_one_filter: true
  controlled_vocab_checked: true
  outline_code_verified: true
  pass_requirements_met: true

analytics_hooks:
  dominant_trap_choice: "C"
  dominant_trap_type: "title-versus-possession false-pretenses trap"
  primary_component: "Criminal property-crime taxonomy"
  drill_family: "Larceny by trick versus false pretenses"
  review_queue: false
```

## 2. Student case study

### 1. program_frame

This is a **Criminal Law property-crime matching** question. The call does not ask which defendant is most dishonest. It asks which defendant is most likely guilty of the **crime charged**.

The whole array is a taxonomy grid:

| Charge           | Deciding question                                           |
| ---------------- | ----------------------------------------------------------- |
| Larceny          | Was there intent to steal at the taking?                    |
| Larceny by trick | Was possession obtained by deceit with stealing intent?     |
| False pretenses  | Did title pass by deceit?                                   |
| Embezzlement     | Was there lawful possession followed by serious conversion? |

### 2. student_access_test

This is **ANCHOR_SOLVE**, not a clean hard-structural item.

A student needs the tiny property-crime anchor. C3 helps by forcing the right move: match each charge to the missing or present element. But the theft-offense distinctions themselves are not visible from grammar alone.

### 3. question_data

**Question:** In which situation is the defendant most likely guilty of the crime charged?

**Key:** B
**Subject:** Criminal Law
**Topic:** Other Crimes
**Subtopic:** Larceny by trick
**Outline code:** 73030200
**Dominant trap:** C

### 4. call_and_prediction

**Call:** Pick the one scenario where the charge fits the facts.

**Prediction:** The credited answer will be the one where the property-crime label matches what happened to the car.

**Exam-day pre-read:** Do not ask, “Who lied?” Ask, “What property interest moved, and did the charged offense match it?”

### 5. trigger_facts

| Choice | Trigger fact                                      | Why it matters                         |
| ------ | ------------------------------------------------- | -------------------------------------- |
| A      | Intended to drive three miles and return          | Negates intent to steal                |
| B      | False promise to return, with no intent to return | Possession by deceit plus theft intent |
| B      | Later return                                      | Repentance trap                        |
| C      | Borrowed car only                                 | Possession, not title                  |
| D      | Kept car overnight                                | Late return, not serious conversion    |

### 6. governing_c3_lane

**Lane:** Anchor-assisted CUT.

This is a rule-driven item. The answer choices do not fight on policy or reasonableness. They fight on offense elements.

**Student move:** CUT each wrong choice by naming the missing element.

### 7. choice_by_choice_walkthrough

#### A

1. **Student-accessible C3 signal:** The facts show an unauthorized taking, but also show a plan to return the car after a short trip.
2. **Student label:** Wrong-element: temporary-use larceny trap.
3. **True/responsive version:** The defendant takes the car intending to keep it or permanently deprive the owner at the time of taking.
4. **Lawyer confirmation:** Larceny requires trespassory taking and carrying away with intent to steal. The short round-trip plan defeats the required intent.

#### B

1. **Student-accessible C3 signal:** The defendant gets possession by a false promise and has no intent to return when he gets possession.
2. **Student label:** Correct answer: possession-by-fraud survivor.
3. **True/responsive version:** This is already true and responsive.
4. **Lawyer confirmation:** Larceny by trick is larceny where fraudulent consent gives the defendant possession. Later repentance does not undo the completed offense.

#### C

1. **Student-accessible C3 signal:** This is the dominant trap. It has a lie, but the owner only lends the car.
2. **Student label:** Bait-doctrine: false pretenses title trap.
3. **True/responsive version:** The defendant lies and the owner transfers ownership or title to the car.
4. **Lawyer confirmation:** False pretenses requires title obtained by misrepresentation. Borrowing gives possession only.

#### D

1. **Student-accessible C3 signal:** The defendant lawfully gets the car, then returns it late. That is not enough by itself.
2. **Student label:** Wrong-element: conversion gap.
3. **True/responsive version:** The defendant sells the car, pledges it as collateral, hides it, or otherwise seriously treats it as his own.
4. **Lawyer confirmation:** Embezzlement requires fraudulent conversion of property already lawfully possessed. Keeping the car a few extra hours is not serious enough conversion.

### 8. residual_answer

**B survives.**

It is the only scenario where the charge and the facts line up: possession was obtained by deceit, and the defendant had the wrongful intent when he obtained possession.

### 9. legal_leak_audit

Do not teach this as “obvious from structure.” It is not.

The student-accessible move is the **grid move**: match the charged offense to the missing element. The actual property-crime definitions are tiny anchors, not pure C3 structure.

### 10. final_student_script

“Property-crime grid. A lacks intent to steal because he planned to return it. C is only possession, not title, so not false pretenses. D is only a late return, not conversion. B is possession by deceit plus no intent to return at the start. Pick B.”

### 11. remediation_card

**REM-CRIM-PROPERTY-CRIME-MATCH-01 — Property Crime Matching Grid**

When the choices each charge a different theft offense, ask:

**What moved?**

* Taking without consent → larceny, but only with intent to steal.
* Possession by deceit → larceny by trick.
* Title by deceit → false pretenses.
* Lawful possession, then serious conversion → embezzlement.

### 12. qa_checklist

| Check                                         | Result  |
| --------------------------------------------- | ------- |
| Residual equals official key                  | Pass    |
| Three distractors each break one filter       | Pass    |
| No hard-structural overclaim                  | Pass    |
| Dominant trap identified                      | Pass: C |
| Legal doctrine quarantined as anchor-assisted | Pass    |

### 13. wrong_answer_recovery_paths

| If student picked | Likely reason                       | Repair                            |
| ----------------- | ----------------------------------- | --------------------------------- |
| A                 | Saw unauthorized taking and stopped | Add intent-at-taking check        |
| C                 | Saw lie and picked false pretenses  | Add title-versus-possession check |
| D                 | Saw permission plus later misuse    | Add serious-conversion check      |

### 14. outline_mastery_map

**Outline code:** 73030200
**Mastery target:** Larceny by trick.

Student should be able to distinguish:

* Larceny by trick from false pretenses.
* Temporary borrowing from larceny.
* Late return from embezzlement.

### 15. crossover_intersection_map

| Crossover             | Why it matters                                                                     |
| --------------------- | ---------------------------------------------------------------------------------- |
| Contracts / fraud     | False promise can matter, but criminal intent must exist at the key time           |
| Property              | Possession versus title controls the offense label                                 |
| Evidence / admissions | Later return is evidence of repentance, not a legal undoing of the completed crime |

## 3. c3_annotation JSON

```json
{
  "question_id": "16158",
  "subject": "CRIMINAL",
  "topic": "Other Crimes",
  "subtopic": "Larceny by trick",
  "outline_code": "73030200",
  "official_key": "B",
  "most_popular_wrong_answer": "C",
  "governing_law_type": "RULE",
  "deciding_phase": "CUT",
  "method_class": "anchor_assisted",
  "case_study_verdict": "ANCHOR_SOLVE",
  "bank_validation_verdict": "PASS",
  "confidence": "ANCHOR_ASSISTED",
  "residual": "B",
  "answer_array": {
    "architecture": "four-scenario property-crime taxonomy",
    "dominant_trap": "C",
    "primary_axis": "property-crime element matching",
    "silver_key": "SK-CRIMINAL-PROPERTY-GRID-01"
  },
  "answer_choices": {
    "A": {
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "wrong_element",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": [
        "half_right_answer",
        "wrong_mental_state",
        "common_student_myth"
      ],
      "method_class": "anchor_assisted"
    },
    "B": {
      "filter_broken": null,
      "mold_code": null,
      "mold_family": null,
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": [
        "correct_answer"
      ],
      "method_class": "anchor_assisted"
    },
    "C": {
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "bait_doctrine",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": [
        "attractive_wrong_answer",
        "bar_exam_bait",
        "half_right_answer",
        "wrong_standard"
      ],
      "method_class": "anchor_assisted"
    },
    "D": {
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "wrong_element",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": [
        "half_right_answer",
        "wrong_timing",
        "bar_exam_bait"
      ],
      "method_class": "anchor_assisted"
    }
  },
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-PROPERTY-CRIMES-01",
      "statement": "The car-theft crimes split by what the defendant gets: larceny is trespassory taking, larceny by trick is possession by deceit, false pretenses is title by deceit, and embezzlement is lawful possession followed by conversion.",
      "type": "distinction",
      "unlocks": "the property-crime matching grid",
      "trigger": "four choices each pair a car-borrowing fact pattern with a different theft charge",
      "tested_choice": "C",
      "authority": "Common-law theft offense taxonomy",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-PROPERTY-GRID-01",
      "statement": "When each answer choice is a separate scenario plus charge, do not compare moral blame. Match each charge to its missing element.",
      "type": "answer_array",
      "navigates": "four-scenario charged-offense array",
      "trigger": "the call asks which situation is most likely guilty of the crime charged",
      "tested_choice": "C",
      "outline_code": "73030200",
      "last_minute_review": true
    }
  ],
  "analyzer_notes": {
    "drift_audit": "Property-crime definitions are treated as anchor-assisted, not hard structural.",
    "dominant_trap": "C is the dominant trap because it contains deception but misses title transfer.",
    "validation": "PASS: B survives and A, C, and D each break exactly one NOT_RESPONSIVE filter."
  }
}
```

## 4. program_elements JSON

```json
{
  "question_id": "16158",
  "program_elements": {
    "trap_families": [
      {
        "trap_id": "CRIM-TRAP-PROPERTY-01",
        "name": "Lie Means False Pretenses",
        "choice": "C",
        "description": "Student sees a lie and chooses false pretenses without checking title transfer."
      },
      {
        "trap_id": "CRIM-TRAP-PROPERTY-02",
        "name": "Unauthorized Use Means Larceny",
        "choice": "A",
        "description": "Student sees unauthorized taking and ignores the intent-to-steal element."
      },
      {
        "trap_id": "CRIM-TRAP-PROPERTY-03",
        "name": "Late Return Means Embezzlement",
        "choice": "D",
        "description": "Student sees lawful possession plus misuse and ignores conversion seriousness."
      }
    ],
    "tensions": [
      {
        "tension_id": "CRIM-TENSION-POSSESSION-TITLE",
        "axis": "possession by deceit versus title by deceit",
        "resolving_fact": "The car was borrowed, not transferred in ownership.",
        "choices": [
          "B",
          "C"
        ]
      },
      {
        "tension_id": "CRIM-TENSION-INTENT-TIMING",
        "axis": "intent at taking versus later conduct",
        "resolving_fact": "B had no intent to return when possession was obtained."
      }
    ],
    "remediation_card": {
      "id": "REM-CRIM-PROPERTY-CRIME-MATCH-01",
      "title": "Property Crime Matching Grid",
      "front": "Car crime choice set: ask what moved.",
      "back": "Larceny = trespassory taking + intent to steal. Larceny by trick = possession by deceit. False pretenses = title by deceit. Embezzlement = lawful possession + serious conversion."
    },
    "red_zones": [
      "larceny by trick versus false pretenses",
      "temporary use versus intent to steal",
      "lawful possession versus conversion"
    ]
  }
}
```

## 5. program_intelligence JSON

```json
{
  "question_id": "16158",
  "program_intelligence": {
    "wrong_answer_recovery": {
      "A": {
        "student_error": "Treats unauthorized taking as enough for larceny.",
        "repair_prompt": "Where is the intent to steal or permanently deprive at the time of taking?"
      },
      "C": {
        "student_error": "Treats any lie-based transfer as false pretenses.",
        "repair_prompt": "Did the owner transfer title or only possession?"
      },
      "D": {
        "student_error": "Treats any late return as embezzlement.",
        "repair_prompt": "What serious conversion happened after lawful possession?"
      }
    },
    "drill_seeds": [
      {
        "drill_id": "DRILL-CRIM-PROPERTY-01",
        "skill": "crime-label matching",
        "prompt": "Given a theft fact pattern, classify what moved: taking, possession, title, or lawful possession plus conversion."
      },
      {
        "drill_id": "DRILL-CRIM-PROPERTY-02",
        "skill": "title versus possession",
        "prompt": "Mark each deception fact pattern as larceny by trick or false pretenses."
      },
      {
        "drill_id": "DRILL-CRIM-PROPERTY-03",
        "skill": "intent timing",
        "prompt": "Decide whether later repentance changes guilt after the offense was complete."
      }
    ],
    "trap_tags": [
      "bar_exam_bait",
      "half_right_answer",
      "wrong_mental_state",
      "wrong_timing"
    ],
    "component_routing": {
      "primary_component": "MBE Tension Matrix",
      "secondary_component": "MBE Trap Matrix",
      "repair_component": "MBE Rescue Matrix",
      "lesson_route": "Criminal property-crime taxonomy micro-anchor"
    },
    "crossovers": [
      {
        "subject": "CONTRACTS",
        "connection": "A false promise can look like a civil promise problem, but the criminal issue is intent when possession is obtained."
      },
      {
        "subject": "REAL_PROPERTY",
        "connection": "Title versus possession is the controlling property-status distinction."
      }
    ],
    "outline_mastery": {
      "outline_code": "73030200",
      "node": "Crimes against Property > Larceny by trick",
      "mastery_target": "Distinguish larceny by trick from false pretenses and embezzlement."
    },
    "gold_keys": [
      {
        "id": "GK-CRIMINAL-PROPERTY-CRIMES-01",
        "statement": "The car-theft crimes split by what the defendant gets: larceny is trespassory taking, larceny by trick is possession by deceit, false pretenses is title by deceit, and embezzlement is lawful possession followed by conversion.",
        "type": "distinction",
        "unlocks": "the property-crime matching grid",
        "trigger": "four choices each pair a car-borrowing fact pattern with a different theft charge",
        "tested_choice": "C",
        "authority": "Common-law theft offense taxonomy",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CRIMINAL-PROPERTY-GRID-01",
        "statement": "When each answer choice is a separate scenario plus charge, do not compare moral blame. Match each charge to its missing element.",
        "type": "answer_array",
        "navigates": "four-scenario charged-offense array",
        "trigger": "the call asks which situation is most likely guilty of the crime charged",
        "tested_choice": "C",
        "outline_code": "73030200",
        "last_minute_review": true
      }
    ]
  }
}
```

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "16158"
  question_id: "16158"
  subject: "CRIMINAL"
  topic: "Other Crimes"
  subtopic: "Larceny by trick"
  outline_code: "73030200"
  official_key: "B"
transform_provenance:
  transformed_from: "16158"
  variant_slug: "16158"
  original_key_letter: "UNKNOWN"
  new_key_letter: "B"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_SOLVE"
  confidence: "ANCHOR_ASSISTED"
  residual: "B"
distilled_core_question: "Distilled core question not available in source file."
review_truth: "Review truth not available in source file."
```

### 3. c3_annotation

```json
{
  "question_id": "16158",
  "subject": "CRIMINAL",
  "credited_answer": "B",
  "outline_code": "73030200",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "B",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "ANCHOR_ASSISTED",
    "tension_axis": null,
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "repair_normalized",
    "difficulty": "UNKNOWN",
    "distractors": [],
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 16158; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "16158",
  "subject": "CRIMINAL",
  "outline_code": "73030200",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-16158",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "Review truth not available in source file.",
    "trap": "See preserved traps when present.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "16158",
  "subject": "CRIMINAL",
  "outline_code": "73030200",
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
    "placement": "73030200",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
