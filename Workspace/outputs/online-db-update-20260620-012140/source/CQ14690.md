---
qid: "14690_bible_study_protected_victim"
transformed_from: "14690"
subject: "CRIMINAL"
topic: "Criminal Law"
subtopic: "Inchoate Crimes"
outline_code: "73020700"
key: "B"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "choice: \"C"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense."
---
Source basis: the uploaded Q14690 row supplies the original Criminal Law/Inchoate Crimes item, pick-rate data, answer choices, official key, and explanations. The prompt also requires a Christian-first creative transform plus full C3, with official doctrine quarantined to lawyer-confirmation and YAML/JSON output before the walkthrough.    The Reasoning Creed posture was used as a hard-problem discipline: preserve the goal, name the pivot, and avoid shrinking the requested creative frame. 

# A) PASS-1 TRANSFORM REPORT

## 1. Final question — revised stem + call

**BARMATRIX QID:** `14690_bible_study_protected_victim`
**Transformed from:** `14690`

Peter, an 18-year-old, and his 14-year-old girlfriend Ruth met through a neighborhood Bible-study group. They made plans to meet in Peter’s apartment to have sexual intercourse, and they did so. Ruth later told her mother about the incident. Peter was charged with statutory rape and conspiracy to commit statutory rape. In the jurisdiction, the age of consent is 15, and the law of conspiracy is the same as at common law. Peter was convicted of both charges and given consecutive sentences. On appeal, Peter contends that his conspiracy conviction should be reversed. That conviction should be

## 2. Distilled Core Question

An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?

## 3. Final answer choices

A. affirmed, because Peter agreed with Ruth to commit the crime.
B. reversed, because Ruth could not be a conspirator to this crime.
C. reversed, because the crime is one that can only be committed by agreement and thus Wharton’s Rule bars conspiracy liability.
D. reversed, because one cannot conspire with a person too young to consent.

## 4. Possible replacement answer choices

No replacement adopted. The original wrong choices are low-pick but legally useful. They preserve three distinct wrong routes: agreement-only, Wharton’s Rule, and minor-incapacity overclaim.

| Candidate                                                                                                | Replaces | Original % | Mold            | Filter         | Adoption                                                                                |
| -------------------------------------------------------------------------------------------------------- | -------: | ---------: | --------------- | -------------- | --------------------------------------------------------------------------------------- |
| “affirmed, because a completed statutory rape necessarily proves the conspiracy.”                        |        A |        10% | wrong_element   | NOT_RESPONSIVE | Not adopted. Stronger but risks adding a completed-crime/conspiracy merger distraction. |
| “reversed, because Wharton’s Rule always bars conspiracy whenever the target crime involves two people.” |        C |        15% | tiered_absolute | NOT_TRUE       | Not adopted. Too loud. Original C is a better trap.                                     |
| “reversed, because a person under the age of consent is legally incapable of agreeing to any crime.”     |        D |         7% | tiered_absolute | NOT_TRUE       | Not adopted. Original D is cleaner and closer to the tested misconception.              |

Pick-rate provenance: all final choices are revised/kept from the original and **inherit** original pick-rate labels for analysis only. This transformed item is net-new and has no measured pick rates. The prompt requires honest inherited-vs-predicted pick-rate provenance. 

## 5. Correct answer

**B. reversed, because Ruth could not be a conspirator to this crime.**

## 6. Full right-answer explanation

**B is correct.**

**Gold Key:** Common-law conspiracy needs a real guilty agreement, and a protected victim is not that guilty partner. In statutory rape, the underage participant is treated as the protected person, not as a coconspirator.

**Silver Key:** The appeal attacks only the conspiracy conviction. Sort the three reversal answers by the reason they give: protected victim, Wharton’s Rule, or generic minor incapacity. Only the protected-victim route answers this item.

Peter can be guilty of statutory rape, but the conspiracy conviction depends on whether Ruth can be the other conspirator. Because Ruth is the protected person in the statutory rape offense, she cannot be treated as the guilty conspiracy partner for that offense. With Ruth as the only alleged coconspirator, Peter’s conspiracy conviction should be reversed.

## 7. Full wrong-answer explanations

**A is wrong.**
A proves only the easy part: Peter and Ruth agreed to meet. The call is not “was there an agreement in ordinary language?” It is whether the conspiracy conviction can stand. **Gold Key:** a protected victim is not the guilty partner needed for common-law conspiracy.

**C is wrong.**
C chooses the most lawyerly wrong route. Wharton’s Rule is about crimes that necessarily require voluntary concerted criminal participation by two guilty participants. This item is not using that route. **Silver Key:** do not let three reversal choices collapse together. C reverses for the wrong reason.

**D is wrong.**
D overclaims. It says one cannot conspire with a person too young to consent. That is too broad. The issue is not that minors can never conspire. The issue is that Ruth is the protected victim of this crime.

## 8. Black-letter-law verification and legal reasoning

Common-law conspiracy requires an agreement between two or more persons with shared criminal purpose; model federal conspiracy instructions state that the government must prove that two or more persons agreed and that the defendant knowingly joined that agreement. 

The protected-victim limitation is grounded in **Gebardi v. United States**. The Supreme Court held that where the statute’s policy leaves the transported woman unpunished, her acquiescence does not make her a conspirator; the Court specifically analogized to “a prosecution under a statutory rape act” where the underage girl’s consent would not expose her to conspiracy liability. ([Legal Information Institute][1]) The Department of Justice summarizes the same point: Gebardi held that a woman merely assenting to unlawful transport could not be charged with conspiracy, and if she was the only alleged coconspirator, the charge against the man must fall. ([Department of Justice][2])

Wharton’s Rule is a separate doctrine. The Supreme Court in **Iannelli v. United States** described it as a narrow exception to the usual rule that conspiracy and the substantive offense do not merge, traditionally applying to offenses such as adultery, incest, bigamy, and dueling where the substantive offense necessarily requires concerted criminal participation. ([Justia Law][3]) That doctrine does not supply the reason here. The official answer remains unchanged from the source row: **B**. 

## 9. Why the variation preserves rigor

The legal rule, call, issue category, answer-trap, ages, age-of-consent fact, common-law conspiracy fact, and answer geometry are unchanged. The Bible-study detail is only setting. It adds no church-property, First Amendment, authority, competency, or institutional-liability issue.

## 10. C3 elimination walkthrough — CUT → CLASH → CALL

**CUT:**
D is an overclaim. “One cannot conspire with a person too young to consent” says too much.

**CLASH:**
A, B, and C all appear to speak to conspiracy. They fight over the reason the conspiracy conviction stands or falls:

* A: agreement alone is enough.
* B: Ruth cannot be a conspirator to this offense.
* C: Wharton’s Rule bars the conspiracy.

**CALL:**
Use the Gold Key. The deciding route is protected-victim conspiracy, not generic agreement, Wharton’s Rule, or minor incapacity. Residual: **B**.

## 11. Review Truth

When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.

## 12. The 5 variations considered

| Variation                  | Setting                             | Cast              | Preserved issue                          | Memorable hook                       | Legal risk                                   | Recommendation |
| -------------------------- | ----------------------------------- | ----------------- | ---------------------------------------- | ------------------------------------ | -------------------------------------------- | -------------- |
| Bible Study Neighbor Hypo  | Neighborhood Bible-study connection | Peter / Ruth      | Protected victim cannot be coconspirator | Familiar Bible names, minimal flavor | Low                                          | **Chosen**     |
| Christian Coffeehouse Hypo | Christian coffeehouse               | Paul / Mary       | Same                                     | Easy to visualize                    | Slight clutter from business setting         | Rejected       |
| Law-School Crim Hypo       | Law-school student social circle    | John / Esther     | Same                                     | Strong bar-prep frame                | Less Christian                               | Rejected       |
| Youth Choir Practice Hypo  | After choir practice                | Daniel / Lydia    | Same                                     | Memorable church detail              | Risk of church authority/institutional facts | Rejected       |
| Bar-Prep Simulation Hypo   | Private bar-prep group              | Barnabas / Martha | Same                                     | Law-school variation                 | Awkward age/context fit                      | Rejected       |

---

# B) PASS-2 BLOCK 1 — QUESTION YAML

```yaml
barmatrix_row:
  question_id: "14690_bible_study_protected_victim"
  transformed_from: "14690"
  subject: "CRIMINAL"
  topic: "Criminal Law"
  subtopic: "Inchoate Crimes"
  original_focus_group_correct_pct: 68
  selection_percentages:
    A:
      pct: 10
      provenance: "inherited_from_original_wrong_choice_not_measured_on_transform"
    B:
      pct: 68
      provenance: "inherited_from_original_correct_choice_not_measured_on_transform"
    C:
      pct: 15
      provenance: "inherited_from_original_wrong_choice_not_measured_on_transform"
    D:
      pct: 7
      provenance: "inherited_from_original_wrong_choice_not_measured_on_transform"
  official_key: "B"
  stem: "Peter, an 18-year-old, and his 14-year-old girlfriend Ruth met through a neighborhood Bible-study group. They made plans to meet in Peter’s apartment to have sexual intercourse, and they did so. Ruth later told her mother about the incident. Peter was charged with statutory rape and conspiracy to commit statutory rape. In the jurisdiction, the age of consent is 15, and the law of conspiracy is the same as at common law. Peter was convicted of both charges and given consecutive sentences. On appeal, Peter contends that his conspiracy conviction should be reversed. That conviction should be"
  call: "That conviction should be"
  choices:
    A: "affirmed, because Peter agreed with Ruth to commit the crime."
    B: "reversed, because Ruth could not be a conspirator to this crime."
    C: "reversed, because the crime is one that can only be committed by agreement and thus Wharton’s Rule bars conspiracy liability."
    D: "reversed, because one cannot conspire with a person too young to consent."

source_stack:
  - priority: 1
    source: "Uploaded BARMATRIX row for Q14690"
    use: "Stem, call, choices, official key, official explanations, pick-rate provenance"
  - priority: 2
    source: "Creative-transform instructions"
    use: "Christian-first transform, answer-array preservation, pick-rate provenance, output contract"
  - priority: 3
    source: "C3 controlled vocabulary and method"
    use: "Filters, molds, method_class, verdicts, CUT-CLASH-CALL"
  - priority: 4
    source: "Reasoning Creed"
    use: "Preserve ambitious creative goal while keeping legal shell conservative"
  - priority: 5
    source: "Legal authorities"
    use: "Lawyer-confirmation only: conspiracy agreement, protected-victim limitation, Wharton’s Rule"

student_access_contract:
  controlling_test: "Could a trained C3 student identify the problem without outside doctrine?"
  allowed_student_tools:
    - "Lesson 1: credited answer must be true and responsive"
    - "Lesson 2: CUT -> CLASH -> CALL"
    - "Issue-Sense: wrong_element and bait_doctrine"
    - "Ear: tiered_absolute overclaim"
    - "Silver Key SK-CRIM-REASON-SORT-CONSPIRACY-01"
    - "Gold Key GK-CRIM-PROTECTED-VICTIM-CONSPIRACY-01"
  anchor_status: "anchor_assisted"
  legal_leak_rule: "Protected-victim conspiracy doctrine is taught as a Gold Key; doctrinal details stay in lawyer_confirmation."

stem_parse:
  call_type: "ordinary affirmative"
  negative_stem: false
  adjacent_call_trap: "Do not answer whether Peter is guilty of statutory rape. The appeal challenges only the conspiracy conviction."
  actors:
    defendant: "Peter"
    protected_person: "Ruth"
    charging_party: "state"
  procedural_posture: "appeal after convictions and consecutive sentences"
  target_conviction: "conspiracy to commit statutory rape"

trigger_facts:
  - fact: "Peter is 18."
    access_label: "stem_visible"
    role: "adult defendant"
  - fact: "Ruth is 14."
    access_label: "stem_visible"
    role: "underage participant"
  - fact: "Age of consent is 15."
    access_label: "stem_visible"
    role: "makes Ruth the protected person for statutory rape"
  - fact: "Common-law conspiracy applies."
    access_label: "stem_visible"
    role: "requires actual conspiracy partner; no unilateral rule supplied"
  - fact: "Only Peter and Ruth are identified as the agreement participants."
    access_label: "stem_visible"
    role: "no third guilty conspirator"
  - fact: "Appeal challenges conspiracy conviction only."
    access_label: "stem_visible"
    role: "locks the call"

c3_routing:
  subject_fit: "CRIMINAL = inchoate liability + participant-status routing"
  governing_law_type: "RULE"
  deciding_phase: "CALL"
  method_class: "anchor_assisted"
  confidence: "ANCHOR_ASSISTED"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "B"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: 3
  tension_axis: "protected victim as non-conspirator vs agreement-only / Wharton / minor-incapacity routes"
  call_heuristic: "answer_array_reason_sort_with_gold_key"

answer_array:
  geometry: "1 affirmance reason + 3 reversal reasons"
  shape: "reason-sort array"
  dominant_trap:
    choice: "C"
    inherited_pct: 15
    trap: "sounds like advanced conspiracy doctrine but uses the wrong route"
  silver_key:
    id: "SK-CRIM-REASON-SORT-CONSPIRACY-01"
    type: "answer_array"
  gold_key:
    id: "GK-CRIM-PROTECTED-VICTIM-CONSPIRACY-01"
    type: "distinction"

choice_walkthroughs:
  A:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "half_right_answer"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "agreement-only answer"
    c3_signal: "A proves an agreement fact, but the call turns on whether Ruth can be the guilty conspiracy partner."
    lawyer_confirmation: "Agreement alone does not sustain common-law conspiracy when the only alleged partner is the protected victim of the target offense."
  B:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "protected-victim residual"
    c3_signal: "B answers the exact appeal: Ruth’s status prevents her from being the coconspirator for this offense."
    lawyer_confirmation: "Under the Gebardi protected-victim principle, the statutory rape victim is not punished as a coconspirator; with no other conspirator, the conspiracy conviction falls."
  C:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "bait_doctrine"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "legally_true_but_irrelevant"
      - "exception_over_applied"
      - "sounds_lawyerly"
      - "bar_exam_bait"
      - "exception_hunting"
    method_class: "anchor_assisted"
    student_label: "Wharton’s Rule wrong-route answer"
    c3_signal: "C is a real conspiracy doctrine route, but the item is not decided by Wharton’s Rule."
    lawyer_confirmation: "Wharton’s Rule is a narrow merger-like doctrine for offenses requiring concerted criminal participation; statutory rape does not require the minor victim’s voluntary guilty participation."
  D:
    filter_broken: "NOT_TRUE"
    mold_code: "tiered_absolute"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "overbroad_rule"
      - "common_student_myth"
      - "moral_common_sense_answer"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "minor-incapacity overclaim"
    c3_signal: "D says too much: it turns Ruth’s protected-victim status into a broad rule that no one can conspire with a minor."
    lawyer_confirmation: "A minor can be a conspirator in some crimes; the defect here is protected-victim status for statutory rape, not generic age-based incapacity."

residual_answer:
  choice: "B"
  answer_text: "reversed, because Ruth could not be a conspirator to this crime."
  residual_reason: "Only B gives the protected-victim reason that answers the conspiracy conviction appeal."

legal_leak_audit:
  student_accessible_claims:
    - claim: "The appeal challenges only the conspiracy conviction."
      access: "stem_visible"
      pass: true
    - claim: "A proves only agreement, not the contested conspiracy-partner issue."
      access: "C3-visible with Gold Key"
      pass: true
    - claim: "C is a wrong-route answer."
      access: "C3-visible with Gold Key and Silver Key"
      pass: true
    - claim: "D overclaims because it says one cannot conspire with a person too young to consent."
      access: "answer-text absolute plus Gold Key"
      pass: true
  quarantined_to_lawyer_confirmation:
    - "Gebardi protected-victim doctrine"
    - "Wharton’s Rule doctrinal scope"
    - "Common-law conspiracy plurality/bilateral requirement"
  drift_audit: "No doctrine is presented as pure structure. The deciding rule is marked anchor_assisted and promoted as a Gold Key."

gold_keys:
  - id: "GK-CRIM-PROTECTED-VICTIM-CONSPIRACY-01"
    statement: "Common-law conspiracy needs a real guilty agreement, and a protected victim is not that guilty partner. In statutory rape, the underage participant is treated as the protected person, not as a coconspirator; do not route the issue through Wharton’s Rule or generic minor incapacity."
    type: "distinction"
    unlocks: "The protected-victim reason for reversing the conspiracy conviction and the Wharton/minor-capacity traps."
    trigger: "Only alleged conspiracy partner is the person the target offense is designed to protect."
    tested_choice: "C"
    authority: "Gebardi v. United States, 287 U.S. 112 (1932); Iannelli v. United States, 420 U.S. 770 (1975)"
    last_minute_review: true

silver_keys:
  - id: "SK-CRIM-REASON-SORT-CONSPIRACY-01"
    statement: "When the appeal attacks only the conspiracy count, sort the answer choices by the reason they give for affirming or reversing. Do not let three reversal choices blur together: protected victim, Wharton’s Rule, and minor incapacity are different routes."
    type: "answer_array"
    navigates: "Three reversal reasons that look similar on first read."
    trigger: "One affirmance answer and three reversal answers with different legal reasons."
    tested_choice: "C"
    outline_code: "73020700"
    last_minute_review: true

remediation:
  card_id: "CRIM-REM-PROTECTED-VICTIM-CONSPIRACY"
  title: "Protected victim is not the conspiracy partner"
  signal: "The only alleged coconspirator is the person the target offense protects."
  student_move: "Do not stop at agreement. Ask whether that person can be the guilty partner for this offense."
  tiny_rule: "Protected victim defeats conspiracy with that victim as the only partner."
  trap: "Wharton’s Rule and generic minor incapacity feel more familiar but answer the wrong route."
  confidence: "ANCHOR_ASSISTED"

distilled_core_question: "An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?"

review_truth: "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense."

case_study_output:
  final_student_script: "Only the conspiracy count is on appeal. A gives agreement only. C is Wharton’s Rule, the wrong route. D overclaims about minors. Gold Key: protected victim is not the guilty conspiracy partner. Pick B."
  pass_1_transform_locked: true
  pass_2_full_c3_complete: true

quality_control:
  answer_key_preserved: true
  issue_preserved: true
  dominant_trap_preserved:
    choice: "C"
    inherited_pct: 15
  no_clutter_doctrine_added: true
  bible_names_only: true
  popular_non_antagonist_bible_names: true
  pick_rate_provenance_honest: true
  exactly_three_single_filter_distractors: true
  residual_equals_key: true
  bank_validation_available: "PASS"
  drift_audit: "The route is marked anchor_assisted, not hard_structural."

analytics_hooks:
  item_family: "criminal_inchoate_protected_victim_conspiracy"
  primary_skill: "anchor_escalation_after_reason_sort"
  tested_molds:
    A: "wrong_element"
    C: "bait_doctrine"
    D: "tiered_absolute"
  red_zone:
    - "agreement-only conspiracy"
    - "Wharton’s Rule overuse"
    - "minor incapacity overclaim"
    - "wrong reversal reason"
```

# B) PASS-2 BLOCK 2 — 17-SECTION STUDENT CASE STUDY

## program_frame

This is a Criminal Law / Inchoate Crimes item. The answer array is not four independent rules. It is a reason-sort array.

The task is narrow: decide whether Peter’s **conspiracy conviction** should be reversed.

## student_access_test

Student-access result: **anchor-assisted**.

A student can structurally see that:

* the appeal is only about conspiracy;
* A proves only agreement;
* C and D give different reversal reasons;
* D uses an overbroad “one cannot” form.

A student cannot derive the protected-victim conspiracy rule from grammar alone. That rule is a Gold Key.

## question_data

**QID:** `14690_bible_study_protected_victim`
**Subject:** Criminal Law
**Subtopic:** Inchoate Crimes
**Correct answer:** B
**Inherited pick rates:** A 10%, B 68%, C 15%, D 7%
**Measured on transform:** no.

## distilled_core_question

An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?

## call_and_prediction

**Call:** “That conviction should be…”

“That conviction” means the conspiracy conviction. Not the statutory rape conviction.

Prediction before choices: the statutory rape conviction can stand, but the conspiracy conviction has a problem if Ruth is the only alleged conspirator.

## trigger_facts

| Fact                                     | Why it matters                                    |
| ---------------------------------------- | ------------------------------------------------- |
| Peter is 18                              | Adult defendant.                                  |
| Ruth is 14                               | Under the stated age of consent.                  |
| Age of consent is 15                     | Ruth is the protected person for statutory rape.  |
| Common-law conspiracy applies            | This is not a unilateral conspiracy jurisdiction. |
| Only Peter and Ruth are in the agreement | No third guilty conspirator.                      |
| Appeal challenges conspiracy conviction  | Do not answer the statutory rape count.           |

## governing_c3_lane

**Lane:** Criminal inchoate liability.
**Phase:** CALL.
**Method class:** anchor_assisted.
**Gold Key controls:** protected victim cannot be the conspiracy partner for the offense that protects that victim.

## choice_by_choice_walkthrough

### Choice A

**A. affirmed, because Peter agreed with Ruth to commit the crime.**

1. **Student-accessible C3 signal:**
   A answers with agreement only. But the call asks whether the conspiracy conviction can stand.

2. **Student label:**
   Agreement-only / wrong-element answer.

3. **What a true/responsive version would look like:**
   “Affirmed, because Peter agreed with a person legally capable of being a guilty coconspirator for this offense.” That is not the stem.

4. **Lawyer confirmation:**
   A conspiracy requires more than a bare factual agreement. Here, the only alleged agreement is with the protected victim of statutory rape, so A does not sustain the conspiracy conviction.

### Choice B

**B. reversed, because Ruth could not be a conspirator to this crime.**

1. **Student-accessible C3 signal:**
   B matches the exact call. It gives a reason tied to the conspiracy count.

2. **Student label:**
   Protected-victim residual.

3. **What a true/responsive version would look like:**
   This is the true and responsive version.

4. **Lawyer confirmation:**
   The protected-victim principle prevents treating Ruth as Peter’s guilty coconspirator for statutory rape. With Ruth as the only alleged partner, the conspiracy conviction should be reversed.

### Choice C

**C. reversed, because the crime is one that can only be committed by agreement and thus Wharton’s Rule bars conspiracy liability.**

1. **Student-accessible C3 signal:**
   C is the most lawyerly trap. It gives a real conspiracy doctrine route, but the wrong route.

2. **Student label:**
   Wharton’s Rule bait-doctrine.

3. **What a true/responsive version would look like:**
   “Reversed because the only alleged coconspirator is the protected person.” That is B.

4. **Lawyer confirmation:**
   Wharton’s Rule applies to narrow offenses that necessarily require voluntary concerted criminal participation. Statutory rape does not depend on the minor victim’s guilty voluntary participation. C reverses for the wrong reason.

### Choice D

**D. reversed, because one cannot conspire with a person too young to consent.**

1. **Student-accessible C3 signal:**
   D says “one cannot” and makes a broad age-based rule.

2. **Student label:**
   Minor-incapacity overclaim.

3. **What a true/responsive version would look like:**
   “Reversed because this protected person cannot be the coconspirator for this protected-victim offense.”

4. **Lawyer confirmation:**
   Minors can sometimes participate in conspiracies. The issue is not age alone. The issue is Ruth’s status as the person the statutory rape law protects.

## residual_answer

Residual answer: **B**.

B is the only answer that gives the correct reason for reversing the conspiracy conviction.

## legal_leak_audit

No choice is labeled false on lawyer-only grounds in the student layer. The student route uses:

* call lock;
* answer-array reason sort;
* overclaim detection;
* Gold Key protected-victim distinction.

Doctrinal authority remains in lawyer confirmation.

Drift audit: The analysis does not pretend the protected-victim rule is pure structure. The decisive rule is classified as anchor_assisted.

## final_student_script

Only the conspiracy count is on appeal. A gives agreement only. C is Wharton’s Rule, but that is the wrong reversal route. D overclaims about minors. Gold Key: the protected victim is not the guilty conspiracy partner. Choose **B**.

## remediation_card

**Card:** `CRIM-REM-PROTECTED-VICTIM-CONSPIRACY`
**Signal:** The only alleged coconspirator is the person the statute protects.
**Student move:** Do not stop at agreement. Ask whether that person can be the guilty partner for this offense.
**Tiny rule:** Protected victim defeats conspiracy with that victim as the only partner.
**Trap:** Wharton’s Rule feels more advanced, but it is the wrong route.
**Confidence:** anchor-assisted.

## Gold Key(s)

**GK-CRIM-PROTECTED-VICTIM-CONSPIRACY-01**
Common-law conspiracy needs a real guilty agreement, and a protected victim is not that guilty partner. In statutory rape, the underage participant is treated as the protected person, not as a coconspirator; do not route the issue through Wharton’s Rule or generic minor incapacity.

## Silver Key(s)

**SK-CRIM-REASON-SORT-CONSPIRACY-01**
When the appeal attacks only the conspiracy count, sort the answer choices by the reason they give for affirming or reversing. Do not let three reversal choices blur together: protected victim, Wharton’s Rule, and minor incapacity are different routes.

## qa_checklist

| Check                              | Result            |
| ---------------------------------- | ----------------- |
| Rule unchanged                     | Pass              |
| Correct answer unchanged           | Pass              |
| Dominant wrong trap preserved      | Pass: C           |
| No new legal issue added           | Pass              |
| Popular non-antagonist Bible names | Pass: Peter, Ruth |
| Three distractors, one filter each | Pass              |
| Residual equals official key       | Pass              |
| Gold Key included                  | Pass              |
| Silver Key included                | Pass              |
| Pick-rate provenance honest        | Pass              |

## wrong_answer_recovery_paths

| Wrong choice | Why student picks it                             | Skipped move                                         | Recovery                                                  |
| ------------ | ------------------------------------------------ | ---------------------------------------------------- | --------------------------------------------------------- |
| A            | “They agreed, so conspiracy.”                    | Did not test whether Ruth can be the guilty partner. | Ask: agreement with whom?                                 |
| C            | Wharton’s Rule sounds advanced.                  | Did not sort reversal reasons.                       | Ask: is this protected-victim or necessary-party offense? |
| D            | Minor too young to consent sounds morally right. | Turned a narrow victim rule into a broad age rule.   | Cut “one cannot” overclaim.                               |

## outline_mastery_map

**Placement:** Criminal Law → Inchoate Crimes → Conspiracy
**This item teaches:** protected-victim limit on conspiracy.
**Fills:** distinction between agreement, Wharton’s Rule, and protected-victim incapacity.
**Adjacent to master:** bilateral conspiracy, unilateral conspiracy, Wharton’s Rule, Gebardi principle.

## crossover_intersection_map

| Crossover                                  | Why it matters                                                          |
| ------------------------------------------ | ----------------------------------------------------------------------- |
| Conspiracy + statutory rape                | Inchoate liability depends on who can be the guilty partner.            |
| Protected class + agreement                | Agreement language alone does not decide conspiracy.                    |
| Wharton’s Rule + protected-victim doctrine | Both can appear in conspiracy questions, but they are different routes. |

## review_truth

When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.

# B) PASS-2 BLOCK 3 — DB-READY `c3_annotation`

```json
{
  "question_id": "14690_bible_study_protected_victim",
  "subject": "CRIMINAL",
  "credited_answer": "B",
  "outline_code": "73020700",
  "distilled_core_question": "An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?",
  "review_truth": "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.",
  "c3": {
    "verdict": "PASS",
    "residual": "B",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CALL",
    "confidence": "ANCHOR_ASSISTED",
    "tension_axis": "protected victim as non-conspirator vs agreement-only / Wharton / minor-incapacity routes",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "answer_array_reason_sort_with_gold_key",
    "difficulty": 3,
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "wrong_element",
        "architecture": "wrong_frame",
        "card_ref": "GK-CRIM-PROTECTED-VICTIM-CONSPIRACY-01",
        "explanation": "Agreement is only one piece; the answer does not address whether Ruth can be the guilty conspiracy partner."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "bait_doctrine",
        "architecture": "wrong_frame",
        "card_ref": "SK-CRIM-REASON-SORT-CONSPIRACY-01",
        "explanation": "Wharton's Rule is a real conspiracy doctrine, but this item is resolved by the protected-victim rule."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_TRUE",
        "mold": "tiered_absolute",
        "architecture": "wrong_frame",
        "card_ref": "GK-CRIM-PROTECTED-VICTIM-CONSPIRACY-01",
        "explanation": "The answer overclaims by saying one cannot conspire with a person too young to consent; the actual reason is protected-victim status."
      }
    ],
    "analyzer_notes": "drift_audit: The protected-victim rule is treated as a Gold Key, not as pure structure. The transform preserves the original rule, key, trap, and answer geometry. transformed_from: 14690",
    "gold_keys": [
      {
        "id": "GK-CRIM-PROTECTED-VICTIM-CONSPIRACY-01",
        "statement": "Common-law conspiracy needs a real guilty agreement, and a protected victim is not that guilty partner. In statutory rape, the underage participant is treated as the protected person, not as a coconspirator; do not route the issue through Wharton's Rule or generic minor incapacity.",
        "type": "distinction",
        "unlocks": "The protected-victim reason for reversing the conspiracy conviction and the Wharton/minor-capacity traps.",
        "trigger": "Only alleged conspiracy partner is the person the target offense is designed to protect.",
        "tested_choice": "C",
        "authority": "Gebardi v. United States, 287 U.S. 112 (1932); Iannelli v. United States, 420 U.S. 770 (1975)",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CRIM-REASON-SORT-CONSPIRACY-01",
        "statement": "When the appeal attacks only the conspiracy count, sort the answer choices by the reason they give for affirming or reversing. Do not let three reversal choices blur together: protected victim, Wharton's Rule, and minor incapacity are different routes.",
        "type": "answer_array",
        "navigates": "Three reversal reasons that look similar on first read.",
        "trigger": "One affirmance answer and three reversal answers with different legal reasons.",
        "tested_choice": "C",
        "outline_code": "73020700",
        "last_minute_review": true
      }
    ]
  }
}
```

# B) PASS-2 BLOCK 4 — `program_elements`

```json
{
  "question_id": "14690_bible_study_protected_victim",
  "subject": "CRIMINAL",
  "outline_code": "73020700",
  "distilled_core_question": "An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?",
  "review_truth": "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.",
  "tension": {
    "axis": "Which reason reverses the conspiracy conviction?",
    "sides": [
      "protected victim cannot be coconspirator",
      "agreement alone",
      "Wharton's Rule",
      "minor incapacity"
    ],
    "resolver": "Only the protected-victim route fits the target offense and call."
  },
  "traps": [
    {
      "choice": "A",
      "mold": "wrong_element",
      "architecture": "wrong_frame",
      "why_attractive": "Students know conspiracy needs agreement and stop there.",
      "focus_group_pct": 10
    },
    {
      "choice": "C",
      "mold": "bait_doctrine",
      "architecture": "wrong_frame",
      "why_attractive": "Wharton's Rule sounds like the advanced conspiracy exception and is the dominant wrong answer.",
      "focus_group_pct": 15
    },
    {
      "choice": "D",
      "mold": "tiered_absolute",
      "architecture": "wrong_frame",
      "why_attractive": "It converts moral intuition about age and consent into a broad legal rule.",
      "focus_group_pct": 7
    }
  ],
  "remediation_card": {
    "card_id": "CRIM-REM-PROTECTED-VICTIM-CONSPIRACY",
    "title": "Protected victim is not the conspiracy partner",
    "signal": "The only alleged coconspirator is the person the statute protects.",
    "student_move": "Do not stop at agreement. Ask whether that person can be the guilty partner for this offense.",
    "tiny_rule": "Protected victim defeats conspiracy with that victim as the only partner.",
    "trap": "Wharton's Rule and generic minor incapacity feel more familiar but answer the wrong route.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "agreement-only conspiracy",
    "protected-victim doctrine",
    "Wharton's Rule overuse",
    "generic minor incapacity overclaim",
    "wrong reversal reason"
  ]
}
```

# B) PASS-2 BLOCK 5 — `program_intelligence`

```json
{
  "question_id": "14690_bible_study_protected_victim",
  "subject": "CRIMINAL",
  "outline_code": "73020700",
  "distilled_core_question": "An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?",
  "review_truth": "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.",
  "wrong_answer_paths": [
    {
      "choice": "A",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "wrong_element",
      "why_a_student_picks_this": "The student sees agreement and treats agreement as sufficient.",
      "skipped_move": "Did not ask whether Ruth could be the guilty conspiracy partner.",
      "recovery_step": "Lock the call: conspiracy conviction. Then ask agreement with whom."
    },
    {
      "choice": "C",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "bait_doctrine",
      "why_a_student_picks_this": "The student recognizes Wharton's Rule and assumes the most advanced doctrine wins.",
      "skipped_move": "Did not sort the three reversal reasons.",
      "recovery_step": "Separate protected-victim reversal from Wharton's Rule reversal."
    },
    {
      "choice": "D",
      "filter_broken": "NOT_TRUE",
      "mold": "tiered_absolute",
      "why_a_student_picks_this": "The student turns underage consent into a broad conspiracy-capacity rule.",
      "skipped_move": "Did not check the absolute language.",
      "recovery_step": "Cut the overclaim and replace it with the narrow protected-victim rule."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "answer_array_sort",
      "target_skill": "Separate multiple reversal reasons.",
      "prompt": "A conspiracy appeal has one affirmance answer and three reversal answers: agreement-only, Wharton's Rule, protected victim, and minor incapacity. Which route should be checked first?",
      "answer": "Protected victim if the only alleged coconspirator is the person the offense protects."
    },
    {
      "drill_type": "gold_key_recall",
      "target_skill": "Protected-victim conspiracy anchor.",
      "prompt": "The only alleged conspiracy partner is the protected victim of the target offense. What happens to common-law conspiracy?",
      "answer": "The protected victim is not the guilty coconspirator; conspiracy fails if there is no other conspirator."
    },
    {
      "drill_type": "mold_label",
      "target_skill": "Tiered absolute detection.",
      "prompt": "Label the mold: 'one cannot conspire with a person too young to consent.'",
      "answer": "tiered_absolute; it overclaims because the issue is protected-victim status, not all minors."
    },
    {
      "drill_type": "bait_doctrine",
      "target_skill": "Wharton's Rule trap recognition.",
      "prompt": "Why is Wharton's Rule a trap in a statutory-rape conspiracy item involving only the underage protected person?",
      "answer": "It is the wrong route; the protected-victim rule, not Wharton's Rule, resolves the conspiracy count."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "reason_sort_array",
      "anchor_assisted",
      "protected_victim",
      "wrong_route_reversal",
      "dominant_trap_preserved"
    ],
    "misconception_tags": [
      "agreement_is_enough",
      "whartons_rule_overuse",
      "minor_cannot_conspire",
      "completed_crime_proves_conspiracy"
    ]
  },
  "component_routing": [
    "C3 Lesson 1: TRUE and RESPONSIVE",
    "C3 Lesson 2: CUT -> CLASH -> CALL",
    "C3 Lesson 8: wrong_element and bait_doctrine",
    "C3 Lesson 4: tiered_absolute overclaim",
    "C3 Lesson 12: anchor escalation",
    "Criminal Law tiny-anchor deck: protected victim and conspiracy"
  ],
  "crossovers": [
    {
      "area": "Criminal Law - conspiracy",
      "intersection": "agreement plus partner-capability"
    },
    {
      "area": "Criminal Law - sex offenses",
      "intersection": "protected person cannot be punished as coconspirator for the protective offense"
    },
    {
      "area": "General C3",
      "intersection": "true doctrine wrong route: Wharton's Rule bait"
    }
  ],
  "gold_keys": [
    {
      "id": "GK-CRIM-PROTECTED-VICTIM-CONSPIRACY-01",
      "statement": "Common-law conspiracy needs a real guilty agreement, and a protected victim is not that guilty partner. In statutory rape, the underage participant is treated as the protected person, not as a coconspirator; do not route the issue through Wharton's Rule or generic minor incapacity.",
      "type": "distinction",
      "unlocks": "The protected-victim reason for reversing the conspiracy conviction and the Wharton/minor-capacity traps.",
      "trigger": "Only alleged conspiracy partner is the person the target offense is designed to protect.",
      "tested_choice": "C",
      "authority": "Gebardi v. United States, 287 U.S. 112 (1932); Iannelli v. United States, 420 U.S. 770 (1975)",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIM-REASON-SORT-CONSPIRACY-01",
      "statement": "When the appeal attacks only the conspiracy count, sort the answer choices by the reason they give for affirming or reversing. Do not let three reversal choices blur together: protected victim, Wharton's Rule, and minor incapacity are different routes.",
      "type": "answer_array",
      "navigates": "Three reversal reasons that look similar on first read.",
      "trigger": "One affirmance answer and three reversal answers with different legal reasons.",
      "tested_choice": "C",
      "outline_code": "73020700",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Criminal Law -> Inchoate Crimes -> Conspiracy",
    "this_item_teaches": "Protected-victim limitation on common-law conspiracy.",
    "fills": [
      "agreement alone is insufficient",
      "protected victim is not the guilty partner",
      "Wharton's Rule is not the same route",
      "minor incapacity is not the reason"
    ],
    "adjacent_to_master": [
      "common-law bilateral conspiracy",
      "unilateral conspiracy contrast",
      "Wharton's Rule",
      "Gebardi protected-victim principle",
      "statutory rape protected-class logic"
    ]
  }
}
```

[1]: https://www.law.cornell.edu/supremecourt/text/287/112 "GEBARDI et al. v. UNITED STATES. | Supreme Court | US Law | LII / Legal Information Institute"
[2]: https://www.justice.gov/archives/usam/criminal-resource-manual-2027-mann-act " U.S. Attorneys' Manual |  2027. Mann Act | United States Department of Justice"
[3]: https://supreme.justia.com/cases/federal/us/420/770/ " Iannelli v. United States | 420 U.S. 770 (1975) | Justia U.S. Supreme Court Center"

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "14690_bible_study_protected_victim"
  question_id: "14690_bible_study_protected_victim"
  subject: "CRIMINAL"
  topic: "Criminal Law"
  subtopic: "Inchoate Crimes"
  outline_code: "73020700"
  official_key: "B"
transform_provenance:
  transformed_from: "14690"
  variant_slug: "bible_study_protected_victim"
  original_key_letter: "UNKNOWN"
  new_key_letter: "B"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_SOLVE"
  confidence: "ANCHOR_ASSISTED"
  residual: "B"
distilled_core_question: "An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?"
review_truth: "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 14690_bible_study_protected_victim; source 14690.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic Criminal Law; subtopic Inchoate Crimes.
4. **distilled_core_question:** An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?
5. **call_and_prediction:** Credited answer: B.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 73020700.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** B
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 73020700.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.
```

### 3. c3_annotation

```json
{
  "question_id": "14690_bible_study_protected_victim",
  "subject": "CRIMINAL",
  "credited_answer": "B",
  "outline_code": "73020700",
  "distilled_core_question": "An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?",
  "review_truth": "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 14690; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "14690_bible_study_protected_victim",
  "subject": "CRIMINAL",
  "outline_code": "73020700",
  "distilled_core_question": "An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?",
  "review_truth": "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-14690",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.",
    "trap": "See preserved traps when present.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "14690_bible_study_protected_victim",
  "subject": "CRIMINAL",
  "outline_code": "73020700",
  "distilled_core_question": "An adult is convicted of statutory rape and conspiracy to commit statutory rape, with the underage protected person as the only alleged coconspirator. Under common-law conspiracy, should the conspiracy conviction stand?",
  "review_truth": "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.",
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
    "placement": "73020700",
    "this_item_teaches": "When the only alleged coconspirator is the person the statute protects, common-law conspiracy fails as to that target offense.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
