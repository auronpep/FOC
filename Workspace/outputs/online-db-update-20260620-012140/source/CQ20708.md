---
qid: "20708"
transformed_from: "20708"
subject: "CRIMINAL"
topic: "Crimes against Property"
subtopic: "Robbery"
outline_code: "73030400"
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
  qid: "20708"
  internal_id: "CR-301"
  subject: "CRIMINAL"
  subject_display: "Criminal Law"
  topic: "Crimes against Property"
  bank_subtopic: "Other Crimes"
  subtopic: "Robbery"
  outline_code: "73030400"
  percent_correct:
    value: 75
    provenance: "Criminal LAw.xlsx supplemental row"
  selection_percentages:
    A:
      value: 75
      provenance: "Criminal LAw.xlsx supplemental row"
    B:
      value: 15
      provenance: "Criminal LAw.xlsx supplemental row"
    C:
      value: 7
      provenance: "Criminal LAw.xlsx supplemental row"
    D:
      value: 3
      provenance: "Criminal LAw.xlsx supplemental row"
  question: "Lena is holding her purse strap tightly over her shoulder. Nico grabs the purse and yanks hard enough to spin Lena around and break the strap, then runs away with the purse. Is this more than a stealthy larceny?"
  call: "Is this more than a stealthy larceny?"
  choices:
    A: "Yes, because Nico used force to overcome Lena's resistance and take property from her person"
    B: "No, because purse snatching is always mere larceny"
    C: "No, because robbery requires a weapon"
    D: "Yes, but only if Lena suffered a serious injury"
  official_key: "A"
  correct_answer_explanation: "The force was used during the taking and overcame the victim's physical resistance."
  wrong_answer_explanations:
    B: "This snatching involved force overcoming resistance."
    C: "Force or intimidation is required; a weapon is not."
    D: "Robbery requires force or fear, not serious physical injury."
  additional_info: null
  lb_rule_reference: "Purse snatching can be robbery when the defendant uses force sufficient to overcome the victim's resistance or cause dispossession."
  difficulty: null

source_stack:
  - "MBE.xlsx row 20708"
  - "Criminal LAw.xlsx row 20708 for focus-rate supplementation"
  - "controlled_vocabularies.md"
  - "OUTLINE_CODES_COMPLETE.md: 73030400"
  - "C3 Lessons 1, 2, 4, 7, 8, 12, 13, 14"
  - "Official BarMatrix explanation and lb_rule_reference"

student_access_contract:
  controlling_test: "Could a smart 10-year-old who completed only the C3 lessons, overlays, and taught tiny anchors identify this choice's problem without outside legal doctrine?"
  answer: "Only with a tiny anchor. The item is anchor-assisted because the student needs the purse-snatching robbery threshold."
  allowed_lessons_and_anchors:
    - "TRUE and RESPONSIVE"
    - "CUT before CLASH before CALL"
    - "Overclaim: absolute language such as always"
    - "Fabricated rule: invented weapon or injury requirement"
    - "Gold Key: purse snatching becomes robbery when force overcomes resistance"
    - "Silver Key: do not decide from the label purse snatching; find the resistance fact"
  forbidden_moves:
    - "Do not teach a full property-crimes outline."
    - "Do not call weapon or serious injury rules false unless tied to the robbery Gold Key."
    - "Do not treat mere snatching and forceful snatching as the same fact pattern."

stem_parse:
  actor:
    victim: "Lena"
    defendant: "Nico"
  property: "purse"
  possession_fact: "Lena held the purse strap tightly over her shoulder."
  taking_fact: "Nico grabbed the purse."
  force_fact: "Nico yanked hard enough to spin Lena around and break the strap."
  completion_fact: "Nico ran away with the purse."
  call_type: "classification of the taking as more than stealthy larceny"
  adjacent_call_trap: "Whether purse snatching in the abstract is larceny."
  negative_stem_inversion: false

trigger_facts:
  - fact: "Lena held the strap tightly."
    access_label: "student_visible"
    role: "shows resistance"
  - fact: "Nico yanked hard enough to spin Lena around."
    access_label: "student_visible"
    role: "shows force beyond stealth"
  - fact: "The strap broke."
    access_label: "student_visible"
    role: "confirms force overcame resistance"
  - fact: "No weapon is mentioned."
    access_label: "student_visible"
    role: "weapon trap negative fact"
  - fact: "No serious injury is mentioned."
    access_label: "student_visible"
    role: "injury trap negative fact"

c3_routing:
  subject_fit: "Criminal Law property-crime item = offense-boundary classification plus mental/force element check."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  method_class: "anchor_assisted"
  confidence: "ANCHOR_ASSISTED"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "A"
  agrees_with_official_key: true
  fork_type: null
  calibration_note: "Anchor-assisted clean cut. Commit after checking the call and the force fact."

answer_array:
  architecture: "Robbery-versus-stealthy-larceny threshold array."
  geometry: "One fact-engaged credited answer; one overbroad no answer; two fabricated-requirement distractors."
  dominant_trap:
    choice: "B"
    reason: "It preserves a true memory that some purse snatchings are larceny, then overclaims it into always."
  core_axis: "force overcoming resistance versus mere stealthy taking"
  splitting_fact: "Nico yanked hard enough to spin Lena around and break the strap."

choice_walkthroughs:
  A:
    text: "Yes, because Nico used force to overcome Lena's resistance and take property from her person"
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_accessible_c3_signal: "This answer uses the exact force fact: Nico overcame Lena's resistance."
    student_label: "force-overcoming-resistance survivor"
    true_responsive_version: "This choice already is the true and responsive version."
    lawyer_confirmation: "Robbery requires a taking from the person or presence by force or intimidation. Force sufficient to overcome the victim's resistance during the taking satisfies that requirement."
  B:
    text: "No, because purse snatching is always mere larceny"
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
    student_accessible_c3_signal: "The word always overclaims. The stem gives extra force facts."
    student_label: "always-mere-larceny overclaim"
    true_responsive_version: "No, if Nico merely took the purse by stealth without force overcoming resistance."
    lawyer_confirmation: "A sudden, stealthy snatching may be larceny, but purse snatching can be robbery when force is used to overcome resistance or cause dispossession."
  C:
    text: "No, because robbery requires a weapon"
    filter_broken: "NOT_TRUE"
    mold_code: "fabricated_rule"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "misstated_rule"
      - "common_student_myth"
      - "sounds_lawyerly"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_accessible_c3_signal: "This invents an extra robbery requirement."
    student_label: "weapon requirement myth"
    true_responsive_version: "No, only if the taking lacked force or intimidation sufficient for robbery."
    lawyer_confirmation: "Robbery does not require a weapon. Force or intimidation is enough."
  D:
    text: "Yes, but only if Lena suffered a serious injury"
    filter_broken: "NOT_TRUE"
    mold_code: "fabricated_rule"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "misstated_rule"
      - "fact_not_in_evidence"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_accessible_c3_signal: "This adds an injury threshold that the call does not require."
    student_label: "serious-injury requirement myth"
    true_responsive_version: "Yes, if force or intimidation was used in the taking."
    lawyer_confirmation: "Robbery requires force or fear, not serious bodily injury."

residual_answer:
  answer: "A"
  why_survives: "It alone matches the call and the resistance facts: tight strap, hard yank, spinning victim, broken strap."
  confidence_band: "anchor-assisted clean cut"

legal_leak_audit:
  student_accessible_claims:
    - claim: "B overclaims because it says always."
      status: "passes through Lesson 4 plus the robbery Gold Key"
    - claim: "C invents a weapon requirement."
      status: "passes through the robbery Gold Key"
    - claim: "D invents a serious-injury requirement."
      status: "passes through the robbery Gold Key"
    - claim: "A is fact-engaged."
      status: "passes through call/fact relation"
  lawyer_only_claims:
    - claim: "The full common-law definition of robbery."
      quarantine: "lawyer_confirmation only"
    - claim: "The doctrinal boundary between mere purse snatching and robbery."
      quarantine: "Gold Key, not fake structure"
  drift_audit: "The student path does not rely on a full criminal-law outline. It relies on one narrow robbery threshold."

gold_keys:
  - id: "GK-CRIMINAL-ROBBERY-FORCE-01"
    statement: "A purse snatching becomes robbery when the defendant uses force sufficient to overcome the victim's resistance or cause dispossession. Robbery does not require a weapon or a serious injury."
    type: "threshold"
    unlocks: "the stealthy-larceny, weapon, and injury traps"
    trigger: "the victim holds the property and the defendant yanks hard enough to overcome that hold"
    tested_choice: "B"
    authority: "Common-law robbery; BarMatrix lb_rule_reference for Q20708"
    last_minute_review: true

silver_keys:
  - id: "SK-CRIMINAL-ROBBERY-SNATCHING-01"
    statement: "Do not decide a purse-snatching question from the label 'snatching.' Look for the force fact: did the defendant merely take it, or did he overcome the victim's resistance?"
    type: "trap_spotting"
    navigates: "the always-mere-larceny distractor"
    trigger: "answer choices fight over 'mere larceny' while the stem gives resistance facts"
    tested_choice: "B"
    outline_code: "73030400"
    last_minute_review: true

remediation:
  card_id: "REM-CRIM-ROBBERY-PURSE-SNATCHING-01"
  title: "Purse Snatching: Check Resistance"
  signal: "Victim is holding the purse or strap and the defendant yanks it away."
  student_move: "Ask whether the force overcame the victim's resistance."
  tiny_rule: "Mere stealthy snatching is larceny; force overcoming resistance is robbery."
  trap: "Weapon or injury is not required."
  confidence: "ANCHOR_ASSISTED"

case_study_output:
  verdict: "ANCHOR_SOLVE"
  final_student_script: "Robbery does not need a weapon or serious injury. The question is whether the taking used force beyond stealth. Lena held the strap tightly; Nico yanked hard enough to spin her and break it. That is force overcoming resistance. Pick A."
  residual: "A"

quality_control:
  official_key_matches_residual: true
  exactly_three_distractors: true
  each_distractor_breaks_one_filter: true
  controlled_vocab_values_checked: true
  outline_code_verified: true
  pass_available: true
  bank_validation_verdict: "PASS"

analytics_hooks:
  dominant_trap_choice: "B"
  dominant_trap_percent: 15
  primary_component: "Criminal Law robbery threshold"
  review_queue: false
  drill_family: "Purse snatching: stealth versus force"
```

## Student case study

### 1. program_frame

This is a Criminal Law property-crime boundary question. The exam is not asking whether Nico stole the purse. He did. It asks whether the taking crossed the line from stealthy larceny into robbery.

### 2. student_access_test

This item is **anchor-assisted**. A student needs one small robbery anchor:

**Gold Key:** A purse snatching becomes robbery when the defendant uses force sufficient to overcome the victim’s resistance or cause dispossession. Robbery does not require a weapon or serious injury.

### 3. question_data

**Question:** Lena is holding her purse strap tightly over her shoulder. Nico grabs the purse and yanks hard enough to spin Lena around and break the strap, then runs away with the purse. Is this more than a stealthy larceny?

**Choices:**

A. Yes, because Nico used force to overcome Lena’s resistance and take property from her person
B. No, because purse snatching is always mere larceny
C. No, because robbery requires a weapon
D. Yes, but only if Lena suffered a serious injury

**Official key:** A.

### 4. call_and_prediction

The call asks: **Is this more than stealthy larceny?**

Prediction before choices: yes, if the facts show force used to overcome resistance.

The stem gives that fact. Lena was holding the strap tightly. Nico yanked hard enough to spin her around and break the strap.

### 5. trigger_facts

The important facts are narrow:

| Fact                        | Why it matters                     |
| --------------------------- | ---------------------------------- |
| Lena held the strap tightly | Shows resistance                   |
| Nico yanked hard            | Shows force                        |
| Lena spun around            | Confirms force beyond stealth      |
| Strap broke                 | Confirms force overcame resistance |
| No weapon/injury facts      | Cuts weapon and injury myths       |

### 6. governing_c3_lane

Lane: **Criminal Law property-crime threshold.**

C3 move: **CUT.**

Do not run a full larceny/robbery outline. Use the tiny anchor and the stem facts. The answer must explain why this taking is more than stealth.

### 7. choice_by_choice_walkthrough

#### A. Yes, because Nico used force to overcome Lena’s resistance and take property from her person

1. **Student-accessible C3 signal:** This answer uses the exact trigger fact: force overcame resistance.
2. **Student label:** Force-overcoming-resistance survivor.
3. **What a true/responsive version would look like:** This is already true and responsive.
4. **Lawyer confirmation:** Robbery requires a taking by force or intimidation. Force sufficient to overcome the victim’s resistance during the taking satisfies the force element.

#### B. No, because purse snatching is always mere larceny

1. **Student-accessible C3 signal:** The word **always** overclaims. The stem gives extra force facts.
2. **Student label:** Always-mere-larceny overclaim.
3. **What a true/responsive version would look like:** “No, if Nico merely took the purse by stealth without overcoming resistance.”
4. **Lawyer confirmation:** A stealthy snatching may be larceny, but purse snatching can be robbery when force overcomes resistance or causes dispossession.

#### C. No, because robbery requires a weapon

1. **Student-accessible C3 signal:** This invents a weapon requirement.
2. **Student label:** Weapon requirement myth.
3. **What a true/responsive version would look like:** “No, if the taking lacked force or intimidation.”
4. **Lawyer confirmation:** Robbery does not require a weapon. Force or intimidation is enough.

#### D. Yes, but only if Lena suffered a serious injury

1. **Student-accessible C3 signal:** This invents an injury threshold. The call asks how the taking happened, not how badly Lena was hurt.
2. **Student label:** Serious-injury requirement myth.
3. **What a true/responsive version would look like:** “Yes, because force was used to take the purse from Lena.”
4. **Lawyer confirmation:** Robbery requires force or fear, not serious bodily injury.

### 8. residual_answer

After the Cut:

| Choice | Result                      |
| ------ | --------------------------- |
| A      | Survives                    |
| B      | Cut: overclaim              |
| C      | Cut: fabricated weapon rule |
| D      | Cut: fabricated injury rule |

Residual answer: **A**.

### 9. legal_leak_audit

Student-accessible:

| Claim                                    | Status                   |
| ---------------------------------------- | ------------------------ |
| “Always” is a danger word                | C3-accessible            |
| Weapon requirement is fabricated         | Anchor-assisted          |
| Serious injury requirement is fabricated | Anchor-assisted          |
| Force facts control                      | C3-visible from the stem |

Quarantined to lawyer confirmation:

| Claim                               | Why quarantined                     |
| ----------------------------------- | ----------------------------------- |
| Full common-law robbery definition  | Too much doctrine for C3 first pass |
| Case-level purse-snatching doctrine | Not needed for student path         |

### 10. final_student_script

Robbery does not need a weapon or serious injury. The question is whether this was just stealth or force. Lena held the strap tightly. Nico yanked hard enough to spin her and break the strap. That is force overcoming resistance. **Pick A.**

### 11. remediation_card

**REM-CRIM-ROBBERY-PURSE-SNATCHING-01 — Purse Snatching: Check Resistance**

Signal: victim is holding the property and the defendant yanks it away.
Move: ask whether the force overcame resistance.
Tiny rule: stealthy snatching is larceny; force overcoming resistance is robbery.
Trap: weapon and injury are not required.

### 12. qa_checklist

| Check                                         | Result |
| --------------------------------------------- | ------ |
| Correct key equals residual                   | Pass   |
| Three distractors cut                         | Pass   |
| Each distractor breaks exactly one filter     | Pass   |
| No legal doctrine disguised as pure structure | Pass   |
| Gold Key used where doctrine is needed        | Pass   |
| Outline code verified                         | Pass   |

### 13. wrong_answer_recovery_paths

**If a student picked B:** They overgeneralized from “some snatchings are larceny.” Recovery: look for resistance facts before trusting “mere larceny.”

**If a student picked C:** They imported armed-robbery imagery. Recovery: robbery needs force or fear, not a weapon.

**If a student picked D:** They imported an injury threshold. Recovery: force used to take property is different from injury severity.

### 14. outline_mastery_map

| Outline code | Node                              | Mastery task                                                                     |
| ------------ | --------------------------------- | -------------------------------------------------------------------------------- |
| 73030400     | Crimes against Property > Robbery | Distinguish stealthy taking from taking by force overcoming resistance           |
| 73030100     | Crimes against Property > Larceny | Use as the neighboring lower offense, not the final answer when force is present |

### 15. crossover_intersection_map

This item touches the boundary between **larceny** and **robbery**. It also tempts a tort-like injury analysis, but injury severity is not the criminal-law threshold here. The operative exam fact is force used to take the property.

## c3_annotation

```json
{
  "question_id": "20708",
  "source": {
    "primary_workbook": "MBE.xlsx",
    "supplemental_pick_rate_workbook": "Criminal LAw.xlsx",
    "barmatrix_question_id": 20708,
    "internal_id": "CR-301"
  },
  "subject": "CRIMINAL",
  "topic": "Crimes against Property",
  "subtopic": "Robbery",
  "outline_code": "73030400",
  "official_key": "A",
  "credited_answer": "A",
  "percent_correct": 75,
  "pick_rates": {
    "A": {
      "value": 75,
      "provenance": "supplemental_source"
    },
    "B": {
      "value": 15,
      "provenance": "supplemental_source"
    },
    "C": {
      "value": 7,
      "provenance": "supplemental_source"
    },
    "D": {
      "value": 3,
      "provenance": "supplemental_source"
    }
  },
  "dominant_trap": "B",
  "governing_law_type": "RULE",
  "deciding_phase": "CUT",
  "case_study_verdict": "ANCHOR_SOLVE",
  "bank_validation_verdict": "PASS",
  "confidence": "ANCHOR_ASSISTED",
  "residual": "A",
  "answer_array": {
    "architecture": "robbery versus stealthy-larceny threshold with weapon and injury myths as side traps",
    "geometry": "one fact-engaged yes answer; one overbroad no answer; two fabricated-requirement distractors",
    "axis_if_two_survive": "force overcoming resistance versus mere stealthy snatching",
    "splitting_fact": "Lena held the purse strap tightly; Nico yanked hard enough to spin her and break the strap."
  },
  "choices": {
    "A": {
      "is_correct": true,
      "filter_broken": null,
      "mold_code": null,
      "mold_family": null,
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": [
        "correct_answer"
      ],
      "method_class": "anchor_assisted",
      "student_label": "force-overcoming-resistance survivor"
    },
    "B": {
      "is_correct": false,
      "filter_broken": "NOT_TRUE",
      "mold_code": "tiered_absolute",
      "mold_family": "EAR_OVERCLAIM",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": [
        "attractive_wrong_answer",
        "overbroad_rule",
        "common_student_myth",
        "bar_exam_bait"
      ],
      "method_class": "anchor_assisted",
      "student_label": "always-mere-larceny overclaim"
    },
    "C": {
      "is_correct": false,
      "filter_broken": "NOT_TRUE",
      "mold_code": "fabricated_rule",
      "mold_family": "EAR_OVERCLAIM",
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": [
        "misstated_rule",
        "common_student_myth",
        "sounds_lawyerly",
        "bar_exam_bait"
      ],
      "method_class": "anchor_assisted",
      "student_label": "weapon requirement myth"
    },
    "D": {
      "is_correct": false,
      "filter_broken": "NOT_TRUE",
      "mold_code": "fabricated_rule",
      "mold_family": "EAR_OVERCLAIM",
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": [
        "misstated_rule",
        "fact_not_in_evidence",
        "common_student_myth",
        "bar_exam_bait"
      ],
      "method_class": "anchor_assisted",
      "student_label": "serious injury requirement myth"
    }
  },
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-ROBBERY-FORCE-01",
      "statement": "A purse snatching becomes robbery when the defendant uses force sufficient to overcome the victim's resistance or cause dispossession. Robbery does not require a weapon or a serious injury.",
      "type": "threshold",
      "unlocks": "the stealthy-larceny, weapon, and injury traps",
      "trigger": "the victim holds the property and the defendant yanks hard enough to overcome that hold",
      "tested_choice": "B",
      "authority": "Common-law robbery; BarMatrix lb_rule_reference for Q20708",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-ROBBERY-SNATCHING-01",
      "statement": "Do not decide a purse-snatching question from the label 'snatching.' Look for the force fact: did the defendant merely take it, or did he overcome the victim's resistance?",
      "type": "trap_spotting",
      "navigates": "the always-mere-larceny distractor",
      "trigger": "answer choices fight over 'mere larceny' while the stem gives resistance facts",
      "tested_choice": "B",
      "outline_code": "73030400",
      "last_minute_review": true
    }
  ],
  "analyzer_notes": "drift_audit: Student-facing analysis uses only the force/resistance Gold Key and overclaim/fabricated-rule C3 molds; no full robbery outline. transformed_from: none. letter_map: original item, no shuffle."
}
```

## program_elements

```json
{
  "question_id": "20708",
  "traps": [
    {
      "choice": "B",
      "trap_name": "purse-snatching-is-always-larceny",
      "mold_code": "tiered_absolute",
      "why_it_pulls": "Students recognize that some purse snatchings are larceny and overgeneralize that memory.",
      "recovery_move": "Treat 'always' as a danger word and check the resistance facts."
    },
    {
      "choice": "C",
      "trap_name": "weapon-required myth",
      "mold_code": "fabricated_rule",
      "why_it_pulls": "Students associate robbery with armed robbery and import a weapon requirement.",
      "recovery_move": "Use the Gold Key: force or intimidation is enough; a weapon is not required."
    },
    {
      "choice": "D",
      "trap_name": "serious-injury-required myth",
      "mold_code": "fabricated_rule",
      "why_it_pulls": "Students mistake force sufficient for robbery with force that causes serious bodily harm.",
      "recovery_move": "Separate force used to take property from injury caused by force."
    }
  ],
  "tensions": [
    {
      "name": "stealthy larceny versus robbery",
      "axis": "force overcoming resistance",
      "fact_that_resolves": "Nico yanked hard enough to spin Lena and break the strap.",
      "winning_side": "robbery threshold satisfied"
    }
  ],
  "remediation_card": {
    "id": "REM-CRIM-ROBBERY-PURSE-SNATCHING-01",
    "title": "Purse Snatching: Check Resistance",
    "signal": "Victim is holding the purse or strap and the defendant yanks it away.",
    "student_move": "Ask whether the force overcame the victim's resistance.",
    "tiny_rule": "Mere stealthy snatching is larceny; force overcoming resistance is robbery.",
    "common_trap": "Weapon or injury is not required.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zones": [
    "purse_snatching_label_overread",
    "armed_robbery_weapon_myth",
    "injury_threshold_myth",
    "absolute_language_on_element_boundary"
  ],
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-ROBBERY-FORCE-01",
      "statement": "A purse snatching becomes robbery when the defendant uses force sufficient to overcome the victim's resistance or cause dispossession. Robbery does not require a weapon or a serious injury.",
      "type": "threshold",
      "unlocks": "the stealthy-larceny, weapon, and injury traps",
      "trigger": "the victim holds the property and the defendant yanks hard enough to overcome that hold",
      "tested_choice": "B",
      "authority": "Common-law robbery; BarMatrix lb_rule_reference for Q20708",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-ROBBERY-SNATCHING-01",
      "statement": "Do not decide a purse-snatching question from the label 'snatching.' Look for the force fact: did the defendant merely take it, or did he overcome the victim's resistance?",
      "type": "trap_spotting",
      "navigates": "the always-mere-larceny distractor",
      "trigger": "answer choices fight over 'mere larceny' while the stem gives resistance facts",
      "tested_choice": "B",
      "outline_code": "73030400",
      "last_minute_review": true
    }
  ]
}
```

## program_intelligence

```json
{
  "question_id": "20708",
  "wrong_answer_recovery": {
    "B": {
      "diagnosis": "Overgeneralized purse-snatching rule.",
      "repair": "Drill stealth-only snatching versus force-overcoming-resistance snatching.",
      "micro_prompt": "What fact shows resistance was overcome?"
    },
    "C": {
      "diagnosis": "Imported armed-robbery requirement.",
      "repair": "Drill robbery elements without weapon facts.",
      "micro_prompt": "Does robbery require a weapon, or force/fear?"
    },
    "D": {
      "diagnosis": "Imported injury threshold.",
      "repair": "Drill force-to-take versus injury-to-victim distinction.",
      "micro_prompt": "Is the question about injury severity or how the taking occurred?"
    }
  },
  "drill_seeds": [
    {
      "id": "DRILL-CRIM-ROBBERY-01",
      "prompt": "Victim's bag is loose on a chair; defendant silently takes it. Robbery or larceny?",
      "target": "mere stealth/no resistance"
    },
    {
      "id": "DRILL-CRIM-ROBBERY-02",
      "prompt": "Victim clutches a bag; defendant yanks until the handle tears. Robbery or larceny?",
      "target": "force overcoming resistance"
    },
    {
      "id": "DRILL-CRIM-ROBBERY-03",
      "prompt": "Defendant threatens to hit victim unless she hands over a wallet, but uses no weapon. Robbery or larceny?",
      "target": "intimidation without weapon"
    }
  ],
  "trap_tags": [
    "tiered_absolute",
    "fabricated_rule",
    "common_student_myth",
    "bar_exam_bait",
    "wrong_frame"
  ],
  "component_routing": {
    "primary_component": "Criminal Law property-crime threshold",
    "c3_lessons": [
      "Lesson 1 TRUE and RESPONSIVE",
      "Lesson 2 CUT -> CLASH -> CALL",
      "Lesson 4 overclaim",
      "Lesson 7 predict before peeking",
      "Lesson 12 anchor deck",
      "Lesson 13 calibration"
    ],
    "gold_key_ids": [
      "GK-CRIMINAL-ROBBERY-FORCE-01"
    ],
    "silver_key_ids": [
      "SK-CRIMINAL-ROBBERY-SNATCHING-01"
    ]
  },
  "crossovers": [
    {
      "from": "Criminal Law",
      "to": "Torts",
      "note": "Do not confuse robbery force with serious-injury concepts from assault/battery damages."
    },
    {
      "from": "Robbery",
      "to": "Larceny",
      "note": "The label 'snatching' is not enough; the resistance fact controls."
    }
  ],
  "outline_mastery": [
    {
      "outline_code": "73030400",
      "node": "Crimes against Property > Robbery",
      "mastery_task": "Distinguish mere stealthy taking from taking by force overcoming resistance."
    },
    {
      "outline_code": "73030100",
      "node": "Crimes against Property > Larceny",
      "mastery_task": "Use as the neighboring lower offense, not the tested residual."
    }
  ],
  "analytics": {
    "percent_correct": 75,
    "dominant_trap_choice": "B",
    "dominant_trap_percent": 15,
    "review_queue": false,
    "bank_validation_verdict": "PASS"
  },
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-ROBBERY-FORCE-01",
      "statement": "A purse snatching becomes robbery when the defendant uses force sufficient to overcome the victim's resistance or cause dispossession. Robbery does not require a weapon or a serious injury.",
      "type": "threshold",
      "unlocks": "the stealthy-larceny, weapon, and injury traps",
      "trigger": "the victim holds the property and the defendant yanks hard enough to overcome that hold",
      "tested_choice": "B",
      "authority": "Common-law robbery; BarMatrix lb_rule_reference for Q20708",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-ROBBERY-SNATCHING-01",
      "statement": "Do not decide a purse-snatching question from the label 'snatching.' Look for the force fact: did the defendant merely take it, or did he overcome the victim's resistance?",
      "type": "trap_spotting",
      "navigates": "the always-mere-larceny distractor",
      "trigger": "answer choices fight over 'mere larceny' while the stem gives resistance facts",
      "tested_choice": "B",
      "outline_code": "73030400",
      "last_minute_review": true
    }
  ]
}
```

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "20708"
  question_id: "20708"
  subject: "CRIMINAL"
  topic: "Crimes against Property"
  subtopic: "Robbery"
  outline_code: "73030400"
  official_key: "A"
transform_provenance:
  transformed_from: "20708"
  variant_slug: "20708"
  original_key_letter: "UNKNOWN"
  new_key_letter: "A"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_SOLVE"
  confidence: "ANCHOR_ASSISTED"
  residual: "A"
distilled_core_question: "Distilled core question not available in source file."
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 20708; source 20708.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic Crimes against Property; subtopic Robbery.
4. **distilled_core_question:** Distilled core question not available in source file.
5. **call_and_prediction:** Credited answer: A.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 73030400.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** A
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 73030400.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "20708",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "73030400",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "A",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 20708; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "20708",
  "subject": "CRIMINAL",
  "outline_code": "73030400",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-20708",
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
  "question_id": "20708",
  "subject": "CRIMINAL",
  "outline_code": "73030400",
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
    "placement": "73030400",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
