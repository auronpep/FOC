---
qid: "16070"
transformed_from: "16070"
subject: "CRIMINAL"
topic: "General Principles"
subtopic: "Defenses / Excuse Defenses"
outline_code: "72060100"
key: "A"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "choice: \"B"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "Review truth not available in source file."
---
```yaml
barmatrix_row:
  qid: "16070"
  internal_id: null
  subject: "CRIMINAL"
  subject_display: "Criminal Law"
  topic: "General Principles"
  subtopic: "Defenses / Excuse Defenses"
  outline_code: "72060100"
  difficulty: null
  selection_percentages:
    A: null
    B: null
    C: null
    D: null
  official_key: "A"
  question: "Which of the following fact situations is the defendant's claim of intoxication LEAST likely to be an effective defense?"
  choices:
    A: "Charged with rape, the defendant asserts that immediately before the act, he drank a great deal of liquor, and that as a result, he was so intoxicated that he believed the victim to be his wife."
    B: "Charged with murder, the defendant asserts that immediately before she shot the victim, an unknown person put alcohol in her orange juice without her knowledge, and that as a result she was so intoxicated that she believed her gun to be a harmless toy."
    C: "Charged with attempted robbery, the defendant asserts that at the time she pointed her pistol at the victim and demanded money, she was so intoxicated that she thought the victim was a friend of hers and would know that she was joking."
    D: "Charged with larceny of an automobile, the defendant asserts that after injecting heroin into his bloodstream, he was so intoxicated that he believed the automobile to be his own."
  correct_answer_explanation: "Voluntary intoxication may be a defense to specific-intent crimes, but not general-intent crimes. Rape is treated here as a general-intent crime, so the intoxication claim in A is least likely to be effective."
  wrong_answer_explanations:
    B: "Involuntary intoxication may be a defense more broadly, including where it prevents the required mental state."
    C: "Attempted robbery requires specific intent, and voluntary intoxication may negate that intent."
    D: "Larceny requires intent to deprive the owner of the property; intoxication may support a claimed lack of that intent."

source_stack:
  - "BarMatrix row Q16070 from MBE.xlsx"
  - "Criminal Law row Q16070 from Criminal LAw.xlsx"
  - "controlled_vocabularies.md"
  - "OUTLINE_CODES_COMPLETE.md"
  - "C3 Lessons 1, 2, 7, 8, 10, 12, 13, 14"
  - "C3 Master Deck: SPLIT-13 Intoxication defenses"
  - "Official explanation"
  - "Lawyer-confirmation research on intoxication defenses"

student_access_contract:
  controlling_test: "Could a smart 10-year-old with only the C3 lessons, overlays, and taught tiny anchors identify the choice problem without outside doctrine?"
  access_level: "pure_anchor"
  allowed_student_moves:
    - "Circle LEAST and invert the normal selection rule."
    - "Classify each option by two variables: intoxication type and offense intent type."
    - "Use the taught intoxication Gold Key."
    - "Pick the weakest intoxication defense, not the most sympathetic story."
  forbidden_student_moves:
    - "Do not pretend rape/general-intent classification is visible from grammar alone."
    - "Do not call B, C, or D legally wrong; each is more likely to be an effective defense."
    - "Do not turn this into a full criminal-law outline."

stem_parse:
  call_type: "negative / LEAST likely"
  negative_stem_inversion: true
  precise_call: "Which fact situation gives the weakest intoxication defense?"
  adjacent_call_trap: "Picking a fact situation where intoxication sounds dramatic instead of applying the LEAST instruction."
  governing_issue: "intoxication as a defense"
  decisive_grid:
    axis_1: "voluntary intoxication versus involuntary intoxication"
    axis_2: "general-intent crime versus specific-intent crime"
  predicted_answer_before_choices: "The weakest defense will be voluntary intoxication offered against a general-intent crime."
  credited_choice_match: "A"

trigger_facts:
  - fact: "The call asks for LEAST likely to be effective."
    access_label: "student_visible"
    role: "negative-stem inversion"
  - fact: "Choice A involves voluntary drinking."
    access_label: "student_visible"
    role: "weak-defense trigger"
  - fact: "Choice A is charged as rape."
    access_label: "anchor_required"
    role: "general-intent classification"
  - fact: "Choice B involves alcohol placed in juice without knowledge."
    access_label: "student_visible"
    role: "involuntary-intoxication trigger"
  - fact: "Choice C involves attempted robbery."
    access_label: "anchor_required"
    role: "specific-intent trigger"
  - fact: "Choice D involves larceny and a claim of believing the automobile was his own."
    access_label: "anchor_required"
    role: "specific-intent / claim-of-right trigger"

c3_routing:
  subject_fit: "Criminal Law = offense classification + mental-state gate."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  answer_array_shape: "negative-stem 2x2 classification grid"
  method_class: "pure_anchor"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  confidence: "PURE_ANCHOR"
  fork_type: null
  residual: "A"
  agrees_with_official_key: true

answer_array:
  architecture: "negative-stem intoxication-defense matrix"
  selection_instruction: "Pick the fact situation where intoxication is least likely to work."
  matrix:
    A:
      intoxication_type: "voluntary"
      offense_intent_type: "general intent"
      defense_strength: "weakest"
    B:
      intoxication_type: "involuntary"
      offense_intent_type: "mental-state negation / broader excuse"
      defense_strength: "stronger than A"
    C:
      intoxication_type: "voluntary"
      offense_intent_type: "specific intent"
      defense_strength: "stronger than A"
    D:
      intoxication_type: "voluntary"
      offense_intent_type: "specific intent"
      defense_strength: "stronger than A"
  dominant_trap:
    choice: "B"
    basis: "source file lists B as most popular wrong answer; analytically attractive because murder sounds more serious than rape"
  residual: "A"

choice_walkthroughs:
  A:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "pure_anchor"
    student_accessible_signal: "This is the weak-defense combination: voluntary intoxication plus a general-intent offense."
    student_label: "weakest intoxication defense"
    true_responsive_version: "This is already the responsive version because the call asks for the least effective defense."
    lawyer_confirmation: "Under the bar/default rule used by the source row, voluntary intoxication does not defeat a general-intent crime; the row treats rape as general intent."
  B:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "bait_doctrine"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "wrong_mental_state"
      - "half_right_answer"
      - "bar_exam_bait"
    method_class: "pure_anchor"
    student_accessible_signal: "The stem says the alcohol was put in the drink without her knowledge. That pushes this away from voluntary intoxication."
    student_label: "involuntary-intoxication trap"
    true_responsive_version: "A responsive LEAST answer would use self-induced intoxication against a crime where that intoxication does not negate the required mental state."
    lawyer_confirmation: "Involuntary intoxication is treated more generously than voluntary intoxication and may work where it prevents responsibility or required mental state."
  C:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "bait_doctrine"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "wrong_mental_state"
      - "answer_to_different_question"
      - "bar_exam_bait"
    method_class: "pure_anchor"
    student_accessible_signal: "Attempted robbery is a specific-intent setting. The intoxication story goes directly to intent."
    student_label: "specific-intent defense"
    true_responsive_version: "A responsive LEAST answer would not involve a specific-intent crime where intoxication could negate the target intent."
    lawyer_confirmation: "Attempted robbery requires the intent to commit robbery, so intoxication that prevents that intent can be an effective defense."
  D:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "bait_doctrine"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "wrong_mental_state"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "pure_anchor"
    student_accessible_signal: "Larceny needs intent to take another's property. Believing the car is his own attacks that intent."
    student_label: "larceny-intent defense"
    true_responsive_version: "A responsive LEAST answer would not include a fact that negates the specific intent to steal."
    lawyer_confirmation: "Larceny requires intent to deprive another of property; a belief that the property is one's own can negate that theft intent."

residual_answer:
  answer: "A"
  why_it_survives: "It is the only option combining voluntary intoxication with a general-intent crime, making intoxication least likely to be effective."
  confidence_band: "pure-anchor high if the intoxication matrix is known; low if not known"

legal_leak_audit:
  student_accessible_claims:
    - claim: "This is a LEAST question."
      access_basis: "call text"
      status: "passes"
    - claim: "B involves involuntary intoxication."
      access_basis: "stem fact"
      status: "passes"
    - claim: "C and D attack required intent."
      access_basis: "Gold Key required"
      status: "anchor"
    - claim: "A is weakest because rape is general intent and intoxication is voluntary."
      access_basis: "Gold Key required"
      status: "anchor"
  lawyer_only_claims:
    - claim: "Rape is treated as a general-intent crime for this MBE item."
      quarantine: "lawyer_confirmation"
    - claim: "Attempted robbery and larceny are specific-intent crimes."
      quarantine: "lawyer_confirmation"
    - claim: "Involuntary intoxication may operate like an insanity-style defense."
      quarantine: "lawyer_confirmation"
  drift_audit: "The walkthrough does not convert criminal-law classification into fake structure. The structural move is the negative-stem matrix; the deciding doctrine is pure anchor."

gold_keys:
  - id: "GK-CRIMINAL-INTOXICATION-DEFENSES-01"
    statement: "Voluntary intoxication can negate specific intent, but it is not a defense to a general-intent crime. Involuntary intoxication is broader and can be effective where it prevents the required responsibility or mental state."
    type: "distinction"
    unlocks: "LEAST-likely intoxication-defense matrix"
    trigger: "answer choices vary by voluntary/involuntary intoxication and by general/specific-intent crimes"
    tested_choice: "A"
    authority: "Common-law bar rule; MPC § 2.08 as comparison"
    last_minute_review: true

silver_keys:
  - id: "SK-CRIMINAL-NEGATIVE-INTOXICATION-MATRIX-01"
    statement: "Circle LEAST. Then grade each option by defense strength; the credited answer is the weakest intoxication defense, not the most serious-looking crime."
    type: "answer_array"
    navigates: "negative-stem inversion and four-option intoxication grid"
    trigger: "LEAST likely to be an effective defense"
    tested_choice: "B"
    outline_code: "72060100"
    last_minute_review: true

remediation:
  card_id: "REM-CRIM-INTOXICATION-LEAST-01"
  title: "Voluntary + General Intent = Weakest Intoxication Defense"
  signal: "LEAST likely intoxication defense question."
  student_move: "Circle LEAST; classify intoxication type and offense intent."
  tiny_rule: "Voluntary intoxication helps only with specific intent; involuntary intoxication is broader."
  trap: "Choosing the more serious crime instead of the weaker defense."
  confidence: "PURE_ANCHOR"

case_study_output:
  verdict: "ANCHOR_SOLVE"
  residual: "A"
  final_student_script: "Circle LEAST. A is voluntary intoxication plus rape, treated here as general intent. Voluntary intoxication does not work there. B is involuntary, C is attempted robbery, and D is larceny, so those are stronger defense settings. Pick A."

quality_control:
  qid_consistent: true
  official_key_used: "A"
  negative_stem_checked: true
  outline_code_verified_in_reference: true
  controlled_vocab_values_checked: true
  credited_answer_has_no_filter_broken: true
  three_distractors_have_exactly_one_filter: true
  pass_requirements_met: true

analytics_hooks:
  dominant_trap_choice: "B"
  dominant_trap_basis: "source most_popular_wrong_answer plus analytical trap pull"
  primary_red_zone: "negative-stem inversion with pure-anchor classification"
  review_queue: false
  drill_family: "intoxication defenses"
```

## 2. Student-facing C3 case study

### 1. program_frame

This is a **negative-stem Criminal Law** item. The question does not ask where intoxication is most dramatic. It asks where intoxication is **LEAST likely** to work.

The answer is **A**.

### 2. student_access_test

This is **not** a hard-structural question. The student must know a tiny anchor:

**Gold Key:** voluntary intoxication can help with specific intent, but it does not work for general-intent crimes. Involuntary intoxication is broader.

Without that anchor, the answer array is mostly doctrine classification.

### 3. question_data

Subject: Criminal Law
Topic: General Principles
Subtopic: Defenses / Excuse Defenses
Outline code: **72060100**
Call: Which intoxication claim is **LEAST likely** to be effective?
Official key: **A**

### 4. call_and_prediction

Circle **LEAST**.

Prediction: the correct answer will be the fact situation with the **weakest intoxication defense**. The likely weak combination is:

**voluntary intoxication + general-intent crime**

That points to **A** once the crime classification is known.

### 5. trigger_facts

The load-bearing facts are not hidden:

| Choice | Intoxication fact                              | Crime fact                         | Defense strength |
| ------ | ---------------------------------------------- | ---------------------------------- | ---------------- |
| A      | voluntarily drank liquor                       | rape                               | weakest          |
| B      | alcohol was put in her juice without knowledge | murder                             | stronger         |
| C      | voluntary intoxication                         | attempted robbery                  | stronger         |
| D      | voluntary heroin use                           | larceny / believed car was his own | stronger         |

### 6. governing_c3_lane

Lane: **ANCHOR_SOLVE**.

The C3 structure is a matrix:

1. Voluntary or involuntary intoxication?
2. General-intent or specific-intent offense?
3. Because the stem says **LEAST**, pick the weakest defense.

Voluntary intoxication is generally much weaker than involuntary intoxication, and it is especially weak against a general-intent crime. Current summaries of the intoxication defense describe the defense as turning on whether intoxication was voluntary or involuntary and on the intent level required by the offense. ([Justia][1])

### 7. choice_by_choice_walkthrough

#### A. Rape + voluntary intoxication

1. **Student-accessible C3 signal:** This is the weak-defense combination: voluntary intoxication plus a general-intent offense.
2. **Student label:** weakest defense / credited answer.
3. **What a true/responsive version would look like:** This is already responsive because the call asks for the least effective intoxication defense.
4. **Lawyer confirmation:** The source row treats rape as a general-intent crime. Voluntary intoxication is not a defense to general-intent crimes, though it may be used for specific-intent crimes when it prevents the required intent. ([Justia][1])

#### B. Murder + involuntary intoxication

1. **Student-accessible C3 signal:** The alcohol was put in her juice without her knowledge. That is not ordinary voluntary intoxication.
2. **Student label:** involuntary-intoxication trap.
3. **What a true/responsive version would look like:** A responsive LEAST answer would not include involuntary intoxication, because that tends to make the defense stronger.
4. **Lawyer confirmation:** Involuntary intoxication can be a defense where it prevents the defendant from understanding the nature or wrongfulness of the act, and it can apply more broadly than voluntary intoxication. ([Justia][1])

#### C. Attempted robbery + voluntary intoxication

1. **Student-accessible C3 signal:** Attempted robbery is an intent-heavy offense. The intoxication fact attacks whether she meant to rob at all.
2. **Student label:** specific-intent defense.
3. **What a true/responsive version would look like:** A responsive LEAST answer would avoid a specific-intent crime, because voluntary intoxication can negate specific intent.
4. **Lawyer confirmation:** Attempted robbery requires a specific intent to commit robbery. Voluntary intoxication may be used for specific-intent crimes if it prevents formation of the required intent. ([Justia][1])

#### D. Larceny of automobile + voluntary intoxication

1. **Student-accessible C3 signal:** The defendant says he thought the car was his own. That attacks the intent to steal another person’s property.
2. **Student label:** larceny-intent defense.
3. **What a true/responsive version would look like:** A responsive LEAST answer would not give the defendant a fact that negates theft intent.
4. **Lawyer confirmation:** Larceny requires intent to deprive another of property. Voluntary intoxication can matter where it negates a specific-intent element. ([Justia][1])

### 8. residual_answer

**A survives** because it is the only option with the weak combination:

**voluntary intoxication + general-intent crime**

B, C, and D are all stronger defense settings, so they are not responsive to the **LEAST** call.

### 9. legal_leak_audit

Do not tell the student that A is “structurally false” or that B, C, and D are “wrong law.” That would be drift.

The student-accessible structure is:

* negative stem;
* answer matrix;
* weakest-defense selection.

The doctrine is anchor work: voluntary/involuntary intoxication and general/specific intent.

### 10. final_student_script

“Circle **LEAST**. A is voluntary intoxication for rape, treated here as general intent. That is the weakest intoxication defense. B is involuntary intoxication, C is attempted robbery, and D is larceny with a claim-of-right-style fact. Those are all stronger. Pick **A**.”

### 11. remediation_card

**REM-CRIM-INTOXICATION-LEAST-01 — Voluntary + General Intent = Weakest**

Signal: the call asks where intoxication is least likely to be effective.
Move: classify the intoxication and classify the crime.
Tiny rule: voluntary intoxication helps only with specific intent; involuntary intoxication is broader.
Trap: choosing the more serious-looking crime instead of the weaker defense.

### 12. qa_checklist

* Did we circle **LEAST**? Yes.
* Did we avoid normal-stem autopilot? Yes.
* Did we identify the answer-array grid? Yes.
* Did we avoid pretending doctrine classification is pure structure? Yes.
* Does the residual match the official key? Yes: **A**.
* PASS available? Yes: one credited answer and three single-filter distractors under the negative call.

### 13. wrong_answer_recovery_paths

B recovery: do not say “murder is serious, so intoxication won’t work.” First ask whether the intoxication was voluntary. It was not.

C recovery: do not stop at “she pointed a gun and demanded money.” Attempted robbery is specific-intent territory.

D recovery: do not stop at “he injected heroin voluntarily.” Larceny needs intent to steal another’s property, and the stated belief attacks that intent.

### 14. outline_mastery_map

Outline code: **72060100 — Defenses > Excuse Defenses**

Mastery target: intoxication defenses, especially the voluntary/involuntary and general/specific-intent split.

### 15. crossover_intersection_map

This item crosses three C3 components:

| Component                   | Use                                 |
| --------------------------- | ----------------------------------- |
| Lesson 14 negative stems    | **LEAST** reverses selection.       |
| Lesson 10 answer-array grid | Four options sort by two variables. |
| Gold Key / Anchor Deck      | The doctrine decides the grid.      |

### c3_annotation

```json
{
  "question_id": "16070",
  "subject": "CRIMINAL",
  "subject_display": "Criminal Law",
  "topic": "General Principles",
  "subtopic": "Defenses / Excuse Defenses",
  "outline_code": "72060100",
  "official_key": "A",
  "credited_answer": "A",
  "residual": "A",
  "case_study_verdict": "ANCHOR_SOLVE",
  "bank_validation_verdict": "PASS",
  "confidence": "PURE_ANCHOR",
  "deciding_phase": "CUT",
  "governing_law_type": "RULE",
  "fork_type": null,
  "negative_stem_inversion": true,
  "dominant_trap_choice": "B",
  "answer_array": {
    "shape": "negative-stem 2x2 classification grid",
    "axis_1": "voluntary intoxication versus involuntary intoxication",
    "axis_2": "general-intent crime versus specific-intent crime",
    "selection_rule": "pick the weakest intoxication defense"
  },
  "choices": {
    "A": {
      "credited": true,
      "filter_broken": null,
      "mold_code": null,
      "mold_family": null,
      "bait_architecture_code": null,
      "method_class": "pure_anchor",
      "student_label": "weakest intoxication defense",
      "wrong_answer_architecture_tags": [
        "correct_answer"
      ]
    },
    "B": {
      "credited": false,
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "bait_doctrine",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "method_class": "pure_anchor",
      "student_label": "involuntary-intoxication trap",
      "wrong_answer_architecture_tags": [
        "attractive_wrong_answer",
        "wrong_mental_state",
        "half_right_answer",
        "bar_exam_bait"
      ]
    },
    "C": {
      "credited": false,
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "bait_doctrine",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "method_class": "pure_anchor",
      "student_label": "specific-intent attempted-robbery defense",
      "wrong_answer_architecture_tags": [
        "attractive_wrong_answer",
        "wrong_mental_state",
        "answer_to_different_question",
        "bar_exam_bait"
      ]
    },
    "D": {
      "credited": false,
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "bait_doctrine",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "method_class": "pure_anchor",
      "student_label": "larceny-intent defense",
      "wrong_answer_architecture_tags": [
        "attractive_wrong_answer",
        "wrong_mental_state",
        "common_student_myth",
        "bar_exam_bait"
      ]
    }
  },
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-INTOXICATION-DEFENSES-01",
      "statement": "Voluntary intoxication can negate specific intent, but it is not a defense to a general-intent crime. Involuntary intoxication is broader and can be effective where it prevents the required responsibility or mental state.",
      "type": "distinction",
      "unlocks": "LEAST-likely intoxication-defense matrix",
      "trigger": "answer choices vary by voluntary/involuntary intoxication and by general/specific-intent crimes",
      "tested_choice": "A",
      "authority": "Common-law bar rule; MPC § 2.08 as comparison",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-NEGATIVE-INTOXICATION-MATRIX-01",
      "statement": "Circle LEAST. Then grade each option by defense strength; the credited answer is the weakest intoxication defense, not the most serious-looking crime.",
      "type": "answer_array",
      "navigates": "negative-stem inversion and four-option intoxication grid",
      "trigger": "LEAST likely to be an effective defense",
      "tested_choice": "B",
      "outline_code": "72060100",
      "last_minute_review": true
    }
  ],
  "analyzer_notes": "drift_audit: pure-anchor item; do not fake hard structure. The structural move is negative-stem inversion plus matrix sorting. The deciding doctrine is voluntary/involuntary intoxication and general/specific intent. Source row has no measured pick rates in MBE.xlsx; Criminal LAw.xlsx lists B as most_popular_wrong_answer."
}
```

### program_elements

```json
{
  "question_id": "16070",
  "traps": [
    {
      "choice": "B",
      "trap_name": "serious-crime trap",
      "trap_description": "Murder sounds less defensible than rape, but the intoxication is involuntary.",
      "trap_type": "wrong_frame",
      "red_zone": "crime seriousness over legal defense strength"
    },
    {
      "choice": "C",
      "trap_name": "weapon-and-demand trap",
      "trap_description": "The facts sound like robbery, but the claimed joke attacks specific intent.",
      "trap_type": "wrong_frame",
      "red_zone": "ignoring specific-intent posture"
    },
    {
      "choice": "D",
      "trap_name": "voluntary-drug-use trap",
      "trap_description": "The intoxication is voluntary, but larceny requires intent to steal another's property.",
      "trap_type": "wrong_frame",
      "red_zone": "missing theft-intent negation"
    }
  ],
  "tensions": [
    {
      "name": "negative-stem inversion",
      "axis": "least effective defense versus effective defense",
      "resolving_signal": "LEAST likely"
    },
    {
      "name": "intoxication grid",
      "axis": "voluntary/involuntary intoxication x general/specific intent",
      "resolving_signal": "A is voluntary plus general intent"
    }
  ],
  "remediation_card": {
    "id": "REM-CRIM-INTOXICATION-LEAST-01",
    "title": "Voluntary + General Intent = Weakest Intoxication Defense",
    "signal": "LEAST likely intoxication defense question",
    "move": "Classify intoxication type and offense intent type before choosing.",
    "tiny_rule": "Voluntary intoxication helps specific intent only; involuntary intoxication is broader.",
    "trap": "Picking the most serious-looking crime."
  },
  "red_zones": [
    "negative stem missed",
    "seriousness-of-crime heuristic",
    "voluntary versus involuntary intoxication confusion",
    "general versus specific intent confusion",
    "pure-anchor overconfidence"
  ],
  "program_keys": {
    "gold_key_ids": [
      "GK-CRIMINAL-INTOXICATION-DEFENSES-01"
    ],
    "silver_key_ids": [
      "SK-CRIMINAL-NEGATIVE-INTOXICATION-MATRIX-01"
    ]
  }
}
```

### program_intelligence

```json
{
  "question_id": "16070",
  "wrong_answer_recovery": {
    "B": {
      "student_error": "The student chose murder because it sounded least excusable.",
      "repair": "Ask first whether intoxication was voluntary. Here it was not.",
      "drill_prompt": "Find the involuntary-intoxication signal before classifying the crime."
    },
    "C": {
      "student_error": "The student treated voluntary intoxication as useless in all crimes.",
      "repair": "Voluntary intoxication can matter for specific-intent crimes. Attempted robbery is intent-heavy.",
      "drill_prompt": "Separate voluntary intoxication against general intent from voluntary intoxication against specific intent."
    },
    "D": {
      "student_error": "The student focused on heroin use and missed the belief-of-ownership fact.",
      "repair": "Larceny requires intent to steal another's property. Belief that it is yours attacks that intent.",
      "drill_prompt": "For theft crimes, ask what fact negates intent to steal."
    }
  },
  "drill_seeds": [
    {
      "id": "DRILL-CRIM-INTOX-NEGATIVE-01",
      "prompt": "Given four intoxication fact patterns, circle LEAST and rank defense strength.",
      "target_component": "negative-stem inversion"
    },
    {
      "id": "DRILL-CRIM-INTOX-MATRIX-02",
      "prompt": "Sort each fact pattern into voluntary/involuntary and general/specific intent.",
      "target_component": "answer-array matrix"
    },
    {
      "id": "DRILL-CRIM-SPECIFIC-INTENT-03",
      "prompt": "Identify whether the asserted intoxication fact negates a specific intent element.",
      "target_component": "pure_anchor"
    }
  ],
  "trap_tags": [
    "negative_stem",
    "least_likely",
    "intoxication_defense",
    "specific_intent",
    "general_intent",
    "dominant_trap_B"
  ],
  "component_routing": [
    {
      "component": "Lesson 14",
      "task": "Negative-stem inversion"
    },
    {
      "component": "Lesson 10",
      "task": "Answer-array matrix"
    },
    {
      "component": "Gold Key",
      "task": "Voluntary/involuntary intoxication distinction"
    },
    {
      "component": "Calibration",
      "task": "Pure-anchor confidence, not hard-structural confidence"
    }
  ],
  "crossovers": [
    {
      "from": "Criminal Law",
      "to": "Evidence/Procedure",
      "note": "The same negative-stem inversion skill applies to EXCEPT/LEAST evidence and procedure questions."
    },
    {
      "from": "Criminal Law",
      "to": "Contracts",
      "note": "The same matrix habit applies when answer choices sort by two variables."
    }
  ],
  "outline_mastery": {
    "outline_code": "72060100",
    "node": "Defenses > Excuse Defenses",
    "mastery_target": "intoxication defenses",
    "review_truth": "Voluntary intoxication is weakest against general-intent crimes; involuntary intoxication is broader; voluntary intoxication can negate specific intent."
  },
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-INTOXICATION-DEFENSES-01",
      "statement": "Voluntary intoxication can negate specific intent, but it is not a defense to a general-intent crime. Involuntary intoxication is broader and can be effective where it prevents the required responsibility or mental state.",
      "type": "distinction",
      "unlocks": "LEAST-likely intoxication-defense matrix",
      "trigger": "answer choices vary by voluntary/involuntary intoxication and by general/specific-intent crimes",
      "tested_choice": "A",
      "authority": "Common-law bar rule; MPC § 2.08 as comparison",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-NEGATIVE-INTOXICATION-MATRIX-01",
      "statement": "Circle LEAST. Then grade each option by defense strength; the credited answer is the weakest intoxication defense, not the most serious-looking crime.",
      "type": "answer_array",
      "navigates": "negative-stem inversion and four-option intoxication grid",
      "trigger": "LEAST likely to be an effective defense",
      "tested_choice": "B",
      "outline_code": "72060100",
      "last_minute_review": true
    }
  ]
}
```

[1]: https://www.justia.com/criminal/defenses/intoxication?utm_source=chatgpt.com "                The Intoxication Defense in Criminal Law Cases | Criminal Law Center | Justia    "

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "16070"
  question_id: "16070"
  subject: "CRIMINAL"
  topic: "General Principles"
  subtopic: "Defenses / Excuse Defenses"
  outline_code: "72060100"
  official_key: "A"
transform_provenance:
  transformed_from: "16070"
  variant_slug: "16070"
  original_key_letter: "UNKNOWN"
  new_key_letter: "A"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_SOLVE"
  confidence: "PURE_ANCHOR"
  residual: "A"
distilled_core_question: "Distilled core question not available in source file."
review_truth: "Review truth not available in source file."
```

### 3. c3_annotation

```json
{
  "question_id": "16070",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "72060100",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "A",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "PURE_ANCHOR",
    "tension_axis": null,
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "repair_normalized",
    "difficulty": "UNKNOWN",
    "distractors": [],
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 16070; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "16070",
  "subject": "CRIMINAL",
  "outline_code": "72060100",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-16070",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "Review truth not available in source file.",
    "trap": "See preserved traps when present.",
    "confidence": "PURE_ANCHOR"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "16070",
  "subject": "CRIMINAL",
  "outline_code": "72060100",
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
    "placement": "72060100",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
