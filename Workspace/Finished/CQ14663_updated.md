---
qid: "14663"
transformed_from: "14663"
subject: "CRIMINAL"
topic: "Criminal Law"
subtopic: "Homicide"
outline_code: "74020101"
key: "A"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "choice: \"C"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder."
---
Source row and output contract reviewed. The source file requires a Christian-first creative transform followed by the full C3 pipeline, with legal research quarantined to lawyer-confirmation, and it gives QID 14663’s original homicide question, answer choices, pick rates, official key, and depraved-heart explanation.   The reasoning posture file was also reviewed; it frames hard work as “never whether, only how,” with candor against overclaiming. 

# A) PASS-1 TRANSFORM REPORT

## 1. Final question — chosen Christian variation

Daniel became angry after Lydia, the owner of a privately owned Christian bookstore and shipping warehouse, unexpectedly ended his longtime paid job as warehouse manager. The next day, Daniel returned to the warehouse floor during ordinary business hours and indiscriminately fired shotgun rounds into the ceiling rafters. Daniel later testified, without contradiction, that he had not intended to kill anyone but had simply sought to get revenge on Lydia by forcing the warehouse to close for the day. Unfortunately, one of the pellets ricocheted off a metal beam and killed Daniel’s best friend, Peter.

The crimes below are listed in descending order of seriousness. On these facts, what is the most serious offense of which Daniel properly could be convicted?

## 2. Distilled Core Question

A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?

## 3. Final answer choices

A. Murder.
B. Voluntary manslaughter.
C. Involuntary manslaughter.
D. Assault.

## 4. Possible replacement answer choices

These are audit candidates only. Final version keeps the original ladder because it is short, memorable, and MBE-clean.

| Original choice | Original pick % | Candidate replacement  | Filter         | Mold          | Clean elimination line                                                            |
| --------------- | --------------: | ---------------------- | -------------- | ------------- | --------------------------------------------------------------------------------- |
| B               |              7% | Reckless endangerment. | NOT_RESPONSIVE | wrong_element | It may fit the conduct, but the call asks the most serious offense after a death. |
| D               |              0% | Criminal mischief.     | NOT_RESPONSIVE | misfit        | It answers property-disruption revenge, not the killing-result ladder.            |
| D               |              0% | Attempted murder.      | NOT_TRUE       | wrong_element | The stem supplies no intent to kill; this would add the wrong mental-state rung.  |

**Final audit choice:** keep B, C, D. B preserves the mitigation trap. C preserves the dominant wrong answer from the original data. D preserves the bottom-rung contrast.

## 5. Correct answer

A. Murder.

## 6. Full right-answer explanation

**Gold Key:** Depraved-heart murder does not require an intent to kill. If the defendant deliberately creates an extreme risk to human life with no real social utility, malice can be supplied by reckless indifference.

**Silver Key:** When the call says the crimes are listed in descending seriousness, test the top rung first. Once murder is legally available, lower offenses lose even if they might also be provable.

Daniel deliberately fired shotgun rounds inside an operating warehouse. The ricochet death is not treated as a mere accident for the most-serious-offense call. His no-intent-to-kill testimony blocks intentional murder, but it does not block depraved-heart murder. Murder is the highest available offense, so A is correct.

## 7. Full wrong-answer explanations

**B. Voluntary manslaughter.**
Wrong. **Gold Key:** Voluntary manslaughter needs a legally adequate mitigation story. Ordinary anger, job loss, revenge, or humiliation is not enough. This answer tries to turn “angry” into the homicide reduction, but the stem’s force is different: extreme risk to human life.

**C. Involuntary manslaughter.**
Wrong. This is the dominant trap. It feels right because Daniel did not intend to kill. But **Silver Key:** the call asks for the most serious offense. Depraved-heart murder is above involuntary manslaughter on the ladder.

**D. Assault.**
Wrong. Assault may describe part of the conduct in some jurisdictions, but the call is not “what lesser offense can be charged?” It asks the most serious offense after a death.

## 8. Full black-letter-law verification and legal reasoning

The original official explanation states the tested rule: common-law murder is an unlawful killing with malice aforethought, and malice can exist through reckless indifference to an unjustifiably high risk to human life, often called depraved-heart murder; the official row also confirms A as the key. 

The variation preserves that rule. Daniel did not intend to kill, but he intentionally fired shotgun rounds in an occupied commercial setting to force a shutdown. That is the same legal structure as the original: reckless life-endangering conduct, no intent to kill, unintended death, murder as the top available offense. In *People v. Knoller*, the California Supreme Court described implied malice as an act whose natural consequences are dangerous to life, deliberately performed with knowledge of the danger and conscious disregard for life. ([Scocal][1]) *Commonwealth v. Malone* is the classic depraved-heart case; the Pennsylvania Supreme Court used a gun-risk fact pattern to explain that reckless conduct resulting in death can show malice, including the example of firing a gun into a crowd. ([Justia Law][2]) The Model Penal Code’s modern analog likewise treats reckless homicide under circumstances manifesting extreme indifference to human life as murder. ([Criminal Law Web][3])

## 9. Why the variation preserves rigor and difficulty

The Christian flavor stays outside the legal mechanics. The private bookstore/warehouse setting replaces the factory, Lydia replaces the owner, and Peter replaces the friend. No First Amendment, church governance, employment statute, property, or competency issue is added. The exact trap remains: “no intent to kill” tempts involuntary manslaughter, but “most serious offense” plus depraved-heart malice points to murder.

## 10. C3 elimination walkthrough — CUT → CLASH → CALL

**CUT.**
B is cut with a Gold Key: anger/revenge is not the mitigation trigger for voluntary manslaughter.
D is cut as the wrong layer: assault is a conduct offense, but the call asks the most serious offense after a death.

**CLASH.**
A and C create the real fight: murder vs involuntary manslaughter. The axis is the mental-state rung. The splitting fact is not intent to kill; it is deliberately firing shotgun rounds inside an operating warehouse.

**CALL.**
Apply the Gold Key: extreme reckless indifference can supply malice. Apply the Silver Key: the choices are listed in descending seriousness. Murder is available, so stop at A.

## 11. Review Truth

No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.

## 12. Five variations considered

|  # | Title                            | Setting                               | Cast                    | Preserved issue                                   | Why memorable                                   | Legal risks                                             | Recommendation |
| -: | -------------------------------- | ------------------------------------- | ----------------------- | ------------------------------------------------- | ----------------------------------------------- | ------------------------------------------------------- | -------------- |
|  1 | **Rafters at Lydia’s Bookstore** | Private Christian bookstore warehouse | Daniel, Lydia, Peter    | Depraved-heart murder vs involuntary manslaughter | Shotgun pellets ricochet off warehouse rafters  | None if private business stays ordinary                 | **Chosen**     |
|  2 | Choir Robe Storage Room          | Private choral supply company         | Timothy, Ruth, John     | Same                                              | “Shut down the rehearsal shipment” image sticks | Risk of sounding church-internal                        | Rejected       |
|  3 | Bible College Print Shop         | Private school print shop             | Stephen, Mary, Barnabas | Same                                              | Print-shop shutdown is close to factory         | School facts could suggest institutional policy clutter | Rejected       |
|  4 | Private Retreat Center Kitchen   | Private retreat center                | Paul, Martha, Andrew    | Same                                              | Firing into kitchen ceiling is vivid            | More premises/safety clutter                            | Rejected       |
|  5 | Hymnbook Bindery                 | Private bindery                       | John, Esther, Thomas    | Same                                              | “Hymnbook bindery” is memorable                 | Less familiar setting; possible distraction             | Rejected       |

### 99. Letter Map

see Letter Map section

### 99. Full black-letter-law verification and legal reasoning for the right answer

See the preserved black-letter-law verification and legal reasoning above.

### 99. Brief note on why the variation preserves the original rigor/difficulty

The existing authored variation and analysis are preserved; this repair normalizes the missing Pass-1 contract surface.

### 99. Divergence Audit

The source file did not expose a standalone Pass-1 Divergence Audit heading. Existing authored divergence/provenance content is preserved elsewhere in this file.

### 99. The 5 variations considered

See preserved variation audit content above when present.

# B) PASS-2 FIVE BLOCKS

## B1) Question YAML

```yaml
barmatrix_row:
  question_id: "14663_lydias_bookstore_warehouse"
  transformed_from: "14663"
  subject: "CRIMINAL"
  topic: "Criminal Law"
  subtopic: "Homicide"
  original_focus_group_avg_pct: 83
  selection_percentages:
    A:
      pct: 83
      provenance: "original measured; inherited by same answer position/concept"
    B:
      pct: 7
      provenance: "original measured; inherited by same answer position/concept"
    C:
      pct: 10
      provenance: "original measured; inherited by same answer position/concept; dominant wrong-answer trap"
    D:
      pct: 0
      provenance: "original measured; inherited by same answer position/concept"
  official_key: "A"
  transformed_key: "A"
  call: "The crimes below are listed in descending order of seriousness. On these facts, what is the most serious offense of which Daniel properly could be convicted?"
  stem: "Daniel became angry after Lydia, the owner of a privately owned Christian bookstore and shipping warehouse, unexpectedly ended his longtime paid job as warehouse manager. The next day, Daniel returned to the warehouse floor during ordinary business hours and indiscriminately fired shotgun rounds into the ceiling rafters. Daniel later testified, without contradiction, that he had not intended to kill anyone but had simply sought to get revenge on Lydia by forcing the warehouse to close for the day. Unfortunately, one of the pellets ricocheted off a metal beam and killed Daniel’s best friend, Peter."
  choices:
    A: "Murder."
    B: "Voluntary manslaughter."
    C: "Involuntary manslaughter."
    D: "Assault."

source_stack:
  priority_1_barmatrix_row:
    qid: "14663"
    role: "source of rule, answer array, official key, official explanation, wrong-answer explanations, pick rates"
  priority_2_existing_tags:
    status: "none supplied for this specific item"
  priority_3_c3_method:
    allowed_cards:
      - "TRUE_AND_RESPONSIVE"
      - "CUT_CLASH_CALL"
      - "ANSWER_ARRAY_DESCENDING_SERIOUSNESS"
      - "GOLD_KEY_DEPRAVED_HEART"
      - "SILVER_KEY_TOP_RUNG_FIRST"
  priority_4_lawyer_confirmation:
    role: "authority-only; not used to invent student-access structure"
    authorities:
      - "People v. Knoller"
      - "Commonwealth v. Malone"
      - "Model Penal Code § 210.2(1)(b)"
  reasoning_creed_influence:
    note: "Preserve ambitious Christian transform while pinning legal risk to safest facts."

student_access_contract:
  controlling_test: "Could a smart 10-year-old who completed the C3 lessons, overlays, and taught Gold/Silver Keys identify the problem without outside doctrine?"
  allowed_without_anchor:
    - "The call asks for the most serious offense."
    - "The choices are explicitly listed in descending seriousness."
    - "A lower offense loses once a higher legally available offense is unlocked."
    - "Assault is a lower conduct layer than a death-result homicide layer."
  anchor_required:
    - "Depraved-heart murder can exist without intent to kill."
    - "Anger/revenge after losing work is not adequate provocation for voluntary manslaughter."
  prohibited_from_student_path:
    - "Full homicide outline."
    - "Uncited jurisdiction-specific degree labels."
    - "Lawyer-only treatise distinctions beyond the Gold Key."

stem_parse:
  actors:
    defendant: "Daniel"
    owner: "Lydia"
    victim: "Peter"
  setting: "privately owned Christian bookstore and shipping warehouse"
  conduct:
    - "Daniel returned during ordinary business hours."
    - "Daniel fired shotgun rounds into ceiling rafters."
    - "A pellet ricocheted and killed Peter."
  mental_state_facts:
    - "No intent to kill."
    - "Intent to force shutdown/revenge."
    - "Deliberate firing of dangerous weapon indoors."
  call_features:
    negative_stem: false
    adjacent_call_trap: "What lesser offense could also be charged?"
    operative_call: "most serious offense"
    array_instruction: "descending order of seriousness"

trigger_facts:
  - fact: "shotgun rounds fired indoors during business hours"
    access_label: "student_visible"
    c3_role: "danger-level trigger"
  - fact: "no intent to kill"
    access_label: "student_visible"
    c3_role: "dominant trap trigger for involuntary manslaughter"
  - fact: "revenge/shutdown motive"
    access_label: "student_visible"
    c3_role: "social-utility and mitigation check"
  - fact: "ricochet killed friend"
    access_label: "student_visible"
    c3_role: "death-result trigger"
  - fact: "choices listed descending seriousness"
    access_label: "student_visible"
    c3_role: "answer-array Silver Key"

c3_routing:
  subject_fit: "CRIMINAL = offense ladder + mental-state rung + most-serious-offense call."
  governing_law_type: "STANDARD"
  deciding_phase: "CALL"
  method_class: "anchor_assisted"
  confidence: "ANCHOR_ASSISTED"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "A"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: 2
  tension_axis: "murder mental-state rung vs involuntary-manslaughter lesser rung"
  call_heuristic: "top_rung_first_after_anchor"

answer_array:
  architecture: "descending seriousness ladder"
  silver_key_id: "SK-CRIM-LADDER-01"
  pattern: "A is the top rung; B/C/D are lower rungs or lower layers."
  dominant_trap:
    choice: "C"
    trap: "No intent to kill, so involuntary manslaughter feels safer."
    original_pick_pct: 10
  preserved_geometry: true
  flattening_reason: null

choice_walkthroughs:
  A:
    answer_text: "Murder."
    credited: true
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "top rung unlocked by Gold Key"
    c3_signal: "The call asks most serious offense; depraved-heart Gold Key makes murder available despite no intent to kill."
    lawyer_confirmation: "Depraved-heart/implied-malice murder may be based on extreme reckless disregard for human life."
  B:
    answer_text: "Voluntary manslaughter."
    credited: false
    filter_broken: "NOT_TRUE"
    mold_code: "half_truth"
    mold_family: "EAR_DISTORTION"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "wrong_mental_state"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "anger-is-not-provocation trap"
    c3_signal: "The stem gives anger and revenge, not a taught mitigation trigger."
    lawyer_confirmation: "Voluntary manslaughter requires adequate provocation/heat of passion; job-loss anger and revenge do not supply that mitigation."
  C:
    answer_text: "Involuntary manslaughter."
    credited: false
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "half_right_answer"
      - "wrong_mental_state"
      - "answer_to_different_question"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "lower-rung trap"
    c3_signal: "This answer responds to no intent to kill, but not to the top-rung availability after the Gold Key."
    lawyer_confirmation: "Involuntary manslaughter may be supportable on reckless/negligent killing facts, but the more serious depraved-heart murder is supportable."
  D:
    answer_text: "Assault."
    credited: false
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "misfit"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "legally_true_but_irrelevant"
      - "answer_to_different_question"
      - "wrong_remedy"
      - "bar_exam_bait"
    method_class: "heuristic_structural"
    student_label: "wrong layer"
    c3_signal: "Assault may describe part of the conduct, but the call is the most serious offense after a death."
    lawyer_confirmation: "Assault may be chargeable in some jurisdictions; it is not the most serious available offense on these death-result facts."

residual_answer:
  choice: "A"
  answer: "Murder."
  why_survives: "Gold Key makes murder legally available; Silver Key says stop at the highest available rung."

legal_leak_audit:
  student_accessible_claims:
    - claim: "The call asks for the most serious offense."
      status: "visible from call"
    - claim: "The choices are descending in seriousness."
      status: "visible from call"
    - claim: "No intent to kill is the trap fact."
      status: "visible from stem"
    - claim: "Depraved-heart murder can exist without intent to kill."
      status: "Gold Key"
    - claim: "Anger/revenge is not voluntary-manslaughter mitigation."
      status: "Gold Key"
  quarantined_lawyer_claims:
    - "Implied malice doctrine authority."
    - "Model Penal Code extreme-indifference formulation."
    - "Jurisdiction-specific assault availability."
  drift_audit: "No full homicide outline used; doctrine confined to two Gold Keys and lawyer confirmation."

gold_keys:
  - id: "GK-CRIM-DEPRAVED-HEART-01"
    statement: "No intent to kill does not end the murder inquiry. Extreme, deliberate life-endangering recklessness can supply malice for depraved-heart murder."
    type: "rule"
    unlocks: "C involuntary-manslaughter trap and A murder residual"
    trigger: "dangerous weapon fired in an occupied place; death follows; defendant denies intent to kill"
    tested_choice: "C"
    authority: "People v. Knoller; Commonwealth v. Malone; Model Penal Code § 210.2(1)(b)"
    last_minute_review: true
  - id: "GK-CRIM-VOL-MANSLAUGHTER-PROVOCATION-01"
    statement: "Voluntary manslaughter needs legally adequate provocation or heat of passion. Ordinary anger, revenge, or job loss does not create the mitigation."
    type: "distinction"
    unlocks: "B voluntary-manslaughter trap"
    trigger: "stem gives anger or revenge, but no legally adequate provocation signal"
    tested_choice: "B"
    authority: "common-law homicide doctrine"
    last_minute_review: true

silver_keys:
  - id: "SK-CRIM-LADDER-01"
    statement: "When the call says crimes are listed in descending seriousness, test the top rung first. If that rung is legally available, lower rungs are traps."
    type: "answer_array"
    navigates: "most-serious-offense ladder"
    trigger: "call says listed in descending order of seriousness"
    tested_choice: "C"
    outline_code: "74020101"
    last_minute_review: true

remediation:
  card_id: "REM-CRIM-DEPRAVED-LADDER-01"
  title: "No intent to kill ≠ automatic manslaughter"
  signal: "Defendant denies intent to kill, but deliberately creates a lethal risk."
  student_move: "Do not stop at the denial of intent. Ask whether the top homicide rung is unlocked by extreme recklessness."
  tiny_rule: "Extreme life-endangering recklessness can be murder."
  trap: "Choosing involuntary manslaughter because the killing was unintended."
  confidence: "ANCHOR_ASSISTED"

distilled_core_question: "A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?"
review_truth: "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder."

case_study_output:
  final_student_script: "Most serious offense. Start at A. No intent to kill is not enough to drop below murder because firing shotgun rounds indoors can be depraved-heart malice. A is available; stop."
  residual_answer: "A"
  verdict: "ANCHOR_SOLVE"

quality_control:
  rule_answer_issue_unchanged: true
  christian_first: true
  popular_bible_names_only: true
  no_antagonist_names: true
  no_clutter_doctrine_added: true
  dominant_trap_preserved: true
  stem_not_over_signaled: true
  every_distractor_one_primary_filter: true
  key_agreement: true
  gold_keys_present_because_anchor_dependent: true
  silver_key_present_because_answer_array_move_decides: true
  pick_rate_provenance_honest: true
  drift_audit_included: true

analytics_hooks:
  mold_targets:
    - "half_truth"
    - "wrong_element"
    - "misfit"
  skill_targets:
    - "depraved-heart anchor"
    - "most-serious ladder call"
    - "no-intent trap resistance"
  review_queue_flag: false
  live_data_needed: "net-new variation has no measured pick rates"
```

## B2) 17-section student case study

## program_frame

This is a Criminal Law homicide ladder question. The exam is not asking, “What crime could be charged?” It is asking the **most serious offense**. That changes the move.

Use the ladder. Start at the top. Stop when the top rung is legally available.

## student_access_test

Student-access path:

* The call says the crimes are in descending seriousness.
* The stem says Daniel did not intend to kill.
* The stem also says Daniel deliberately fired shotgun rounds inside an operating warehouse.
* The Gold Key unlocks murder despite no intent to kill.
* The Silver Key tells the student to stop at the highest available rung.

Not student-accessible without a Gold Key:

* The full doctrine of malice aforethought.
* The line between murder-level recklessness and manslaughter-level recklessness.
* The legally adequate provocation requirement.

## question_data

**Question ID:** 14663_lydias_bookstore_warehouse
**Transformed from:** 14663
**Subject:** CRIMINAL
**Topic:** Criminal Law
**Subtopic:** Homicide
**Original correct answer rate:** 83%
**Original dominant wrong answer:** C, involuntary manslaughter, 10%
**Credited answer:** A, murder.

## distilled_core_question

A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?

## call_and_prediction

**Call:** Most serious offense.

**Prediction:** Start at murder. The no-intent fact blocks intentional murder, but it does not end the murder inquiry. The question turns on whether the conduct is dangerous enough for depraved-heart murder.

## trigger_facts

| Fact                                | Student label       | Why it matters                            |
| ----------------------------------- | ------------------- | ----------------------------------------- |
| Daniel fired shotgun rounds indoors | danger fact         | Pushes above ordinary negligence          |
| Warehouse was operating             | risk-to-people fact | Makes the danger human, not just property |
| He sought revenge/shutdown          | motive fact         | No social utility; not a rescue/emergency |
| He did not intend to kill           | trap fact           | Pulls students toward manslaughter        |
| Pellet ricocheted and killed Peter  | result fact         | Homicide ladder is triggered              |
| Choices are descending              | answer-array fact   | Top-rung-first move                       |

## governing_c3_lane

**Lane:** Criminal homicide ladder.
**FIT:** CRIMINAL = offense ladder + mental-state rung + most-serious-offense call.
**Deciding phase:** CALL, because the structural ladder needs a Gold Key to unlock the top rung.
**Verdict:** ANCHOR_SOLVE.

## choice_by_choice_walkthrough

### A. Murder.

1. **Student-accessible C3 signal:** This is the top rung. The question tells you to test the top rung first.
2. **Student label:** Top rung unlocked.
3. **What a true/responsive version would look like:** This is already true and responsive once the Gold Key is applied.
4. **Lawyer confirmation:** Depraved-heart murder supplies malice when the defendant deliberately creates an extreme risk to human life and death results.

### B. Voluntary manslaughter.

1. **Student-accessible C3 signal:** The stem gives anger and revenge, but not a legal mitigation trigger.
2. **Student label:** Anger-is-not-provocation trap.
3. **What a true/responsive version would look like:** The stem would need legally adequate provocation and heat of passion that reduces what would otherwise be murder.
4. **Lawyer confirmation:** Voluntary manslaughter mitigates murder only when the law recognizes adequate provocation. Job loss, resentment, and revenge are not enough.

### C. Involuntary manslaughter.

1. **Student-accessible C3 signal:** This answers the no-intent fact, but not the most-serious-offense call.
2. **Student label:** Dominant lower-rung trap.
3. **What a true/responsive version would look like:** It would be responsive if murder were not legally available.
4. **Lawyer confirmation:** Involuntary manslaughter may be a lesser offense, but depraved-heart murder is more serious and supportable here.

### D. Assault.

1. **Student-accessible C3 signal:** This is the wrong layer. It focuses on the dangerous act, not the death-result ladder.
2. **Student label:** Conduct-layer trap.
3. **What a true/responsive version would look like:** It would be responsive if the call asked for a lesser offense based only on the firing, or if no death-result offense were available.
4. **Lawyer confirmation:** Assault may be available in some jurisdictions, but it is not the most serious offense after a death caused by murder-level recklessness.

## residual_answer

A survives.

Reason: Murder is the highest rung, and the Gold Key makes it available despite the lack of intent to kill.

## legal_leak_audit

Student-accessible:

* “Most serious offense” is visible from the call.
* “No intent to kill” is visible from the stem.
* “Fired shotgun rounds indoors” is visible from the stem.
* “Top rung first” is the Silver Key.
* “Extreme reckless indifference can be murder” is the Gold Key.

Quarantined:

* Implied malice authority.
* MPC extreme-indifference phrasing.
* Jurisdiction-specific assault availability.
* Full provocation doctrine.

**Drift audit:** No full homicide outline used. The student path uses one answer-array move and two tiny Gold Keys. Lawyer authority stays in lawyer confirmation.

## final_student_script

“Most serious offense. The answers are descending. Start with murder. Daniel did not intend to kill, but he deliberately fired shotgun rounds inside an operating warehouse. Gold Key: extreme life-endangering recklessness can be murder. Murder is available. Stop at A.”

## remediation_card

**REM-CRIM-DEPRAVED-LADDER-01 — No intent to kill ≠ automatic manslaughter**

* **Signal:** Defendant denies intent to kill, but deliberately creates a lethal risk.
* **Student move:** Do not stop at “no intent.” Ask whether the top homicide rung is unlocked by extreme recklessness.
* **Tiny rule:** Extreme life-endangering recklessness can be murder.
* **Trap:** Choosing involuntary manslaughter because the death was unintended.
* **Confidence:** ANCHOR_ASSISTED.

## Gold Key(s)

**GK-CRIM-DEPRAVED-HEART-01**
No intent to kill does not end the murder inquiry. Extreme, deliberate life-endangering recklessness can supply malice for depraved-heart murder.

**GK-CRIM-VOL-MANSLAUGHTER-PROVOCATION-01**
Voluntary manslaughter needs legally adequate provocation or heat of passion. Ordinary anger, revenge, or job loss does not create the mitigation.

## Silver Key(s)

**SK-CRIM-LADDER-01**
When the call says crimes are listed in descending seriousness, test the top rung first. If that rung is legally available, lower rungs are traps.

## qa_checklist

| Check                          | Result |
| ------------------------------ | ------ |
| Rule unchanged                 | Pass   |
| Correct answer unchanged       | Pass   |
| Christian variation            | Pass   |
| Popular Bible names only       | Pass   |
| No antagonist names            | Pass   |
| No church-internal legal issue | Pass   |
| Dominant trap preserved        | Pass   |
| Stem avoids over-signaling     | Pass   |
| Gold Key included              | Pass   |
| Silver Key included            | Pass   |
| Pick-rate provenance honest    | Pass   |
| Drift audit included           | Pass   |

## wrong_answer_recovery_paths

**B recovery:** Do not treat anger as mitigation. Ask: “Where is the legal provocation trigger?” It is not there.

**C recovery:** Do not stop at no intent. Ask: “Can murder still exist through extreme recklessness?” Gold Key says yes.

**D recovery:** Do not answer the conduct-only layer when the stem includes a death. Move up the homicide ladder.

## outline_mastery_map

**Placement:** Criminal Law → Homicide → Malice / depraved-heart murder.
**This item teaches:** the difference between no-intent manslaughter instincts and murder-level recklessness.
**Fills:** mental-state ladder, most-serious-offense call, lesser-offense trap.
**Adjacent to master:** felony murder, voluntary manslaughter mitigation, involuntary manslaughter, transferred intent.

## crossover_intersection_map

| Crossover                    | Why relevant                                                                                        |
| ---------------------------- | --------------------------------------------------------------------------------------------------- |
| Torts reckless conduct       | Helps students see danger level, but do not import tort negligence standards.                       |
| Evidence no-intent testimony | The testimony is accepted; the legal question is what mental state remains.                         |
| Criminal attempt             | No intent to kill would matter there; here the issue is completed homicide through reckless malice. |
| BarMatrix KFP ladder method  | This is a clean top-rung-first answer-array item.                                                   |

## review_truth

No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.

## B3) c3_annotation

```json
{
  "question_id": "14663_lydias_bookstore_warehouse",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "74020101",
  "distilled_core_question": "A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?",
  "review_truth": "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.",
  "c3": {
    "verdict": "PASS",
    "residual": "A",
    "agrees_with_key": true,
    "governing_law_type": "STANDARD",
    "deciding_phase": "CALL",
    "confidence": "ANCHOR_ASSISTED",
    "tension_axis": "murder mental-state rung vs involuntary-manslaughter lesser rung",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "top_rung_first_after_anchor",
    "difficulty": 2,
    "distractors": [
      {
        "choice": "B",
        "filter_broken": "NOT_TRUE",
        "mold": "half_truth",
        "architecture": "wrong_frame",
        "card_ref": "GK-CRIM-VOL-MANSLAUGHTER-PROVOCATION-01",
        "explanation": "Anger and revenge supply a tempting partial story, but not legally adequate voluntary-manslaughter mitigation."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "wrong_element",
        "architecture": null,
        "card_ref": "GK-CRIM-DEPRAVED-HEART-01; SK-CRIM-LADDER-01",
        "explanation": "Involuntary manslaughter answers the no-intent fact, but not the most-serious-offense call once murder is available."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "misfit",
        "architecture": "wrong_frame",
        "card_ref": "SK-CRIM-LADDER-01",
        "explanation": "Assault is a lower conduct-layer answer, not the most serious offense after a death-result homicide."
      }
    ],
    "analyzer_notes": "drift_audit: Student path uses top-rung answer-array move plus two tiny Gold Keys; no full homicide outline. transformed_from: 14663. Net-new Christian variation; original pick rates inherited only as provenance, not measured for this variation.",
    "gold_keys": [
      {
        "id": "GK-CRIM-DEPRAVED-HEART-01",
        "statement": "No intent to kill does not end the murder inquiry. Extreme, deliberate life-endangering recklessness can supply malice for depraved-heart murder.",
        "type": "rule",
        "unlocks": "C involuntary-manslaughter trap and A murder residual",
        "trigger": "dangerous weapon fired in an occupied place; death follows; defendant denies intent to kill",
        "tested_choice": "C",
        "authority": "People v. Knoller; Commonwealth v. Malone; Model Penal Code § 210.2(1)(b)",
        "last_minute_review": true
      },
      {
        "id": "GK-CRIM-VOL-MANSLAUGHTER-PROVOCATION-01",
        "statement": "Voluntary manslaughter needs legally adequate provocation or heat of passion. Ordinary anger, revenge, or job loss does not create the mitigation.",
        "type": "distinction",
        "unlocks": "B voluntary-manslaughter trap",
        "trigger": "stem gives anger or revenge, but no legally adequate provocation signal",
        "tested_choice": "B",
        "authority": "common-law homicide doctrine",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CRIM-LADDER-01",
        "statement": "When the call says crimes are listed in descending seriousness, test the top rung first. If that rung is legally available, lower rungs are traps.",
        "type": "answer_array",
        "navigates": "most-serious-offense ladder",
        "trigger": "call says listed in descending order of seriousness",
        "tested_choice": "C",
        "outline_code": "74020101",
        "last_minute_review": true
      }
    ]
  }
}
```

## B4) program_elements

```json
{
  "question_id": "14663_lydias_bookstore_warehouse",
  "subject": "CRIMINAL",
  "outline_code": "74020101",
  "distilled_core_question": "A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?",
  "review_truth": "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.",
  "tension": {
    "name": "murder vs involuntary manslaughter",
    "axis": "Does no intent to kill drop the offense below murder, or does extreme recklessness supply malice?",
    "resolver": "depraved-heart Gold Key"
  },
  "traps": [
    {
      "choice": "B",
      "mold": "half_truth",
      "architecture": "wrong_frame",
      "why_attractive": "The stem says Daniel was angry, so students may overread anger as mitigation.",
      "focus_group_pct": {
        "original_measured": 7,
        "variation_measured": null,
        "provenance": "inherited by position/concept only"
      }
    },
    {
      "choice": "C",
      "mold": "wrong_element",
      "architecture": null,
      "why_attractive": "No intent to kill makes involuntary manslaughter feel like the safe no-intent answer.",
      "focus_group_pct": {
        "original_measured": 10,
        "variation_measured": null,
        "provenance": "dominant wrong-answer trap inherited by concept"
      }
    },
    {
      "choice": "D",
      "mold": "misfit",
      "architecture": "wrong_frame",
      "why_attractive": "The firing itself may sound like assault, but that is the wrong layer after a death.",
      "focus_group_pct": {
        "original_measured": 0,
        "variation_measured": null,
        "provenance": "inherited by position/concept only"
      }
    }
  ],
  "remediation_card": {
    "card_id": "REM-CRIM-DEPRAVED-LADDER-01",
    "title": "No intent to kill does not automatically mean manslaughter",
    "signal": "Defendant denies intent to kill, but deliberately creates a lethal risk.",
    "student_move": "Do not stop at the denial of intent. Ask whether the top homicide rung is unlocked by extreme recklessness.",
    "tiny_rule": "Extreme life-endangering recklessness can be murder.",
    "trap": "Choosing involuntary manslaughter because the killing was unintended.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "no_intent_to_kill_overused",
    "anger_as_fake_provocation",
    "lower_rung_after_top_rung_available",
    "assault_conduct_layer_vs_homicide_result_layer",
    "most_serious_call_missed"
  ]
}
```

## B5) program_intelligence

```json
{
  "question_id": "14663_lydias_bookstore_warehouse",
  "subject": "CRIMINAL",
  "outline_code": "74020101",
  "distilled_core_question": "A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?",
  "review_truth": "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.",
  "wrong_answer_paths": [
    {
      "choice": "B",
      "filter_broken": "NOT_TRUE",
      "mold": "half_truth",
      "why_a_student_picks_this": "The student sees anger and assumes heat-of-passion mitigation.",
      "skipped_move": "Check whether the stem gives legally adequate provocation, not just emotion.",
      "recovery_step": "Use GK-CRIM-VOL-MANSLAUGHTER-PROVOCATION-01."
    },
    {
      "choice": "C",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "wrong_element",
      "why_a_student_picks_this": "The student overweights the no-intent testimony and stops at a lower homicide rung.",
      "skipped_move": "Apply the depraved-heart Gold Key before dropping below murder.",
      "recovery_step": "Use GK-CRIM-DEPRAVED-HEART-01, then SK-CRIM-LADDER-01."
    },
    {
      "choice": "D",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "misfit",
      "why_a_student_picks_this": "The student focuses on the act of firing instead of the death-result ladder.",
      "skipped_move": "Lock the call: most serious offense after a death.",
      "recovery_step": "Use SK-CRIM-LADDER-01."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "gold_key_recall",
      "target_skill": "depraved-heart murder unlock",
      "prompt": "A defendant deliberately fires a gun in an occupied place, does not intend to kill, and a ricochet kills someone. What Gold Key fires?",
      "answer": "Extreme life-endangering recklessness can supply malice for depraved-heart murder."
    },
    {
      "drill_type": "answer_array",
      "target_skill": "top-rung-first ladder",
      "prompt": "The call says crimes are listed in descending seriousness. What is the first move?",
      "answer": "Test the top rung first; if it is available, stop."
    },
    {
      "drill_type": "trap_spotting",
      "target_skill": "no-intent manslaughter trap",
      "prompt": "Why is no intent to kill not enough to choose involuntary manslaughter?",
      "answer": "Because murder may still be available through depraved-heart malice."
    },
    {
      "drill_type": "provocation_filter",
      "target_skill": "anger vs adequate provocation",
      "prompt": "A defendant is angry after losing work and kills while taking revenge. Does that alone unlock voluntary manslaughter?",
      "answer": "No. Ordinary anger/revenge is not legally adequate provocation."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "descending_ladder",
      "depraved_heart",
      "no_intent_trap",
      "lesser_offense_trap",
      "ricochet_death"
    ],
    "misconception_tags": [
      "no_intent_means_manslaughter",
      "anger_equals_provocation",
      "assault_after_death",
      "all_reckless_killings_are_involuntary"
    ]
  },
  "component_routing": [
    "C3_L1_TRUE_RESPONSIVE",
    "C3_L2_CUT_CLASH_CALL",
    "C3_L7_PREDICT_BEFORE_PEEK",
    "C3_L12_ANCHOR_DECK",
    "C3_L13_CALIBRATION",
    "CRIMINAL_HOMICIDE_GOLD_KEY"
  ],
  "crossovers": [
    {
      "area": "Torts",
      "note": "Recklessness vocabulary overlaps, but the item asks criminal homicide, not civil liability."
    },
    {
      "area": "Evidence",
      "note": "The no-intent testimony is accepted; the issue is the legal effect of the remaining facts."
    },
    {
      "area": "KFP answer-array mechanics",
      "note": "Descending seriousness turns the choices into a top-rung-first ladder."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-CRIM-DEPRAVED-HEART-01",
      "statement": "No intent to kill does not end the murder inquiry. Extreme, deliberate life-endangering recklessness can supply malice for depraved-heart murder.",
      "type": "rule",
      "unlocks": "C involuntary-manslaughter trap and A murder residual",
      "trigger": "dangerous weapon fired in an occupied place; death follows; defendant denies intent to kill",
      "tested_choice": "C",
      "authority": "People v. Knoller; Commonwealth v. Malone; Model Penal Code § 210.2(1)(b)",
      "last_minute_review": true
    },
    {
      "id": "GK-CRIM-VOL-MANSLAUGHTER-PROVOCATION-01",
      "statement": "Voluntary manslaughter needs legally adequate provocation or heat of passion. Ordinary anger, revenge, or job loss does not create the mitigation.",
      "type": "distinction",
      "unlocks": "B voluntary-manslaughter trap",
      "trigger": "stem gives anger or revenge, but no legally adequate provocation signal",
      "tested_choice": "B",
      "authority": "common-law homicide doctrine",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIM-LADDER-01",
      "statement": "When the call says crimes are listed in descending seriousness, test the top rung first. If that rung is legally available, lower rungs are traps.",
      "type": "answer_array",
      "navigates": "most-serious-offense ladder",
      "trigger": "call says listed in descending order of seriousness",
      "tested_choice": "C",
      "outline_code": "74020101",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Criminal Law > Homicide > Malice aforethought > Depraved-heart murder",
    "this_item_teaches": "A no-intent killing can still be murder when the defendant deliberately creates an extreme risk to human life.",
    "fills": [
      "depraved-heart murder",
      "most-serious-offense ladder",
      "involuntary manslaughter trap",
      "voluntary manslaughter provocation trap"
    ],
    "adjacent_to_master": [
      "felony murder",
      "intent-to-kill murder",
      "intent-to-inflict-great-bodily-injury murder",
      "involuntary manslaughter",
      "adequate provocation"
    ]
  }
}
```

[1]: https://scocal.stanford.edu/opinion/people-v-knoller-33726?utm_source=chatgpt.com "People v. Knoller - S134543 - Thu, 05/31/2007"
[2]: https://law.justia.com/cases/pennsylvania/supreme-court/1946/354-pa-180-47-a-2d-445.html?utm_source=chatgpt.com "Commonwealth v. Malone :: 1946"
[3]: https://www.criminallawweb.net/web1/mpc/PART1/snippets/210_2.htm?utm_source=chatgpt.com "Section 210.2. Murder."

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "14663"
  question_id: "14663"
  subject: "CRIMINAL"
  topic: "Criminal Law"
  subtopic: "Homicide"
  outline_code: "74020101"
  official_key: "A"
transform_provenance:
  transformed_from: "14663"
  variant_slug: "14663"
  original_key_letter: "UNKNOWN"
  new_key_letter: "A"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_SOLVE"
  confidence: "ANCHOR_ASSISTED"
  residual: "A"
distilled_core_question: "A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?"
review_truth: "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 14663; source 14663.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic Criminal Law; subtopic Homicide.
4. **distilled_core_question:** A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?
5. **call_and_prediction:** Credited answer: A.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 74020101.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** A
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 74020101.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.
```

### 3. c3_annotation

```json
{
  "question_id": "14663",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "74020101",
  "distilled_core_question": "A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?",
  "review_truth": "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 14663; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "14663",
  "subject": "CRIMINAL",
  "outline_code": "74020101",
  "distilled_core_question": "A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?",
  "review_truth": "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-14663",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.",
    "trap": "See preserved traps when present.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "14663",
  "subject": "CRIMINAL",
  "outline_code": "74020101",
  "distilled_core_question": "A fired worker intentionally fires shotgun rounds inside an operating warehouse to shut it down; a ricochet kills his friend. He did not intend to kill. What is the most serious offense?",
  "review_truth": "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.",
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
    "placement": "74020101",
    "this_item_teaches": "No intent to kill does not automatically mean manslaughter; extreme life-endangering recklessness can make the killing murder.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
