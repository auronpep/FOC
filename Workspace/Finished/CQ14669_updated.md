---
qid: "14669"
transformed_from: "14669"
subject: "CRIMINAL"
topic: "Criminal Law"
subtopic: "Homicide"
outline_code: "00000000"
key: "A"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "choice: \"C"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill."
---
Source locked: QID 14669 is a Criminal Law/Homicide item with official key **A**, 83% correct, and the official explanation turns on sufficiency review plus extreme recklessness as malice for murder.  The requested transform/report format requires Pass 1 creative transformation, then the Pass 2 YAML, case study, and JSON ingestion blocks.  I also applied the Reasoning Creed posture: preserve the ambitious transform, then keep the legal and C3 guardrails tight. 

# A) PASS-1 TRANSFORM REPORT

## 1. Final question

**Christian variation — “Sunday-School Playground Backstop”**

Daniel, an experienced marksman, bought a new rifle and wanted to try it out by doing some target shooting. He drove into the country to a clearing where he had previously hunted. To his surprise, beyond the clearing he saw several newly built houses. Between the houses was a small neighborhood playground where children from a Sunday-school picnic were playing. Nevertheless, Daniel nailed a paper target to a tree and walked to a point where the tree was directly between him and the playground. He then fired several shots at the target. One shot missed both the target and the tree and hit and killed one of the children. Daniel was convicted of murder. He appealed, arguing that the evidence was insufficient to support a murder conviction.

The appellate court should

## 2. Distilled Core Question

Daniel knowingly fired several rifle shots at a target with a playground full of children behind it. One shot missed and killed a child. On appeal from a murder conviction, is the evidence sufficient to affirm murder?

## 3. Final answer choices

**A.** affirm the conviction, because the evidence is sufficient to support a conviction of murder.

**B.** reverse the conviction and remand for a new trial, because the evidence is not sufficient for murder but will support a conviction of voluntary manslaughter.

**C.** reverse the conviction and remand for a new trial, because the evidence is not sufficient for murder but will support a conviction of involuntary manslaughter.

**D.** reverse the conviction and order the case dismissed, because the evidence is sufficient only for a finding of ordinary civil negligence.

## 4. Possible replacement answer choices

| Original choice |                Original pick % | Keep / revise | Candidate                                                                                                          | Mold          | Filter         | Audit                                                                                                                                                         |
| --------------- | -----------------------------: | ------------- | ------------------------------------------------------------------------------------------------------------------ | ------------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| B               |                   5% inherited | Keep          | “reverse and remand for voluntary manslaughter, because Daniel acted without an intent to kill.”                   | bait_doctrine | NOT_RESPONSIVE | Not adopted. It weakens the voluntary-manslaughter trap by making the missing provocation too obvious.                                                        |
| C               |                  10% inherited | Keep          | “reverse and remand for involuntary manslaughter, because the shot was accidental.”                                | wrong_element | NOT_RESPONSIVE | Not adopted. Original is stronger because it preserves the mental-state ladder and the main trap.                                                             |
| D               | 2% original; revised/predicted | Revise        | “reverse and order dismissal, because the evidence is sufficient only for a finding of ordinary civil negligence.” | wrong_element | NOT_RESPONSIVE | Adopted. The original D had two defects: undercalling the facts and saying negligence cannot support a criminal conviction. Revised D keeps one clean defect. |

## 5. Correct answer

**A.**

## 6. Full right-answer explanation

**A is correct.** The appellate court should affirm because this is a sufficiency-of-the-evidence question, not a fresh sentencing or degree-selection question.

**Gold Key: Sufficiency review.** On appeal, the question is whether a rational jury could find the required elements on the evidence, viewed favorably to the prosecution.

**Gold Key: Extreme-recklessness murder.** A killing without an intent to kill can still be murder when the defendant consciously creates an extreme risk to human life. Firing several rifle shots toward a target with a playground of children behind it gives the jury enough to find that mental state.

**Silver Key: Degree-ladder array.** The four answers form a homicide ladder: murder, voluntary manslaughter, involuntary manslaughter, ordinary negligence. Do not pick the lower rung just because the shot was accidental; first ask whether the facts support the highest rung.

## 7. Full wrong-answer explanations

**B is wrong.** Voluntary manslaughter is the wrong lane. The stem gives no heat-of-passion or provocation signal. **Gold Key:** no intent to kill does not automatically move the case to voluntary manslaughter; extreme recklessness can still support murder. B is attractive because it sounds like a compromise between murder and accident, but it answers the wrong homicide frame.

**C is wrong.** This is the dominant trap. C notices that Daniel did not aim at a child and that the shot missed the target, but it stops too low on the ladder. **Gold Key:** extreme recklessness toward human life can supply malice for murder. **Silver Key:** once the answer array shows murder vs. lesser homicide, match the risk facts before choosing the “accident” answer.

**D is wrong.** D undercalls the facts. This was not ordinary civil negligence in the answer-array structure. Daniel saw houses and a playground, placed the tree between himself and the playground, and then fired several shots anyway. D is attractive only if the student treats “missed target” as the whole story.

## 8. Full black-letter-law verification and legal reasoning

The original rule and outcome are unchanged: on sufficiency review, the appellate court asks whether the evidence could support the conviction, and the official explanation identifies extreme recklessness toward human life as sufficient for malice aforethought in this murder conviction.  The Supreme Court’s sufficiency standard in **Jackson v. Virginia** asks whether, after viewing the evidence in the light most favorable to the prosecution, any rational trier of fact could have found the elements beyond a reasonable doubt. ([Justia Law][1]) Common-law murder requires malice aforethought, and implied malice includes killings from conduct displaying depraved indifference to human life. ([Legal Information Institute][2])

Here, Daniel saw the newly built houses and the playground, positioned his target so a miss would send shots toward the playground, and fired several rifle shots. That is enough for a rational jury to find extreme recklessness rather than merely ordinary negligence or involuntary manslaughter.

## 9. Why the variation preserves rigor and difficulty

The variation keeps the same legal rule, same call, same outcome, same sufficiency posture, and same homicide-degree ladder. The Christian flavor is limited to a Sunday-school picnic; it adds no religious-liberty, church-property, competency, or First Amendment issue. The main trap remains **C**, the involuntary-manslaughter undercall.

## 10. C3 elimination walkthrough — CUT → CLASH → CALL

**CUT**

* **B:** Cut as wrong-frame / bait-doctrine. It imports voluntary manslaughter without any provocation signal.
* **D:** Cut as undercalling the facts. It treats an extreme-risk shooting path as only ordinary civil negligence.

**CLASH**

* **A vs. C:** The real fight is murder vs. involuntary manslaughter.
* **Axis:** how far up the homicide mental-state ladder the known-risk facts go.
* **Splitting fact:** Daniel saw the playground and fired several rifle shots anyway.

**CALL**

* Apply the Gold Keys: sufficiency review favors the verdict if a rational jury could find murder; extreme recklessness can be malice. A survives.

## 11. Review Truth

A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.

## 12. Five variations considered

|  # | Title                               | Setting                                         | Cast                           | Preserved issue                                                  | Why memorable                                     | Legal risks                                                    | Recommendation                                             |
| -: | ----------------------------------- | ----------------------------------------------- | ------------------------------ | ---------------------------------------------------------------- | ------------------------------------------------- | -------------------------------------------------------------- | ---------------------------------------------------------- |
|  1 | Sunday-School Playground Backstop   | Rural clearing near new houses and a playground | Daniel, Sunday-school children | Sufficiency of evidence for murder based on extreme recklessness | Strong visual: target, tree, playground behind it | Low; religious detail is flavor only                           | **Chosen. Best balance of Christian theme and clean law.** |
|  2 | Barnabas at the Church Picnic Field | Rural picnic field near a subdivision           | Barnabas, children playing tag | Same                                                             | Memorable church-picnic scene                     | “Church field” could add property/church clutter               | Not chosen.                                                |
|  3 | Peter’s Retreat-Center Rifle Test   | Retreat center near homes                       | Peter, retreat kids            | Same                                                             | Christian retreat image                           | Retreat center property could distract                         | Not chosen.                                                |
|  4 | Timothy’s Law-School Service Day    | Law students cleaning a rural lot               | Timothy, children nearby       | Same                                                             | Law-school friendly                               | Adds adult student facts and possible assumption-of-risk noise | Not chosen.                                                |
|  5 | Lydia’s Family Farm Target Practice | Farm clearing beside new homes                  | Lydia, children                | Same                                                             | Uses a popular Bible name in unexpected role      | Farm ownership could invite premises/property clutter          | Not chosen.                                                |

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

## 1. Question YAML

```yaml
question_id: "14669_sunday_school_playground"
transformed_from: "14669"

barmatrix_row:
  qid: "14669"
  subject: "CRIMINAL"
  topic: "Criminal Law"
  subtopic: "Homicide"
  original_selection_percentages:
    correct_overall: 83
    A: 83
    B: 5
    C: 10
    D: 2
  transformed_pick_rate_provenance:
    A: "inherited_from_original_correct_answer_position"
    B: "inherited_from_original_wrong_answer_shape"
    C: "inherited_from_original_dominant_wrong_answer_shape"
    D: "revised_from_original_2_percent_distractor_predicted_no_measured_data"
  official_key: "A"
  transformed_key: "A"
  call: "The appellate court should"
  stem: "Daniel, an experienced marksman, bought a new rifle and wanted to try it out by doing some target shooting. He drove into the country to a clearing where he had previously hunted. To his surprise, beyond the clearing he saw several newly built houses. Between the houses was a small neighborhood playground where children from a Sunday-school picnic were playing. Nevertheless, Daniel nailed a paper target to a tree and walked to a point where the tree was directly between him and the playground. He then fired several shots at the target. One shot missed both the target and the tree and hit and killed one of the children. Daniel was convicted of murder. He appealed, arguing that the evidence was insufficient to support a murder conviction."
  choices:
    A: "affirm the conviction, because the evidence is sufficient to support a conviction of murder."
    B: "reverse the conviction and remand for a new trial, because the evidence is not sufficient for murder but will support a conviction of voluntary manslaughter."
    C: "reverse the conviction and remand for a new trial, because the evidence is not sufficient for murder but will support a conviction of involuntary manslaughter."
    D: "reverse the conviction and order the case dismissed, because the evidence is sufficient only for a finding of ordinary civil negligence."

source_stack:
  - priority: 1
    source: "Pasted BarMatrix row for QID 14669"
    use: "Stem, call, choices, official key, pick rates, official explanation"
  - priority: 2
    source: "Creative-transform guardrails"
    use: "Christian-first, preserve law, preserve trap, keep geometry, honest pick-rate provenance"
  - priority: 3
    source: "C3 universal lessons and criminal overlay"
    use: "TRUE and RESPONSIVE, Cut-Clash-Call, issue-sense, anchor escalation"
  - priority: 4
    source: "Official explanation and legal authorities"
    use: "Lawyer-confirmation only"

student_access_contract:
  controlling_test: "Could a smart 10-year-old who completed only C3 lessons, overlays, and taught Gold/Silver Keys identify the choice problem without outside doctrine?"
  allowed_student_tools:
    - "L1 TRUE and RESPONSIVE"
    - "L2 Cut-Clash-Call"
    - "L7 Predict before you peek"
    - "L8 not-responsive molds"
    - "L9 Clash: name the axis and resolving fact"
    - "L11 procedural-frame / posture awareness"
    - "L12 anchor escalation"
    - "Gold Key GK-CRIM-SUFFICIENCY-MOST-FAVORABLE-01"
    - "Gold Key GK-CRIM-EXTREME-RECKLESSNESS-MURDER-01"
    - "Silver Key SK-CRIM-DEGREE-LADDER-01"
  forbidden_student_moves:
    - "Do not assert murder doctrine without the Gold Key."
    - "Do not treat official explanation as the source of student-access C3."
    - "Do not call B/C/D false unless the defect is visible from the stem plus Gold Key."

stem_parse:
  subject_fit: "Criminal homicide = mental-state ladder + appellate sufficiency gate"
  call_type: "appellate sufficiency of evidence"
  adjacent_call_traps:
    - "What homicide label feels fairest?"
    - "Did Daniel intend to kill?"
    - "Could a lesser offense also be supported?"
  negative_stem_inversion: false
  posture: "convicted of murder; appeal argues insufficiency"
  predicted_answer_before_choices: "Affirm if a rational jury could find murder from the known-risk shooting facts."

trigger_facts:
  - fact: "Daniel was an experienced marksman."
    access_label: "stem_visible"
    c3_use: "Makes the shooting-risk facts more deliberate."
  - fact: "Daniel saw new houses beyond the clearing."
    access_label: "stem_visible"
    c3_use: "Shows awareness that the area was no longer empty."
  - fact: "Children were playing in a playground between the houses."
    access_label: "stem_visible"
    c3_use: "Human-life danger is explicit."
  - fact: "Daniel placed the tree between himself and the playground."
    access_label: "stem_visible"
    c3_use: "Backstop-risk fact; a miss travels toward children."
  - fact: "Daniel fired several shots."
    access_label: "stem_visible"
    c3_use: "Repeated-risk fact."
  - fact: "One shot missed target and tree and killed a child."
    access_label: "stem_visible"
    c3_use: "Result and causation."
  - fact: "Appeal challenges sufficiency of evidence."
    access_label: "stem_visible"
    c3_use: "Procedural frame: rational-jury sufficiency, not retrial of facts."

c3_routing:
  subject_fit: "Criminal homicide degree ladder plus sufficiency posture"
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
  tension_axis: "murder_by_extreme_recklessness_vs_involuntary_manslaughter"
  call_heuristic: "degree_ladder_plus_sufficiency_anchor"

answer_array:
  geometry: "degree_ladder"
  array_shape:
    A: "affirm murder"
    B: "reverse/remand voluntary manslaughter"
    C: "reverse/remand involuntary manslaughter"
    D: "dismiss ordinary negligence only"
  dominant_trap:
    choice: "C"
    original_pick_percent: 10
    reason: "No intent / accident framing pulls student to involuntary manslaughter."
  preserved_from_original: true
  revision_log:
    D: "Revised to remove second independent legal defect and keep one clean undercalling defect."

choice_walkthroughs:
  A:
    credited: true
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "residual after degree-ladder Call"
    c3_signal: "Only answer that matches the appellate sufficiency posture and the highest supported homicide rung after the Gold Keys."
    lawyer_confirmation: "A rational jury could find extreme recklessness toward human life; sufficiency review views evidence favorably to the prosecution."
  B:
    credited: false
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "bait_doctrine"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "answer_to_different_question"
      - "wrong_mental_state"
      - "bar_exam_bait"
      - "sounds_lawyerly"
    method_class: "anchor_assisted"
    student_label: "wrong homicide lane"
    c3_signal: "Voluntary manslaughter needs a provocation/heat signal; the stem gives target-shooting risk facts, not provocation facts."
    lawyer_confirmation: "The evidence does not reduce the offense to voluntary manslaughter; the official explanation says no heat-of-passion defense was presented."
  C:
    credited: false
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "half_right_answer"
      - "wrong_mental_state"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "dominant undercall"
    c3_signal: "It focuses on no intent/accidental miss but skips the known playground risk and repeated shots."
    lawyer_confirmation: "Extreme recklessness can support murder, so the evidence was not limited to involuntary manslaughter."
  D:
    credited: false
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "wrong_mental_state"
      - "moral_common_sense_answer"
      - "half_right_answer"
      - "answer_to_different_question"
    method_class: "anchor_assisted"
    student_label: "ordinary-negligence undercall"
    c3_signal: "The answer treats the case as only carelessness and does not account for Daniel seeing children in the line of fire."
    lawyer_confirmation: "The evidence supports more than ordinary negligence; it can support malice through extreme recklessness."

residual_answer:
  choice: "A"
  student_reason: "After the ladder is identified, the Gold Keys make A the only answer that fits the sufficiency posture and the known-risk facts."
  lawyer_reason: "The jury could find murder based on extreme recklessness; sufficiency review requires affirmance."

legal_leak_audit:
  student_accessible_claims:
    - claim: "B is wrong-frame because no provocation/heat signal appears."
      access_basis: "Gold Key plus stem facts"
      status: "passes"
    - claim: "C undercalls the mental-state ladder."
      access_basis: "Gold Key plus Silver Key"
      status: "passes"
    - claim: "D undercalls the facts as ordinary negligence."
      access_basis: "Gold Key plus stem facts"
      status: "passes"
    - claim: "A survives."
      access_basis: "Gold Key sufficiency + Gold Key extreme recklessness"
      status: "passes"
  quarantined_lawyer_confirmation:
    - "Jackson v. Virginia sufficiency standard"
    - "Common-law implied malice / depraved-heart murder"
  drift_audit: "No lawyer-only doctrine is presented as pure structure; all homicide-degree decisions are anchor_assisted."

gold_keys:
  - id: "GK-CRIM-SUFFICIENCY-MOST-FAVORABLE-01"
    statement: "On a sufficiency appeal, the reviewing court asks whether a rational jury could find the elements, viewing the evidence favorably to the prosecution. If yes, affirm."
    type: "burden"
    unlocks: "The appeal posture; prevents treating the appellate court as choosing the fairest lesser offense."
    trigger: "Convicted defendant appeals, arguing evidence was insufficient."
    tested_choice: "A"
    authority: "Jackson v. Virginia, 443 U.S. 307 (1979)"
    last_minute_review: true
  - id: "GK-CRIM-EXTREME-RECKLESSNESS-MURDER-01"
    statement: "An unintentional killing can be murder when the defendant consciously creates an extreme risk to human life. No intent to kill is required."
    type: "distinction"
    unlocks: "The murder vs. involuntary-manslaughter trap."
    trigger: "Deadly force aimed near known people, especially repeated shots or obvious human danger."
    tested_choice: "C"
    authority: "Common-law implied malice / depraved-heart murder; Model Penal Code-style extreme-indifference formulation"
    last_minute_review: true

silver_keys:
  - id: "SK-CRIM-DEGREE-LADDER-01"
    statement: "When the choices form a homicide degree ladder, do not pick the lower rung because it sounds safer. Match the danger facts to the highest supported rung first."
    type: "answer_array"
    navigates: "Murder vs. voluntary vs. involuntary vs. negligence-only answer array."
    trigger: "Four choices differ mainly by homicide degree/remedy."
    tested_choice: "C"
    outline_code: "00000000"
    last_minute_review: true

remediation:
  card_id: "CRIM-REM-HOMICIDE-LADDER-01"
  title: "No intent does not end murder"
  signal: "A killing is accidental in aim, but the defendant knowingly creates a lethal risk to people."
  student_move: "Do not drop automatically to manslaughter. Ask whether the facts show extreme disregard for human life."
  tiny_rule: "Known extreme risk can supply murder-level malice."
  trap: "Accident equals involuntary manslaughter."
  confidence: "ANCHOR_ASSISTED"

distilled_core_question: "Daniel fired several rifle shots at a target with children playing behind it; one shot missed and killed a child. On sufficiency appeal from murder, affirm or reduce?"
review_truth: "A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill."

case_study_output:
  final_student_script: "Call: sufficiency of murder. Array: homicide ladder. Facts: he saw children behind the target and fired several shots anyway. Gold Key: extreme recklessness can be murder, and sufficiency review favors the verdict. Pick A."
  expected_student_error: "Choosing C because the shot was not aimed at the child."
  recovery: "Separate intent-to-kill from extreme recklessness."

quality_control:
  rule_answer_issue_unchanged: true
  dominant_trap_preserved: true
  stem_not_over_signaled: true
  exactly_three_distractors: true
  each_distractor_single_filter: true
  christian_first: true
  popular_bible_names_only: true
  no_antagonist_names: true
  no_clutter_doctrine_added: true
  pick_rate_provenance_honest: true
  gold_keys_present: true
  silver_keys_present: true
  pass_available: true
  needs_human: false

analytics_hooks:
  primary_skill: "anchor_escalation"
  secondary_skill: "answer_array_degree_ladder"
  trap_tags:
    - "no_intent_equals_not_murder"
    - "accident_equals_involuntary_manslaughter"
    - "appellate_sufficiency_posture_missed"
  remediation_targets:
    - "homicide_degree_ladder"
    - "sufficiency_review"
    - "extreme_recklessness"
```

## 2. 17-section student case study

## program_frame

This is not a homicide outline. It is an answer-array drill.

The question asks what an appellate court should do after a murder conviction. The answers form a ladder:

**murder → voluntary manslaughter → involuntary manslaughter → ordinary negligence/dismissal**

The job is to identify the ladder, lock the appellate posture, and use the Gold Keys only where structure runs out.

## student_access_test

Could a trained C3 student solve this without outside doctrine?

**Not fully.** The final move needs two tiny anchors:

1. sufficiency review favors affirmance if a rational jury could find the elements; and
2. extreme recklessness can support murder even without intent to kill.

So this is **ANCHOR_SOLVE**, not pure C3.

## question_data

* **Question ID:** 14669_sunday_school_playground
* **Transformed from:** 14669
* **Subject:** CRIMINAL
* **Topic:** Criminal Law
* **Subtopic:** Homicide
* **Correct answer:** A
* **Original correct rate:** 83%
* **Dominant wrong answer:** C, inherited 10%

## distilled_core_question

Daniel fired several rifle shots at a target with children playing behind it; one shot missed and killed a child. On sufficiency appeal from murder, affirm or reduce?

## call_and_prediction

**Call:** The appellate court should do what?

**Prediction:** If the facts support murder under sufficiency review, affirm. Do not pick a lesser homicide merely because Daniel did not aim at the child.

## trigger_facts

| Fact                                        | Why it matters                              |
| ------------------------------------------- | ------------------------------------------- |
| Daniel was an experienced marksman          | He understood rifle-shot danger.            |
| He saw new houses                           | The area was not empty.                     |
| He saw children playing                     | Human-life risk was visible.                |
| The tree was between him and the playground | A missed shot would travel toward children. |
| He fired several shots                      | Repeated risk, not a single freak movement. |
| He appealed for insufficient evidence       | Appellate posture; not fresh fact-weighing. |

## governing_c3_lane

**Lane:** Criminal homicide degree ladder + sufficiency posture.

**CUT:** remove answers that use the wrong homicide frame.

**CLASH:** murder vs. lesser homicide.

**CALL:** Gold Key controls the mental-state ladder and sufficiency posture.

## choice_by_choice_walkthrough

### Choice A

**(1) Student-accessible C3 signal:** A is the only answer that affirms the conviction. It sits at the top of the homicide ladder.

**(2) Student label:** Residual after Gold Key.

**(3) What a true/responsive version would look like:** This is already true and responsive if the jury could find extreme recklessness.

**(4) Lawyer confirmation:** Sufficiency review asks whether a rational jury could find the elements. Extreme recklessness toward human life can satisfy malice for murder. A is correct.

### Choice B

**(1) Student-accessible C3 signal:** B jumps to voluntary manslaughter, but the stem gives no heat/provocation signal.

**(2) Student label:** Wrong homicide lane.

**(3) What a true/responsive version would look like:** B would need facts showing legally adequate provocation or heat-of-passion mitigation.

**(4) Lawyer confirmation:** Voluntary manslaughter is not supported on these facts; the official explanation notes no heat-of-passion defense.

### Choice C

**(1) Student-accessible C3 signal:** C is the attractive undercall. It notices “no aim at the child” but ignores the known-risk facts.

**(2) Student label:** Dominant undercall.

**(3) What a true/responsive version would look like:** C would need facts showing reckless or criminally negligent killing without murder-level extreme indifference.

**(4) Lawyer confirmation:** The rifle shots toward a known playground permit murder-level malice. C is too low.

### Choice D

**(1) Student-accessible C3 signal:** D treats the facts as only ordinary negligence. It does not account for the visible children and repeated shooting.

**(2) Student label:** Ordinary-negligence undercall.

**(3) What a true/responsive version would look like:** D would need facts showing only careless conduct, not conscious extreme risk to human life.

**(4) Lawyer confirmation:** The facts support more than ordinary negligence; dismissal is not the correct appellate result.

## residual_answer

**A survives.**

The call is sufficiency. The array is a degree ladder. The facts support the highest rung. The appellate court affirms.

## legal_leak_audit

The student-facing path does not say “depraved-heart murder” as a free-floating legal conclusion. It uses the Gold Key only after the answer array and trigger facts identify the fight.

* B is cut only after the provocation/voluntary-manslaughter Gold Key is available.
* C is rejected only after the extreme-recklessness Gold Key is available.
* D is rejected because it fails to account for the visible human-danger facts.
* A is selected because the sufficiency posture plus extreme-risk facts support affirmance.

**Drift audit:** All homicide-degree conclusions are anchor_assisted; no lawyer-only doctrine is mislabeled as hard structural.

## final_student_script

“Call is sufficiency of murder. The choices form a homicide ladder. B has no provocation facts. D undercalls the risk. The real fight is A vs. C: murder or involuntary manslaughter. Daniel saw children behind the target and fired several shots anyway. Gold Key: extreme recklessness can be murder, and sufficiency review favors the verdict. Pick A.”

## remediation_card

**Card:** CRIM-REM-HOMICIDE-LADDER-01 — No intent does not end murder.

**Signal:** The defendant did not aim to kill, but knowingly created a lethal risk.

**Student move:** Do not drop automatically to manslaughter. Ask whether the known-risk facts reach extreme recklessness.

**Tiny rule:** Known extreme risk to human life can support murder.

**Trap:** Accident = involuntary manslaughter.

**Confidence:** ANCHOR_ASSISTED.

## Gold Key(s)

**GK-CRIM-SUFFICIENCY-MOST-FAVORABLE-01**
On a sufficiency appeal, the reviewing court asks whether a rational jury could find the elements, viewing the evidence favorably to the prosecution. If yes, affirm.

**GK-CRIM-EXTREME-RECKLESSNESS-MURDER-01**
An unintentional killing can be murder when the defendant consciously creates an extreme risk to human life. No intent to kill is required.

## Silver Key(s)

**SK-CRIM-DEGREE-LADDER-01**
When the choices form a homicide degree ladder, do not pick the lower rung because it sounds safer. Match the danger facts to the highest supported rung first.

## qa_checklist

| Check                                               | Result |
| --------------------------------------------------- | ------ |
| Rule unchanged                                      | Pass   |
| Correct answer unchanged                            | Pass   |
| Original dominant trap preserved                    | Pass   |
| Stem does not over-signal “murder”                  | Pass   |
| Christian flavor adds no new doctrine               | Pass   |
| D revised for one clean defect                      | Pass   |
| Gold Keys present because anchor-dependent          | Pass   |
| Silver Key present because array navigation matters | Pass   |
| PASS verdict available                              | Pass   |

## wrong_answer_recovery_paths

| Choice | Why student picks it                        | Skipped move                                | Recovery                                  |
| ------ | ------------------------------------------- | ------------------------------------------- | ----------------------------------------- |
| B      | Thinks no intent means murder is too high   | Did not check voluntary-manslaughter lane   | Ask: where are the provocation facts?     |
| C      | Treats accident as involuntary manslaughter | Did not apply extreme-recklessness Gold Key | Ask: did he knowingly fire toward people? |
| D      | Treats missed shot as ordinary negligence   | Ignored visible children and repeated shots | Re-read the human-risk facts.             |

## outline_mastery_map

**Placement:** Criminal Law → Homicide → Murder by extreme recklessness; appellate sufficiency.

**This item teaches:** no intent-to-kill does not automatically defeat murder.

**Fills:** malice by extreme recklessness; sufficiency posture.

**Adjacent to master:** involuntary manslaughter, voluntary manslaughter, criminal negligence, reckless endangerment.

## crossover_intersection_map

| Intersection                    | Why it matters                                                                                     |
| ------------------------------- | -------------------------------------------------------------------------------------------------- |
| Criminal Law + Appellate Review | The call is not “what charge would you file”; it is “is the conviction supportable?”               |
| Homicide + Mental State         | The answer turns on the ladder between negligence, recklessness, extreme recklessness, and intent. |
| C3 + KFP Layering               | C is a Layer 2 undercall; A is the higher-layer answer once the risk facts are counted.            |

## review_truth

A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.

## 3. `c3_annotation`

```json
{
  "question_id": "14669_sunday_school_playground",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "00000000",
  "distilled_core_question": "Daniel fired several rifle shots at a target with children playing behind it; one shot missed and killed a child. On sufficiency appeal from murder, affirm or reduce?",
  "review_truth": "A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.",
  "c3": {
    "verdict": "PASS",
    "residual": "A",
    "agrees_with_key": true,
    "governing_law_type": "STANDARD",
    "deciding_phase": "CALL",
    "confidence": "ANCHOR_ASSISTED",
    "tension_axis": "murder_by_extreme_recklessness_vs_involuntary_manslaughter",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "degree_ladder_plus_gold_key",
    "difficulty": 2,
    "distractors": [
      {
        "choice": "B",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "bait_doctrine",
        "architecture": "wrong_frame",
        "card_ref": "GK-CRIM-EXTREME-RECKLESSNESS-MURDER-01",
        "explanation": "Voluntary manslaughter is the wrong homicide lane because no provocation or heat-of-passion signal appears."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "wrong_element",
        "architecture": "wrong_frame",
        "card_ref": "GK-CRIM-EXTREME-RECKLESSNESS-MURDER-01",
        "explanation": "The answer focuses on accident/no intent but skips the extreme-risk facts that can support murder."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "wrong_element",
        "architecture": "wrong_frame",
        "card_ref": "SK-CRIM-DEGREE-LADDER-01",
        "explanation": "The answer undercalls the facts as ordinary civil negligence and ignores the visible human danger."
      }
    ],
    "analyzer_notes": "drift_audit: all homicide-degree conclusions are anchor_assisted; no official-explanation doctrine is converted into fake hard structure. transformed_from: 14669. D was revised from a two-defect distractor into a one-defect ordinary-negligence undercall.",
    "gold_keys": [
      {
        "id": "GK-CRIM-SUFFICIENCY-MOST-FAVORABLE-01",
        "statement": "On a sufficiency appeal, the reviewing court asks whether a rational jury could find the elements, viewing the evidence favorably to the prosecution. If yes, affirm.",
        "type": "burden",
        "unlocks": "The appellate posture.",
        "trigger": "Convicted defendant appeals for insufficient evidence.",
        "tested_choice": "A",
        "authority": "Jackson v. Virginia, 443 U.S. 307 (1979)",
        "last_minute_review": true
      },
      {
        "id": "GK-CRIM-EXTREME-RECKLESSNESS-MURDER-01",
        "statement": "An unintentional killing can be murder when the defendant consciously creates an extreme risk to human life. No intent to kill is required.",
        "type": "distinction",
        "unlocks": "The murder vs involuntary manslaughter trap.",
        "trigger": "Deadly force used despite visible human danger.",
        "tested_choice": "C",
        "authority": "Common-law implied malice / depraved-heart murder",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CRIM-DEGREE-LADDER-01",
        "statement": "When the choices form a homicide degree ladder, do not pick the lower rung because it sounds safer. Match the danger facts to the highest supported rung first.",
        "type": "answer_array",
        "navigates": "Murder vs voluntary vs involuntary vs negligence-only ladder.",
        "trigger": "Answer choices differ mainly by homicide degree and appellate remedy.",
        "tested_choice": "C",
        "outline_code": "00000000",
        "last_minute_review": true
      }
    ]
  }
}
```

## 4. `program_elements`

```json
{
  "question_id": "14669_sunday_school_playground",
  "subject": "CRIMINAL",
  "outline_code": "00000000",
  "distilled_core_question": "Daniel fired several rifle shots at a target with children playing behind it; one shot missed and killed a child. On sufficiency appeal from murder, affirm or reduce?",
  "review_truth": "A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.",
  "tension": {
    "axis": "murder_by_extreme_recklessness_vs_involuntary_manslaughter",
    "resolver": "visible children behind target plus repeated rifle shots"
  },
  "traps": [
    {
      "choice": "B",
      "mold": "bait_doctrine",
      "architecture": "wrong_frame",
      "why_attractive": "It offers a lesser homicide result and sounds like a compromise.",
      "focus_group_pct": 5
    },
    {
      "choice": "C",
      "mold": "wrong_element",
      "architecture": "wrong_frame",
      "why_attractive": "It treats accidental aim/no intent as enough to reduce murder to involuntary manslaughter.",
      "focus_group_pct": 10
    },
    {
      "choice": "D",
      "mold": "wrong_element",
      "architecture": "wrong_frame",
      "why_attractive": "It treats the missed shot as ordinary negligence and ignores the known playground risk.",
      "focus_group_pct": null
    }
  ],
  "remediation_card": {
    "card_id": "CRIM-REM-HOMICIDE-LADDER-01",
    "title": "No intent does not end murder",
    "signal": "The defendant did not aim to kill, but knowingly created a lethal risk.",
    "student_move": "Do not drop automatically to manslaughter. Ask whether the known-risk facts reach extreme recklessness.",
    "tiny_rule": "Known extreme risk can supply murder-level malice.",
    "trap": "Accident equals involuntary manslaughter.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "homicide_degree_ladder",
    "sufficiency_review",
    "no_intent_equals_not_murder",
    "ordinary_negligence_undercall",
    "lesser_offense_compromise"
  ]
}
```

## 5. `program_intelligence`

```json
{
  "question_id": "14669_sunday_school_playground",
  "subject": "CRIMINAL",
  "outline_code": "00000000",
  "distilled_core_question": "Daniel fired several rifle shots at a target with children playing behind it; one shot missed and killed a child. On sufficiency appeal from murder, affirm or reduce?",
  "review_truth": "A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.",
  "wrong_answer_paths": [
    {
      "choice": "B",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "bait_doctrine",
      "why_a_student_picks_this": "The student sees no intent to kill and searches for a lesser homicide label.",
      "skipped_move": "Did not check whether voluntary manslaughter has a provocation/heat signal.",
      "recovery_step": "Ask whether the stem contains provocation facts. If not, cut voluntary manslaughter."
    },
    {
      "choice": "C",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "wrong_element",
      "why_a_student_picks_this": "The student focuses on accidental aim and misses the visible playground danger.",
      "skipped_move": "Did not apply the extreme-recklessness Gold Key.",
      "recovery_step": "Count human-risk facts: saw children, aimed with playground behind target, fired several shots."
    },
    {
      "choice": "D",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "wrong_element",
      "why_a_student_picks_this": "The student frames the case as a tragic accident and stops at negligence.",
      "skipped_move": "Did not use the degree-ladder Silver Key.",
      "recovery_step": "Ask whether the facts support more than ordinary carelessness."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "answer_array",
      "target_skill": "degree_ladder_recognition",
      "prompt": "Four homicide answers are murder, voluntary manslaughter, involuntary manslaughter, and negligence-only. What is the array shape?",
      "answer": "A mental-state degree ladder."
    },
    {
      "drill_type": "trigger_fact",
      "target_skill": "extreme_risk_fact_counting",
      "prompt": "What facts push target shooting toward murder-level risk?",
      "answer": "Visible people behind the target, deadly weapon, repeated shots, and conscious choice to fire anyway."
    },
    {
      "drill_type": "call_focus",
      "target_skill": "sufficiency_posture",
      "prompt": "A convicted defendant argues the evidence was insufficient. What is the appellate posture trap?",
      "answer": "The court is not choosing the fairest lesser offense; it asks whether a rational jury could support the conviction."
    },
    {
      "drill_type": "wrong_answer_recovery",
      "target_skill": "no_intent_trap",
      "prompt": "Why is 'he did not intend to kill' not enough to reduce murder?",
      "answer": "Because extreme recklessness toward human life can supply murder-level malice."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "degree_ladder",
      "sufficiency_appeal",
      "known_risk",
      "deadly_weapon",
      "repeated_shots"
    ],
    "misconception_tags": [
      "accident_equals_manslaughter",
      "no_intent_equals_no_murder",
      "ordinary_negligence_undercall",
      "appellate_court_reweighs_facts"
    ]
  },
  "component_routing": [
    "lesson_01_true_and_responsive",
    "lesson_02_cut_clash_call",
    "lesson_07_predict_before_peek",
    "lesson_09_clash_axis",
    "lesson_12_anchor_deck",
    "criminal_homicide_anchor_deck"
  ],
  "crossovers": [
    {
      "name": "Criminal Law + Appellate Review",
      "note": "The homicide answer depends on the sufficiency posture."
    },
    {
      "name": "KFP Layering + Degree Ladder",
      "note": "The dominant trap is a lower-layer answer that sounds safer."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-CRIM-SUFFICIENCY-MOST-FAVORABLE-01",
      "statement": "On a sufficiency appeal, the reviewing court asks whether a rational jury could find the elements, viewing the evidence favorably to the prosecution. If yes, affirm.",
      "type": "burden",
      "unlocks": "The appellate posture.",
      "trigger": "Convicted defendant appeals for insufficient evidence.",
      "tested_choice": "A",
      "authority": "Jackson v. Virginia, 443 U.S. 307 (1979)",
      "last_minute_review": true
    },
    {
      "id": "GK-CRIM-EXTREME-RECKLESSNESS-MURDER-01",
      "statement": "An unintentional killing can be murder when the defendant consciously creates an extreme risk to human life. No intent to kill is required.",
      "type": "distinction",
      "unlocks": "The murder vs involuntary manslaughter trap.",
      "trigger": "Deadly force used despite visible human danger.",
      "tested_choice": "C",
      "authority": "Common-law implied malice / depraved-heart murder",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIM-DEGREE-LADDER-01",
      "statement": "When the choices form a homicide degree ladder, do not pick the lower rung because it sounds safer. Match the danger facts to the highest supported rung first.",
      "type": "answer_array",
      "navigates": "Murder vs voluntary vs involuntary vs negligence-only ladder.",
      "trigger": "Answer choices differ mainly by homicide degree and appellate remedy.",
      "tested_choice": "C",
      "outline_code": "00000000",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Criminal Law > Homicide > Murder by extreme recklessness; appellate sufficiency",
    "this_item_teaches": "A killing can be murder without intent to kill when the known-risk facts show extreme recklessness toward human life.",
    "fills": [
      "malice aforethought by extreme recklessness",
      "sufficiency review",
      "homicide mental-state ladder"
    ],
    "adjacent_to_master": [
      "voluntary manslaughter",
      "involuntary manslaughter",
      "criminal negligence",
      "felony murder",
      "attempted murder intent"
    ]
  }
}
```

[1]: https://supreme.justia.com/cases/federal/us/443/307/?utm_source=chatgpt.com "Jackson v. Virginia | 443 U.S. 307 (1979)"
[2]: https://www.law.cornell.edu/wex/malice_aforethought?utm_source=chatgpt.com "malice aforethought | Wex - Law.Cornell.Edu"

### 2. The 17-section student case study

```
1. **program_frame:** Question 14669; source 14669.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic Criminal Law; subtopic Homicide.
4. **distilled_core_question:** Daniel fired several rifle shots at a target with children playing behind it; one shot missed and killed a child. On sufficiency appeal from murder, affirm or reduce?
5. **call_and_prediction:** Credited answer: A.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 00000000.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** A
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 00000000.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.
```

### 3. c3_annotation

```json
{
  "question_id": "14669",
  "subject": "CRIMINAL",
  "credited_answer": "A",
  "outline_code": "00000000",
  "distilled_core_question": "Daniel fired several rifle shots at a target with children playing behind it; one shot missed and killed a child. On sufficiency appeal from murder, affirm or reduce?",
  "review_truth": "A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 14669; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "14669",
  "subject": "CRIMINAL",
  "outline_code": "00000000",
  "distilled_core_question": "Daniel fired several rifle shots at a target with children playing behind it; one shot missed and killed a child. On sufficiency appeal from murder, affirm or reduce?",
  "review_truth": "A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-14669",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.",
    "trap": "See preserved traps when present.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "14669",
  "subject": "CRIMINAL",
  "outline_code": "00000000",
  "distilled_core_question": "Daniel fired several rifle shots at a target with children playing behind it; one shot missed and killed a child. On sufficiency appeal from murder, affirm or reduce?",
  "review_truth": "A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.",
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
    "placement": "00000000",
    "this_item_teaches": "A sufficiency appeal from murder is affirmed when the facts let a rational jury find extreme recklessness toward human life, even without intent to kill.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
