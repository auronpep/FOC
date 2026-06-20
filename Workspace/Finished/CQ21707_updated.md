---
qid: "21707"
transformed_from: "21707"
subject: "CRIMINAL"
topic: "UNKNOWN"
subtopic: "UNKNOWN"
outline_code: "72060101"
key: "A"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "C"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "Review truth not available in source file."
---
```yaml
barmatrix_row:
  qid: 21707
  internal_id: "CR-424"
  subject: "CRIMINAL"
  subject_display: "Criminal Law"
  topic_from_row: "Homicide"
  subtopic_from_row: "Homicide"
  tested_topic_override: "General Principles"
  tested_subtopic_override: "Defenses > Excuse Defenses > Responsibility"
  outline_code: "72060101"
  outline_code_reason: "The surface fact pattern is homicide, but the tested rule is insanity/responsibility under the M'Naghten test."
  selection_percentages:
    A: null
    B: null
    C: null
    D: null
  question: "Because of a severe psychotic disorder, Lior believed his sleeping roommate was a wax statue placed in the room as a prank. Acting under that delusion, Lior struck the roommate repeatedly with a hammer, killing him. The jurisdiction uses the M'Naghten test. Does Lior have a valid insanity defense?"
  call: "Does Lior have a valid insanity defense?"
  choices:
    A: "Yes, because his mental disease prevented him from knowing the nature and quality of his act"
    B: "Yes, because any mental illness excuses homicide"
    C: "No, because Lior intentionally swung the hammer"
    D: "No, because M'Naghten requires irresistible impulse"
  official_key: "A"
  correct_answer_explanation: "Lior did not understand he was striking a living human being. Under M'Naghten, lack of knowledge of the nature and quality of the act due to mental disease supports insanity."
  wrong_answer_explanations:
    B: "Mental illness alone is not enough. It must satisfy the jurisdiction's legal test. Here the defense works because the M'Naghten nature-and-quality element is met."
    C: "Insanity can excuse even intentional acts if the test is satisfied. Lior did not know the nature and quality of the act."
    D: "Irresistible impulse is a different test. M'Naghten focuses on knowledge of nature, quality, or wrongfulness."
  lb_rule_reference: "Under M'Naghten, insanity applies if, because of mental disease or defect, the defendant did not know the nature and quality of the act or did not know it was wrong."

source_stack:
  - "BarMatrix row 21707"
  - "Existing row explanations and lb_rule_reference"
  - "Controlled vocabularies"
  - "C3 lessons: TRUE/RESPONSIVE, CUT→CLASH→CALL, overclaim, Issue-Sense, anchor deck, calibration"
  - "C3 Master Deck split note: insanity test depends on the jurisdiction's selected test"
  - "Official legal explanation as lawyer confirmation only"

student_access_contract:
  controlling_test: "Could a smart 10-year-old who completed only the C3 lessons, subject overlays, and taught tiny anchors identify this choice's problem without outside legal doctrine?"
  allowed_student_moves:
    - "Lock the call: insanity defense, not whether Lior physically swung the hammer."
    - "Use the stem-selected test: M'Naghten."
    - "Apply the Gold Key: M'Naghten is a knowledge test."
    - "Cut overclaims like 'any mental illness.'"
    - "Cut answers that import the wrong insanity test."
  required_gold_key:
    id: "GK-CRIMINAL-MNAGHTEN-NATURE-QUALITY-01"
    statement: "Under M'Naghten, insanity exists when, because of mental disease or defect, the defendant did not know the nature and quality of the act or did not know the act was wrong. It is not enough that the defendant had any mental illness, and M'Naghten is not the irresistible-impulse test."
    type: "distinction"
    unlocks: "A over C and D; B overclaim"
    trigger: "The stem says the jurisdiction uses M'Naghten."
    tested_choice: "D"
    authority: "M'Naghten formulation supplied by the BarMatrix row's lb_rule_reference."
    last_minute_review: true
  required_silver_key:
    id: "SK-CRIMINAL-INSANITY-LOCK-THE-TEST-01"
    statement: "When the stem names the insanity test, do not switch tests and do not answer the adjacent question of whether the defendant moved intentionally. Ask what that named test measures."
    type: "trap_spotting"
    navigates: "wrong-test and intentional-act traps"
    trigger: "The call asks for insanity and the stem names M'Naghten."
    tested_choice: "C"
    outline_code: "72060101"
    last_minute_review: true
  forbidden_student_moves:
    - "Do not build a full insanity-law outline."
    - "Do not treat every mental illness as legally sufficient."
    - "Do not import irresistible impulse when the stem selects M'Naghten."
    - "Do not say C is false as a fact; it is true but not responsive."

stem_parse:
  actor: "Lior"
  victim: "sleeping roommate"
  mental_condition: "severe psychotic disorder"
  delusion: "Lior believed the roommate was a wax statue placed as a prank."
  conduct: "Lior struck the roommate repeatedly with a hammer."
  result: "The roommate died."
  jurisdictional_fact: "The jurisdiction uses the M'Naghten test."
  call_type: "valid insanity defense"
  negative_stem_inversion: false
  adjacent_call_traps:
    - "Did Lior intentionally swing the hammer?"
    - "Does any mental illness excuse homicide?"
    - "Would irresistible impulse excuse him under another test?"

trigger_facts:
  - fact: "Severe psychotic disorder"
    access_label: "student_visible"
    role: "supplies the mental disease predicate"
  - fact: "Believed roommate was a wax statue"
    access_label: "student_visible"
    role: "supplies the nature-and-quality fact"
  - fact: "Repeated hammer strikes"
    access_label: "student_visible"
    role: "supports the intentional-act distractor"
  - fact: "Jurisdiction uses M'Naghten"
    access_label: "student_visible"
    role: "selects the governing test and excludes irresistible impulse"
  - fact: "Roommate was killed"
    access_label: "student_visible"
    role: "homicide surface issue; not the deciding defense element"

c3_routing:
  subject_fit: "Criminal Law = element/status classification plus mental-state or defense gate."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  confidence: "PURE_ANCHOR"
  deciding_choice_method_class: "pure_anchor"
  residual: "A"
  official_key_agreement: true
  fork_type: null
  calibration_band: "Known anchor, clean residual after three named cuts."

answer_array:
  architecture: "Named-test insanity array"
  geometry: "Two yes answers and two no answers. A is the named-test survivor; B overclaims mental illness; C answers intentional act; D imports a different test."
  dominant_trap: "C"
  dominant_trap_basis: "Analytically most attractive without pick-rate data because the stem says Lior intentionally struck with a hammer."
  c3_lane: "Anchor-first CUT"
  gold_key_ref: "GK-CRIMINAL-MNAGHTEN-NATURE-QUALITY-01"
  silver_key_ref: "SK-CRIMINAL-INSANITY-LOCK-THE-TEST-01"

choice_walkthroughs:
  A:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "pure_anchor"
    student_label: "M'Naghten nature-and-quality survivor"
    c3_signal: "This choice matches the stem-selected test and the wax-statue fact."
    lawyer_confirmation: "Because Lior did not understand that he was striking a living human being, the nature-and-quality prong is satisfied."
  B:
    filter_broken: "NOT_TRUE"
    mold_code: "tiered_absolute"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "overbroad_rule"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "hard_structural"
    student_label: "any-mental-illness overclaim"
    c3_signal: "The word 'any' makes the answer too broad."
    lawyer_confirmation: "Mental illness alone is not enough; the illness must satisfy the jurisdiction's legal insanity test."
  C:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "legally_true_but_irrelevant"
      - "answer_to_different_question"
      - "wrong_mental_state"
      - "attractive_wrong_answer"
    method_class: "anchor_assisted"
    student_label: "intentional-swing wrong element"
    c3_signal: "The choice answers whether Lior intentionally moved his arm, not whether the named insanity test is satisfied."
    lawyer_confirmation: "A defendant can intentionally perform the physical act and still be legally insane if the M'Naghten test is met."
  D:
    filter_broken: "NOT_TRUE"
    mold_code: "flat_misstatement"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "misstated_rule"
      - "wrong_standard"
      - "bar_exam_bait"
    method_class: "pure_anchor"
    student_label: "wrong insanity test"
    c3_signal: "The stem says M'Naghten; this choice swaps in irresistible impulse."
    lawyer_confirmation: "Irresistible impulse is a separate insanity formulation; M'Naghten focuses on knowledge of nature, quality, or wrongfulness."

residual_answer:
  answer: "A"
  why_survives: "It alone uses both the selected legal test and the dispositive fact: Lior's delusion made him think he was striking a wax statue rather than a living person."
  confidence_band: "PURE_ANCHOR"
  no_clash_needed: true

legal_leak_audit:
  student_accessible_claims:
    - claim: "B overclaims because it says any mental illness excuses homicide."
      status: "hard_structural"
    - claim: "C answers a neighboring issue: intentional movement rather than insanity."
      status: "anchor_assisted"
    - claim: "D uses the wrong test after the stem selects M'Naghten."
      status: "pure_anchor"
    - claim: "A matches the M'Naghten nature-and-quality anchor."
      status: "pure_anchor"
  lawyer_only_claims:
    - claim: "The historical formulation of M'Naghten includes knowledge of nature and quality or wrongfulness."
      quarantine: "lawyer_confirmation only"
    - claim: "Irresistible impulse is a separate insanity test."
      quarantine: "lawyer_confirmation only except as taught Gold Key"
  drift_audit: "The student path uses the named-test anchor. It does not become a general insanity outline."

remediation:
  card_id: "REM-CRIM-MNAGHTEN-01"
  title: "M'Naghten Is a Knowledge Test"
  signal: "Stem names M'Naghten and the facts show a delusion about what the defendant was doing."
  student_move: "Ask whether the defendant knew the nature and quality of the act or knew it was wrong."
  tiny_rule: "Mental illness alone is not enough; irresistible impulse is not M'Naghten."
  trap: "The wrong answers either overclaim illness, focus on intentional movement, or switch tests."
  method_class: "pure_anchor"

case_study_output:
  final_student_script: "The stem gives the test: M'Naghten. That test asks whether mental disease kept Lior from knowing the nature and quality of his act or that it was wrong. He thought he was hitting a wax statue, not a living roommate. B says too much, C answers the intentional-act issue, and D imports irresistible impulse. Pick A."
  residual: "A"
  verdict: "ANCHOR_SOLVE"

quality_control:
  official_key_matches_residual: true
  exactly_three_distractors: true
  each_distractor_has_one_filter: true
  controlled_vocab_checked: true
  outline_code_checked: true
  legal_leak_quarantined: true
  bank_validation_verdict: "PASS"

analytics_hooks:
  primary_component: "Criminal Law insanity anchor"
  dominant_trap_choice: "C"
  trap_tags:
    - "wrong_mental_state"
    - "wrong_standard"
    - "overbroad_rule"
  drill_family: "M'Naghten versus irresistible impulse"
  outline_code: "72060101"
  review_queue: false
```

## 1. program_frame

This is a Criminal Law defense question wearing a homicide fact pattern. The tested move is not homicide grading. It is the insanity test selected by the stem.

The frame is:

**M'Naghten named → knowledge test → wax-statue delusion → valid insanity defense.**

## 2. student_access_test

This item is **anchor-dependent**. A student cannot derive M'Naghten from answer grammar alone.

The C3-accessible path works only after this tiny anchor is taught:

**Gold Key:** Under M'Naghten, insanity applies when mental disease prevents the defendant from knowing the nature and quality of the act or knowing the act was wrong. It is not the irresistible-impulse test.

## 3. question_data

**Subject:** Criminal Law
**Surface topic:** Homicide
**Tested outline location:** Defenses → Excuse Defenses → Responsibility
**Outline code:** 72060101
**Official key:** A

**Call:** Does Lior have a valid insanity defense?

**Stem facts:** Lior had a severe psychotic disorder. He believed his sleeping roommate was a wax statue placed in the room as a prank. Acting under that delusion, he struck the roommate with a hammer and killed him. The jurisdiction uses the M'Naghten test.

## 4. call_and_prediction

The call asks about **insanity**, not whether Lior caused the death and not whether he physically intended the hammer strikes.

Prediction before choices:

Because the stem selects M'Naghten, look for an answer about knowledge of the nature and quality of the act or wrongfulness. Lior thought he was hitting a wax statue. That supports insanity.

Predicted answer: **Yes, valid insanity defense.**

## 5. trigger_facts

| Fact                               | C3 role                                  |
| ---------------------------------- | ---------------------------------------- |
| Severe psychotic disorder          | Mental disease predicate                 |
| Believed roommate was a wax statue | Dispositive nature-and-quality fact      |
| Repeatedly struck with hammer      | Makes C attractive but not dispositive   |
| Jurisdiction uses M'Naghten        | Selects the test and blocks D            |
| Roommate died                      | Homicide surface, not the deciding issue |

## 6. governing_c3_lane

**Lane:** Anchor-first CUT.

This is not a pure hard-structural item. The answer turns on a named rule. Once the M'Naghten anchor is known, the cuts are clean:

B overclaims.
C answers the wrong element.
D imports the wrong test.
A remains.

## 7. choice_by_choice_walkthrough

### A. Yes, because his mental disease prevented him from knowing the nature and quality of his act

1. **Student-accessible C3 signal:** This choice matches the stem-selected test and the wax-statue fact.

2. **Student label:** M'Naghten nature-and-quality survivor.

3. **What a true/responsive version would look like:** This is already the true and responsive version. It says yes because the mental disease prevented Lior from understanding what he was actually doing.

4. **Lawyer confirmation:** Under M'Naghten, a defendant is insane if, due to mental disease or defect, he did not know the nature and quality of the act or did not know it was wrong. Thinking a living person is a wax statue fits the nature-and-quality branch.

### B. Yes, because any mental illness excuses homicide

1. **Student-accessible C3 signal:** The word **any** is the tell. It makes the answer too broad.

2. **Student label:** Any-mental-illness overclaim.

3. **What a true/responsive version would look like:** “Yes, if the mental illness satisfies the jurisdiction’s insanity test.”

4. **Lawyer confirmation:** Mental illness alone does not establish legal insanity. The illness must meet the applicable test. Here the defense works because the M'Naghten nature-and-quality prong is satisfied, not because any illness excuses homicide.

### C. No, because Lior intentionally swung the hammer

1. **Student-accessible C3 signal:** This answers the adjacent question: did Lior intentionally move his body? The call asks whether he has an insanity defense.

2. **Student label:** Intentional-swing wrong element.

3. **What a true/responsive version would look like:** “No, because despite his mental disease, Lior knew he was striking a living person and knew what he was doing.”

4. **Lawyer confirmation:** Insanity can excuse intentional conduct if the legal test is met. The fact that Lior intentionally swung the hammer does not defeat M'Naghten when he did not understand the nature and quality of the act.

### D. No, because M'Naghten requires irresistible impulse

1. **Student-accessible C3 signal:** The stem says M'Naghten. The choice swaps in a different insanity test.

2. **Student label:** Wrong-test trap.

3. **What a true/responsive version would look like:** “No, because Lior knew the nature and quality of his act and knew it was wrong.” That would be a M'Naghten reason.

4. **Lawyer confirmation:** Irresistible impulse is a separate insanity formulation. M'Naghten focuses on knowledge of the nature and quality of the act or wrongfulness.

## 8. residual_answer

**Residual answer: A.**

A is the only choice that both uses the selected test and uses the dispositive fact. Lior’s delusion was not just general mental illness. It made him not understand that he was striking a living human being.

## 9. legal_leak_audit

**Student-accessible:**

| Claim                                             | Access result               |
| ------------------------------------------------- | --------------------------- |
| “Any mental illness” is too broad.                | Hard structural overclaim   |
| “Intentional swing” answers a neighboring issue.  | Anchor-assisted Issue-Sense |
| “Irresistible impulse” is not M'Naghten.          | Pure anchor                 |
| “Nature and quality” matches the wax-statue fact. | Pure anchor                 |

**Quarantined lawyer doctrine:**

The full history and variants of insanity tests are not taught here. The student only needs the narrow exam anchor: **M'Naghten = knowledge of nature/quality or wrongfulness.**

## 10. final_student_script

The call is insanity. The stem gives the test: M'Naghten. M'Naghten is a knowledge test. Lior thought the roommate was a wax statue, so he did not know the nature and quality of his act. B overclaims with “any mental illness.” C is true but answers the wrong question. D uses the wrong test. **A is correct.**

## 11. remediation_card

**Card:** M'Naghten Is Not “Any Mental Illness” and Not “Irresistible Impulse”

**Signal:** The stem names M'Naghten.

**Move:** Lock the named test before reading the choices.

**Tiny anchor:** M'Naghten asks whether mental disease kept the defendant from knowing the nature and quality of the act or knowing it was wrong.

**Trap:** Choices will try to (1) excuse every mental illness, (2) focus on intentional action, or (3) import irresistible impulse.

## 12. qa_checklist

| QA item                                            | Result |
| -------------------------------------------------- | ------ |
| Official key matches residual                      | Pass   |
| Credited answer breaks no filter                   | Pass   |
| Each distractor breaks exactly one filter          | Pass   |
| No fake structure used for M'Naghten               | Pass   |
| Doctrine kept under Gold Key / lawyer confirmation | Pass   |
| Bank validation verdict                            | PASS   |

## 13. wrong_answer_recovery_paths

**If the student picked B:**
They over-expanded insanity. Drill “legal insanity requires the selected test, not mental illness generally.”

**If the student picked C:**
They answered act intent instead of defense. Drill “a true fact can still be nonresponsive.”

**If the student picked D:**
They switched tests. Drill “when the stem names the jurisdiction’s test, lock that test and reject neighboring tests.”

## 14. outline_mastery_map

**Primary outline code:** 72060101 — Defenses → Excuse Defenses → Responsibility.

**Why not Homicide as the main code:** The death creates the charge, but the tested rule is the insanity defense. The correct answer is not about murder elements, malice, premeditation, manslaughter, or causation.

## 15. crossover_intersection_map

| Intersection            | Role                                 |
| ----------------------- | ------------------------------------ |
| Homicide                | Surface crime                        |
| Mens rea / act intent   | C distractor                         |
| Excuse defenses         | Tested issue                         |
| Insanity-test split     | Stem resolves by selecting M'Naghten |
| Rule-vs-standard triage | Rule/anchor item                     |

### c3_annotation

```json
{
  "question_id": "21707",
  "internal_id": "CR-424",
  "subject": "CRIMINAL",
  "subject_display": "Criminal Law",
  "topic": "Homicide",
  "subtopic": "Homicide",
  "tested_topic": "General Principles",
  "tested_subtopic": "Defenses > Excuse Defenses > Responsibility",
  "outline_code": "72060101",
  "official_key": "A",
  "credited_answer": "A",
  "residual": "A",
  "governing_law_type": "RULE",
  "deciding_phase": "CUT",
  "case_study_verdict": "ANCHOR_SOLVE",
  "bank_validation_verdict": "PASS",
  "confidence": "PURE_ANCHOR",
  "method_class_deciding_choice": "pure_anchor",
  "fork_type": null,
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-MNAGHTEN-NATURE-QUALITY-01",
      "statement": "Under M'Naghten, insanity exists when, because of mental disease or defect, the defendant did not know the nature and quality of the act or did not know the act was wrong. It is not enough that the defendant had any mental illness, and M'Naghten is not the irresistible-impulse test.",
      "type": "distinction",
      "unlocks": "the intentional-act and wrong-test traps",
      "trigger": "The stem says the jurisdiction uses M'Naghten.",
      "tested_choice": "D",
      "authority": "BarMatrix row lb_rule_reference",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-INSANITY-LOCK-THE-TEST-01",
      "statement": "When the stem names the insanity test, do not switch tests and do not answer the adjacent question of whether the defendant moved intentionally. Ask what that named test measures.",
      "type": "trap_spotting",
      "navigates": "wrong-test and intentional-act traps",
      "trigger": "The call asks for insanity and the stem names M'Naghten.",
      "tested_choice": "C",
      "outline_code": "72060101",
      "last_minute_review": true
    }
  ],
  "choices": {
    "A": {
      "filter_broken": null,
      "mold_code": null,
      "mold_family": null,
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": [
        "correct_answer"
      ],
      "method_class": "pure_anchor",
      "student_label": "M'Naghten nature-and-quality survivor"
    },
    "B": {
      "filter_broken": "NOT_TRUE",
      "mold_code": "tiered_absolute",
      "mold_family": "EAR_OVERCLAIM",
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": [
        "overbroad_rule",
        "common_student_myth",
        "bar_exam_bait"
      ],
      "method_class": "hard_structural",
      "student_label": "any-mental-illness overclaim"
    },
    "C": {
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "wrong_element",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": [
        "legally_true_but_irrelevant",
        "answer_to_different_question",
        "wrong_mental_state",
        "attractive_wrong_answer"
      ],
      "method_class": "anchor_assisted",
      "student_label": "intentional-swing wrong element"
    },
    "D": {
      "filter_broken": "NOT_TRUE",
      "mold_code": "flat_misstatement",
      "mold_family": "EAR_FALSITY",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": [
        "misstated_rule",
        "wrong_standard",
        "bar_exam_bait"
      ],
      "method_class": "pure_anchor",
      "student_label": "wrong insanity test"
    }
  },
  "analyzer_notes": "drift_audit: The item is coded to 72060101 because the tested issue is insanity/responsibility, despite homicide surface facts. No full insanity outline is taught. D is not treated as structurally false without the M'Naghten Gold Key."
}
```

### program_elements

```json
{
  "question_id": "21707",
  "program_frame": "Criminal Law defense item with homicide surface facts",
  "primary_traps": [
    {
      "choice": "B",
      "trap_name": "any mental illness overclaim",
      "mold_code": "tiered_absolute",
      "filter_broken": "NOT_TRUE",
      "student_repair": "Replace 'any mental illness' with 'mental illness satisfying the named test.'"
    },
    {
      "choice": "C",
      "trap_name": "intentional act versus insanity",
      "mold_code": "wrong_element",
      "filter_broken": "NOT_RESPONSIVE",
      "student_repair": "The fact that the defendant intentionally moved does not answer whether the insanity test is met."
    },
    {
      "choice": "D",
      "trap_name": "wrong insanity test",
      "mold_code": "flat_misstatement",
      "filter_broken": "NOT_TRUE",
      "student_repair": "Lock the jurisdiction's named test before evaluating the answers."
    }
  ],
  "tensions": [
    {
      "name": "M'Naghten knowledge test versus intentional act",
      "axis": "Did mental disease prevent knowledge of the nature and quality of the act?",
      "resolving_fact": "Lior believed the roommate was a wax statue."
    },
    {
      "name": "M'Naghten versus irresistible impulse",
      "axis": "Which insanity test did the jurisdiction select?",
      "resolving_fact": "The stem states that the jurisdiction uses M'Naghten."
    }
  ],
  "remediation_card": {
    "id": "REM-CRIM-MNAGHTEN-01",
    "title": "M'Naghten Is a Knowledge Test",
    "signal": "The stem names M'Naghten.",
    "student_move": "Ask whether the defendant knew the nature and quality of the act or knew it was wrong.",
    "tiny_rule": "Mental illness alone is not enough; irresistible impulse is not M'Naghten.",
    "trap": "The wrong answers overclaim illness, focus on intentional movement, or switch tests."
  },
  "red_zones": [
    "Treating mental illness as automatically sufficient",
    "Treating intentional movement as defeating insanity",
    "Switching from M'Naghten to irresistible impulse",
    "Coding the item as homicide rather than responsibility"
  ],
  "gold_key_ids": [
    "GK-CRIMINAL-MNAGHTEN-NATURE-QUALITY-01"
  ],
  "silver_key_ids": [
    "SK-CRIMINAL-INSANITY-LOCK-THE-TEST-01"
  ]
}
```

### program_intelligence

```json
{
  "question_id": "21707",
  "wrong_answer_recovery": {
    "B": {
      "diagnosis": "Student thinks any mental illness excuses homicide.",
      "repair_path": "Drill overclaim language and the named-test requirement.",
      "next_drill_seed": "Compare 'any mental illness' with 'mental illness satisfying M'Naghten.'"
    },
    "C": {
      "diagnosis": "Student answered act intent instead of the insanity defense.",
      "repair_path": "Drill wrong-element traps where a true fact does not answer the call.",
      "next_drill_seed": "Intentional swing versus knowledge of nature and quality."
    },
    "D": {
      "diagnosis": "Student imported a neighboring insanity test.",
      "repair_path": "Drill named-test lock: M'Naghten, irresistible impulse, MPC.",
      "next_drill_seed": "Reject irresistible impulse when the stem says M'Naghten."
    }
  },
  "drill_seeds": [
    {
      "id": "DRILL-CRIM-MNAGHTEN-01",
      "prompt": "A defendant thinks he is smashing a mannequin but kills a person. The jurisdiction uses M'Naghten. Which fact matters?",
      "target_component": "nature-and-quality knowledge"
    },
    {
      "id": "DRILL-CRIM-INSANITY-TESTS-02",
      "prompt": "Stem names M'Naghten; answer says irresistible impulse. Cut or keep?",
      "target_component": "wrong-test detection"
    },
    {
      "id": "DRILL-C3-WRONG-ELEMENT-03",
      "prompt": "Choice says defendant intentionally performed the act. Call asks insanity. Name the filter.",
      "target_component": "Issue-Sense wrong_element"
    }
  ],
  "trap_tags": [
    "overbroad_rule",
    "wrong_mental_state",
    "wrong_standard",
    "answer_to_different_question",
    "bar_exam_bait"
  ],
  "component_routing": {
    "primary_component": "Criminal insanity anchor",
    "secondary_component": "Issue-Sense wrong-element",
    "tertiary_component": "Ear overclaim"
  },
  "crossovers": [
    {
      "area": "Homicide",
      "note": "Surface crime only; not the tested rule."
    },
    {
      "area": "Mens rea",
      "note": "C distractor uses intentional act as bait."
    },
    {
      "area": "Insanity-test split",
      "note": "Stem selects M'Naghten, so no fork remains."
    }
  ],
  "outline_mastery": {
    "outline_code": "72060101",
    "mastery_target": "Defenses > Excuse Defenses > Responsibility",
    "student_should_know": [
      "M'Naghten is a knowledge test.",
      "Mental illness alone is insufficient.",
      "Irresistible impulse is a different test.",
      "An intentional physical act can still be excused by insanity."
    ]
  },
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-MNAGHTEN-NATURE-QUALITY-01",
      "statement": "Under M'Naghten, insanity exists when, because of mental disease or defect, the defendant did not know the nature and quality of the act or did not know the act was wrong. It is not enough that the defendant had any mental illness, and M'Naghten is not the irresistible-impulse test.",
      "type": "distinction",
      "unlocks": "the intentional-act and wrong-test traps",
      "trigger": "The stem says the jurisdiction uses M'Naghten.",
      "tested_choice": "D",
      "authority": "BarMatrix row lb_rule_reference",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-INSANITY-LOCK-THE-TEST-01",
      "statement": "When the stem names the insanity test, do not switch tests and do not answer the adjacent question of whether the defendant moved intentionally. Ask what that named test measures.",
      "type": "trap_spotting",
      "navigates": "wrong-test and intentional-act traps",
      "trigger": "The call asks for insanity and the stem names M'Naghten.",
      "tested_choice": "C",
      "outline_code": "72060101",
      "last_minute_review": true
    }
  ],
  "bank_validation_verdict": "PASS",
  "case_study_verdict": "ANCHOR_SOLVE",
  "confidence": "PURE_ANCHOR"
}
```

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "21707"
  question_id: "21707"
  subject: "CRIMINAL"
  topic: "UNKNOWN"
  subtopic: "UNKNOWN"
  outline_code: "72060101"
  official_key: "A"
transform_provenance:
  transformed_from: "21707"
  variant_slug: "21707"
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

### 2. The 17-section student case study

```
1. **program_frame:** Question 21707; source 21707.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic UNKNOWN; subtopic UNKNOWN.
4. **distilled_core_question:** Distilled core question not available in source file.
5. **call_and_prediction:** Credited answer: A.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 72060101.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** A
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 72060101.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "21707",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "72060101",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 21707; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "21707",
  "subject": "CRIMINAL",
  "outline_code": "72060101",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-21707",
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
  "question_id": "21707",
  "subject": "CRIMINAL",
  "outline_code": "72060101",
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
    "placement": "72060101",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
