---
qid: "20387_psalms_chess_indictment"
transformed_from: "20387"
subject: "CRIMINAL"
topic: "Exclusionary rule"
subtopic: "Remedies and limits"
outline_code: "75100000"
key: "D"
original_key: "C"
letter_map: "- original_letter: \"A"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence."
---
## A) PASS-1 TRANSFORM REPORT

Source row used: BARMATRIX Q# 20387, Criminal Procedure, exclusionary rule, unlawful arrest, motion to dismiss indictment, official key C. 

### 1. Final question — revised stem + call

Detectives investigating the theft of Stephen’s personal olivewood chess set from a Christian bookstore already had the shop’s security video and written statements from two shoppers identifying Peter. Three weeks later, officers saw Peter outside the store after a Psalms-and-coffee night and arrested him without a warrant or probable cause. The arrest produced no physical evidence and no statement. Prosecutors later indicted Peter for the theft using the video and shopper statements.

Peter moves to dismiss the indictment solely because the arrest was unlawful.

**How should the court rule?**

### 2. Distilled Core Question

Police make an unlawful arrest, get no evidence or statement from it, and the indictment rests on evidence already in the file. The defendant moves to dismiss solely because of the arrest. Should the court dismiss?

### 3. Final answer choices, post-shuffle

**A.** Grant the motion unless the prosecutor proves that the arresting officers acted in good faith.
**B.** Deny the motion only if Peter was released and rearrested with a valid warrant.
**C.** Grant the motion, because an unlawful arrest nullifies any later indictment.
**D.** Deny the motion, because an unlawful arrest does not require dismissal when the prosecution rests on evidence independent of the arrest.

### 5. Correct answer

**D**. Original key letter: **C**.

### 6. Letter Map

| Original letter | New letter | Mechanic                                                                 | Substance | Pick rate                   |
| --------------- | ---------: | ------------------------------------------------------------------------ | --------- | --------------------------- |
| A               |          C | `tiered_absolute` / automatic-void-indictment trap                       | kept      | 37% predicted, not measured |
| B               |          A | `bait_doctrine` / good-faith suppression exception in wrong remedy frame | kept      | 25% predicted, not measured |
| C               |          D | `correct_answer`                                                         | kept      | 25% predicted, not measured |
| D               |          B | `fabricated_rule` / fake release-and-rearrest prerequisite               | kept      | 13% predicted, not measured |

No measured focus-group pick rates were supplied. Percentages are diagnostic predictions for the transformed item only.

### 7. Full right-answer explanation

**D is correct.** The motion asks for dismissal of the indictment, not suppression of evidence. The arrest produced no statement and no physical evidence, and the prosecution is relying on video and shopper statements already in the file before the arrest.

**Silver Key:** Lock the remedy first. This is a dismissal question, not an evidence-admissibility question.

**Gold Key:** An unlawful arrest does not automatically erase a later prosecution. The criminal-case remedy targets evidence obtained through the illegality; a prosecution supported by independent evidence may proceed.

### 8. Full wrong-answer explanations

**A.** This choice is attractive because “good faith” sounds like a familiar Fourth Amendment rescue rule. The breaker is the call: Peter is not moving to suppress arrest-derived evidence; he is asking to dismiss the indictment, and no arrest-derived evidence is being offered. **Silver Key:** lock dismissal versus suppression before applying exceptions.

**B.** This choice is attractive because a later valid arrest sounds like procedural cleanup. The breaker is that the prosecution does not need to rerun the arrest process when it has independent evidence supporting the charge. The fake “only if” condition adds a requirement the remedy rule does not impose.

**C.** This choice is attractive because it sells a simple moral chain: bad arrest, bad prosecution. The breaker is the automatic word “any.” **Gold Key:** an unlawful arrest does not nullify every later indictment; the remedy is aimed at tainted evidence, not independent proof.

### 9. Black-letter-law verification and legal reasoning

The tested rule is unchanged from the source row: the remedy for an unlawful arrest is not automatic dismissal of an indictment or invalidation of a prosecution; the remedy is suppression of evidence obtained through the illegality when that evidence is offered. The Supreme Court in **United States v. Crews** states that an illegal arrest, without more, is not a bar to later prosecution and does not deprive the government of the chance to prove guilt with untainted evidence. ([Justia Law][1]) **Gerstein v. Pugh** likewise states that illegal arrest or detention does not void a later conviction. ([Justia Law][2]) **United States v. Calandra** confirms that the exclusionary rule is a remedial doctrine, not a personal constitutional right that automatically applies in every proceeding. ([Justia Law][3])

The variant preserves the legal issue, the rule, and the credited outcome. Peter’s arrest is unlawful, but the prosecution’s evidence existed before the arrest and was not obtained from it. D is therefore the same legal answer as the original credited choice.

### 10. Why the variation preserves rigor and difficulty

The difficulty is preserved because the dominant trap remains the same: students want to turn an unlawful arrest into automatic dismissal. The re-skin changes the asset, setting, cast, fact rhythm, and choice order, but keeps the remedy distinction intact: **violation versus remedy**.

### 11. C3 elimination walkthrough — CUT → CLASH → CALL

**CUT A.** Not responsive. It answers an evidence-suppression exception question, not the dismissal question asked.
**CUT B.** Not true. It invents a release-and-rearrest prerequisite.
**CUT C.** Not true. “Any later indictment” is an automatic overclaim.
**Residual D.** True and responsive. It answers the actual call: deny dismissal where the prosecution rests on evidence independent of the arrest.

**CLASH:** Not needed after the CUT.
**CALL:** Not needed after the residual answer survives.
**Anchor escalation:** Required. The student needs the Gold Key that unlawful arrest does not automatically dismiss a prosecution.

### 12. Divergence Audit

| Recognition-Kill dimension | Result                                                                                                                                                            |
| -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Asset / subject matter     | Changed from generic prosecution evidence to theft of Stephen’s personal olivewood chess set.                                                                     |
| Transaction frame          | Skipped: no civil transaction existed in the source; adding one would create clutter.                                                                             |
| Specific facts             | Changed arrest location, offense texture, evidence source, and character names while preserving unlawful arrest + no arrest-derived evidence + preexisting proof. |
| Numbers                    | Changed “weeks later” to “three weeks later”; no legal threshold moved.                                                                                           |
| Fact ordering / rhythm     | Changed: the variant opens with preexisting evidence before the arrest, rather than opening with the arrest.                                                      |
| Cast size / roles          | Changed: Martin becomes Peter; Stephen and two shoppers added as non-load-bearing cast.                                                                           |
| Choice ordering            | Changed: correct answer moved from original C to new D.                                                                                                           |
| Choice phrasing            | Changed while preserving legal substance and trap pull.                                                                                                           |
| Setting / era / texture    | Changed from yard arrest to Christian bookstore after a Psalms-and-coffee night.                                                                                  |
| Call wording               | Preserved. “How should the court rule?” is standard and protects the call function.                                                                               |

**Original stem summary:** Police unlawfully arrested Martin and later indicted him using evidence already in police files; he sought dismissal solely because of the arrest.
**Variant stem summary:** Detectives already had bookstore video and shopper statements about Peter before officers unlawfully arrested him after a Psalms-and-coffee night; he sought dismissal of the indictment.

Recognition test passes: the summaries share only the legal rule.

### 13. Review Truth

A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.

### 14. Five variations considered

| Candidate                                  | Setting                                  | Cast                         | Preserved issue                                                               | Why memorable                                                         | Legal risks                                                                                  | Divergence score                                           |
| ------------------------------------------ | ---------------------------------------- | ---------------------------- | ----------------------------------------------------------------------------- | --------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | ---------------------------------------------------------- |
| **Psalms-and-Coffee Chess Set** — selected | Christian bookstore after a Psalms night | Peter, Stephen, two shoppers | Unlawful arrest; no arrest evidence; indictment based on independent evidence | Olivewood chess set + bookstore video gives strong surface divergence | Low; no church-property or First Amendment issue because property is Stephen’s personal item | 9/10: kills asset, setting, cast, rhythm, evidence texture |
| Lydia’s Purple Cloth Booth                 | Bible-themed craft fair                  | Lydia, Ruth, Hannah          | Same remedy distinction                                                       | Purple-cloth callback is memorable                                    | Slight clutter risk if “booth ministry” implies charitable setting                           | 8/10                                                       |
| Daniel’s Lion Costume Case                 | Christian school costume fundraiser      | Daniel, Mary, Barnabas       | Same remedy distinction                                                       | Stolen lion costume is vivid                                          | School setting risks collateral minor/student issues                                         | 7/10                                                       |
| Loaves-and-Fishes Food Truck Ledger        | Christian food truck festival            | Paul, Naomi, Timothy         | Same remedy distinction                                                       | Ledger theft changes asset and texture                                | Business records might distract into evidence doctrine                                       | 8/10                                                       |
| Martha’s Hymnbook Calligraphy Kit          | Private calligraphy class                | Martha, John, Esther         | Same remedy distinction                                                       | Calligraphy kit is surface-divergent                                  | Lower energy; less memorable than selected version                                           | 7/10                                                       |

Selected version wins because it maximizes surface divergence without adding a new legal issue.

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "20387_psalms_chess_indictment"
  internal_id: "CR-392"
  transformed_from: "20387"
  subject: "CRIMINAL"
  subject_display: "Criminal Procedure"
  topic: "Exclusionary rule"
  subtopic: "Remedies and limits"
  outline_code: "75100000"
  selection_percentages:
    A:
      value: 25
      provenance: "predicted"
      note: "No measured source pick rate supplied."
    B:
      value: 13
      provenance: "predicted"
      note: "No measured source pick rate supplied."
    C:
      value: 37
      provenance: "predicted"
      note: "Predicted dominant trap; no measured source pick rate supplied."
    D:
      value: 25
      provenance: "predicted"
      note: "No measured source pick rate supplied."
  official_key: "D"
  call: "How should the court rule?"
  stem: "Detectives investigating the theft of Stephen’s personal olivewood chess set from a Christian bookstore already had the shop’s security video and written statements from two shoppers identifying Peter. Three weeks later, officers saw Peter outside the store after a Psalms-and-coffee night and arrested him without a warrant or probable cause. The arrest produced no physical evidence and no statement. Prosecutors later indicted Peter for the theft using the video and shopper statements. Peter moves to dismiss the indictment solely because the arrest was unlawful."
  choices:
    A: "Grant the motion unless the prosecutor proves that the arresting officers acted in good faith."
    B: "Deny the motion only if Peter was released and rearrested with a valid warrant."
    C: "Grant the motion, because an unlawful arrest nullifies any later indictment."
    D: "Deny the motion, because an unlawful arrest does not require dismissal when the prosecution rests on evidence independent of the arrest."

transform_provenance:
  transformed_from: "20387"
  variant_slug: "psalms_chess_indictment"
  original_key_letter: "C"
  new_key_letter: "D"
  letter_map:
    - original_letter: "A"
      new_letter: "C"
      mechanic: "tiered_absolute"
      substance: "kept"
      pick_rate:
        value: 37
        provenance: "predicted"
    - original_letter: "B"
      new_letter: "A"
      mechanic: "bait_doctrine"
      substance: "kept"
      pick_rate:
        value: 25
        provenance: "predicted"
    - original_letter: "C"
      new_letter: "D"
      mechanic: "correct_answer"
      substance: "kept"
      pick_rate:
        value: 25
        provenance: "predicted"
    - original_letter: "D"
      new_letter: "B"
      mechanic: "fabricated_rule"
      substance: "kept"
      pick_rate:
        value: 13
        provenance: "predicted"
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "Police unlawfully arrested Martin and later indicted him using evidence already in police files; he sought dismissal solely because of the arrest."
    variant_stem_one_sentence: "Detectives already had bookstore video and shopper statements about Peter before officers unlawfully arrested him after a Psalms-and-coffee night; he sought dismissal of the indictment."
    dimensions_changed:
      - "asset_subject_matter"
      - "specific_facts"
      - "numbers"
      - "fact_ordering_and_stem_rhythm"
      - "cast_size_roles"
      - "choice_ordering"
      - "choice_phrasing"
      - "setting_era_texture"
    dimensions_skipped_with_reason:
      - dimension: "transaction_frame"
        reason: "No transaction frame existed in the source; adding one would create clutter."
      - dimension: "call_wording"
        reason: "Standard court-rule call preserved for MBE rigor."

source_stack:
  - priority: 1
    source: "BarMatrix row 20387"
    use: "Rule, issue, call, answer array, official key, official explanations."
  - priority: 2
    source: "Existing C3 tags"
    use: "None supplied for this row."
  - priority: 3
    source: "C3 controlled vocabularies"
    use: "Controlled fields."
  - priority: 4
    source: "C3 lessons and master deck"
    use: "TRUE/RESPONSIVE; BA-2 violation-vs-remedy; Fourth Amendment remedy anchor."
  - priority: 5
    source: "Official legal explanation"
    use: "Lawyer confirmation only."
  - priority: 6
    source: "Legal authority"
    use: "Lawyer confirmation only: United States v. Crews, Gerstein v. Pugh, United States v. Calandra."

student_access_contract:
  allowed_universal_lessons:
    - "Lesson 1: TRUE and RESPONSIVE"
    - "Lesson 2: CUT -> CLASH -> CALL"
    - "Lesson 4: Overclaim"
    - "Lesson 8: Not-responsive molds"
    - "Lesson 11: BA-2 violation-vs-remedy"
    - "Lesson 12: Anchor deck"
    - "Lesson 13: Calibration"
  allowed_anchor_cards:
    - "CRIM-06 Fourth Amendment: violation vs remedy / exclusionary rule"
    - "Gold Key GK-CRIMINAL-ARREST-REMEDY-01"
    - "Silver Key SK-CRIMINAL-ARREST-REMEDY-01"
  excluded_from_student_path:
    - "Case names"
    - "Doctrinal expansion beyond remedy distinction"
    - "Grand-jury treatise detail"

stem_parse:
  call_type: "court_ruling"
  legal_task: "rule on motion to dismiss indictment"
  adjacent_call_trap: "suppression of arrest-derived evidence"
  negative_stem_inversion: false
  remedy_requested: "dismissal"
  prosecution_evidence_source: "preexisting video and shopper statements"
  arrest_output: "no physical evidence and no statement"

trigger_facts:
  - fact: "Arrest without warrant or probable cause."
    access_label: "stem_visible"
    role: "violation trigger"
  - fact: "Arrest produced no physical evidence."
    access_label: "stem_visible"
    role: "no tainted physical evidence"
  - fact: "Arrest produced no statement."
    access_label: "stem_visible"
    role: "no tainted statement"
  - fact: "Video and shopper statements already existed before the arrest."
    access_label: "stem_visible"
    role: "independent evidence"
  - fact: "Motion seeks dismissal solely because arrest was unlawful."
    access_label: "stem_visible"
    role: "call/remedy lock"

c3_routing:
  subject_fit: "Criminal Procedure = constitutional violation + remedy chain."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  method_class: "anchor_assisted"
  confidence: "ANCHOR_ASSISTED"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "D"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: "hard"
  tension_axis: "violation versus remedy"
  call_heuristic: "threshold/remedy first; dismissal versus suppression"

answer_array:
  geometry: "2x2 outcome/rationale grid"
  outcome_split:
    grant:
      - "A"
      - "C"
    deny:
      - "B"
      - "D"
  trap_center: "Students convert an unlawful arrest into automatic dismissal or import suppression exceptions."
  silver_key_used: "SK-CRIMINAL-ARREST-REMEDY-01"
  residual_logic: "Only D answers the dismissal call with the independent-evidence fact."

choice_walkthroughs:
  A:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "bait_doctrine"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "violation_vs_remedy"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "legally_true_but_irrelevant"
      - "wrong_remedy"
      - "answer_to_different_question"
      - "exception_hunting"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "good-faith exception in the wrong remedy lane"
    c3_signal: "The call asks for dismissal. This choice talks like an evidence-admissibility exception."
    lawyer_confirmation: "Good faith is a suppression/admissibility concept, not a basis for granting dismissal when no arrest-derived evidence is offered."
  B:
    filter_broken: "NOT_TRUE"
    mold_code: "fabricated_rule"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: "violation_vs_remedy"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "sounds_lawyerly"
      - "wrong_remedy"
      - "common_student_myth"
      - "misstated_rule"
    method_class: "anchor_assisted"
    student_label: "invented re-arrest prerequisite"
    c3_signal: "The 'only if' condition is a made-up procedural repair rule."
    lawyer_confirmation: "The prosecution may proceed on independent evidence without release and rearrest on a valid warrant."
  C:
    filter_broken: "NOT_TRUE"
    mold_code: "tiered_absolute"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: "violation_vs_remedy"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "overbroad_rule"
      - "wrong_remedy"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "automatic-void indictment overclaim"
    c3_signal: "The word 'any' turns one unlawful arrest into a prosecution-ending rule."
    lawyer_confirmation: "An unlawful arrest does not automatically nullify a later indictment or bar prosecution on untainted evidence."
  D:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "true and responsive residual"
    c3_signal: "This choice matches the remedy call and the independent-evidence facts."
    lawyer_confirmation: "The prosecution may use evidence independent of the unlawful arrest; dismissal is not required."

residual_answer:
  choice: "D"
  why_survives: "It directly answers the dismissal motion and uses the independent-evidence fact."
  student_script: "Bad arrest, but no arrest evidence. The motion asks dismissal, not suppression. Deny."

legal_leak_audit:
  student_accessible_claims:
    - claim: "The call asks dismissal, not suppression."
      source: "stem_visible"
      status: "passes"
    - claim: "A good-faith evidence exception is off-call here."
      source: "Silver Key + Gold Key"
      status: "passes"
    - claim: "Automatic dismissal is too broad."
      source: "Gold Key"
      status: "passes"
    - claim: "Independent evidence keeps the prosecution alive."
      source: "Gold Key + stem_visible"
      status: "passes"
  quarantined_lawyer_claims:
    - "United States v. Crews authority."
    - "Gerstein v. Pugh authority."
    - "United States v. Calandra authority."
  drift_audit: "No case authority is used as the student’s first-pass reason."

gold_keys:
  - id: "GK-CRIMINAL-ARREST-REMEDY-01"
    statement: "An unlawful arrest is not itself a prosecution-ending defect. The remedy targets evidence obtained through the illegality; charges supported by untainted evidence are not dismissed merely because the arrest was bad."
    type: "rule"
    unlocks: "automatic dismissal and void-indictment traps"
    trigger: "unlawful arrest + no arrest-derived evidence + motion to dismiss"
    tested_choice: "C"
    authority: "United States v. Crews, Gerstein v. Pugh, Frisbie v. Collins."
    last_minute_review: true

silver_keys:
  - id: "SK-CRIMINAL-ARREST-REMEDY-01"
    statement: "Lock the remedy before applying Fourth Amendment exceptions. If the call asks for dismissal and the stem gives no arrest-produced evidence, suppression exceptions are side streets."
    type: "call_focus"
    navigates: "violation-vs-remedy trap"
    trigger: "motion to dismiss solely because arrest was unlawful"
    tested_choice: "A"
    outline_code: "75100000"
    last_minute_review: true

remediation:
  card_id: "CRIM-REM-ARREST-REMEDY-01"
  title: "Bad arrest is not automatic dismissal"
  signal: "Unlawful arrest + motion to dismiss + independent evidence"
  student_move: "Separate the violation from the requested remedy."
  tiny_rule: "Suppress tainted evidence when applicable; do not dismiss charges supported by independent evidence."
  trap: "Treating illegality as automatic case erasure."
  confidence: "ANCHOR_ASSISTED"

distilled_core_question: "Police make an unlawful arrest, get no evidence or statement from it, and indict using evidence already in the file. The defendant moves to dismiss solely because of the arrest. Should dismissal be granted?"
review_truth: "A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence."

case_study_output:
  final_student_script: "The arrest was bad, but the motion is dismissal and the evidence was already independent. No arrest fruit is being offered. Deny."
  verdict: "ANCHOR_SOLVE"

quality_control:
  yaml_first_in_pass_2: true
  all_controlled_values_from_taxonomy: true
  three_distractors_single_filter: true
  credited_answer_breaks_no_filter: true
  residual_equals_new_key: true
  original_outcome_preserved: true
  recognition_test_passed: true
  gold_key_required_and_present: true
  silver_key_required_and_present: true

analytics_hooks:
  trap_family: "violation_vs_remedy"
  dominant_trap_choice: "C"
  dominant_trap_basis: "predicted"
  primary_component: "BA-2 violation-vs-remedy"
  secondary_component: "Gold Key arrest remedy"
  drill_queue:
    - "distinguish dismissal from suppression"
    - "identify independent evidence"
    - "cut automatic indictment-nullity overclaims"
```

---

### 2. Student case study — 17 sections

## program_frame

This is a Criminal Procedure remedy question. The stem gives a Fourth Amendment violation, then asks for dismissal of the indictment. The trap is to treat the violation as if it automatically destroys the prosecution.

## student_access_test

A C3 student may use the stem, the call, Lesson 1 TRUE/RESPONSIVE, Lesson 11 violation-vs-remedy, and the Gold Key. The student may not use case names as the first-pass reason.

Result: **anchor-assisted solve**.

## question_data

**Question ID:** `20387_psalms_chess_indictment`
**Subject:** `CRIMINAL`
**Topic:** Exclusionary rule
**Subtopic:** Remedies and limits
**Credited answer:** D
**Call:** How should the court rule?

## distilled_core_question

Police make an unlawful arrest, get no evidence or statement from it, and indict using evidence already in the file. The defendant moves to dismiss solely because of the arrest. Should dismissal be granted?

## call_and_prediction

**Call lock:** Dismissal of indictment.
**Adjacent-call trap:** Suppression of evidence.
**Prediction:** Deny dismissal if the prosecution rests on evidence independent of the arrest.

## trigger_facts

| Fact                                                       | Why it matters                        |
| ---------------------------------------------------------- | ------------------------------------- |
| Officers arrested Peter without warrant or probable cause. | There is a violation.                 |
| The arrest produced no physical evidence.                  | No physical fruit to suppress.        |
| The arrest produced no statement.                          | No statement fruit to suppress.       |
| Video and shopper statements were already in the file.     | Independent evidence.                 |
| Peter moves to dismiss solely because of the arrest.       | Remedy is dismissal, not suppression. |

## governing_c3_lane

**Lane:** violation versus remedy.
**Workflow:** CUT.
**Anchor:** unlawful arrest is not automatic dismissal when evidence is independent.
**Verdict:** `ANCHOR_SOLVE`.

## choice_by_choice_walkthrough

### A

1. **Student-accessible C3 signal:** The choice talks about good faith, but the call asks whether to dismiss the indictment. That is a different remedy lane.
2. **Student label:** good-faith exception in the wrong remedy lane.
3. **True/responsive version:** “If arrest-derived evidence were being offered, the court would analyze suppression and any exception.”
4. **Lawyer confirmation:** Good faith is an evidence-admissibility exception; it does not supply a dismissal rule when no arrest-derived evidence is offered.

### B

1. **Student-accessible C3 signal:** “Only if” creates a procedural condition the stem never made relevant.
2. **Student label:** invented re-arrest prerequisite.
3. **True/responsive version:** “A later valid arrest might cure custody concerns, but it is not required for prosecution on independent evidence.”
4. **Lawyer confirmation:** The prosecution can proceed on independent evidence without releasing and rearresting the defendant.

### C

1. **Student-accessible C3 signal:** “Any later indictment” is the automatic-overclaim trap.
2. **Student label:** unlawful-arrest-erases-case overclaim.
3. **True/responsive version:** “An unlawful arrest may support suppression of evidence obtained through that arrest.”
4. **Lawyer confirmation:** **United States v. Crews** and **Gerstein v. Pugh** support the rule that an unlawful arrest does not automatically bar prosecution or void later proceedings supported by untainted proof. ([Justia Law][1])

### D

1. **Student-accessible C3 signal:** This choice answers dismissal and uses the independent-evidence fact.
2. **Student label:** true and responsive residual.
3. **True/responsive version:** This is already the true and responsive version.
4. **Lawyer confirmation:** The result tracks the exclusionary-rule remedy structure: suppress tainted evidence when applicable; do not dismiss a case supported by untainted evidence. ([Justia Law][3])

## residual_answer

D survives. It is the only answer that matches both the call and the facts.

## legal_leak_audit

Student path uses only:

* call lock: dismissal;
* stem facts: no arrest evidence, no statement, independent evidence;
* Silver Key: remedy lane first;
* Gold Key: unlawful arrest is not automatic dismissal.

Lawyer-only layer:

* United States v. Crews;
* Gerstein v. Pugh;
* United States v. Calandra.

**Drift audit:** PASS — no case-law authority is used as the student’s first-pass reason.

## final_student_script

Bad arrest. But the motion is dismissal, not suppression. The arrest gave the prosecution nothing. The evidence was already independent. Deny.

## remediation_card

**Card ID:** `CRIM-REM-ARREST-REMEDY-01`
**Title:** Bad arrest is not automatic dismissal.
**Signal:** Unlawful arrest + no arrest fruit + motion to dismiss.
**Student move:** Ask what remedy is requested.
**Tiny rule:** Suppress tainted evidence when applicable; do not dismiss charges supported by independent evidence.
**Trap:** Treating a Fourth Amendment violation as case erasure.
**Confidence:** `ANCHOR_ASSISTED`.

## Gold Key(s)

**GK-CRIMINAL-ARREST-REMEDY-01**
An unlawful arrest is not itself a prosecution-ending defect. The remedy targets evidence obtained through the illegality; charges supported by untainted evidence are not dismissed merely because the arrest was bad.

## Silver Key(s)

**SK-CRIMINAL-ARREST-REMEDY-01**
Lock the remedy before applying Fourth Amendment exceptions. If the call asks for dismissal and the stem gives no arrest-produced evidence, suppression exceptions are side streets.

## qa_checklist

| Check                                   | Result |
| --------------------------------------- | ------ |
| Rule unchanged                          | Pass   |
| Credited outcome unchanged              | Pass   |
| Trap structure preserved                | Pass   |
| Three distractors each break one filter | Pass   |
| Correct answer breaks no filter         | Pass   |
| Choice letters shuffled                 | Pass   |
| Gold Key present                        | Pass   |
| Silver Key present                      | Pass   |
| Legal authority quarantined             | Pass   |
| Recognition test passed                 | Pass   |

## wrong_answer_recovery_paths

| Choice | Student miss                                                   | Recovery                                                    |
| ------ | -------------------------------------------------------------- | ----------------------------------------------------------- |
| A      | Chases good faith because it sounds like Fourth Amendment law. | Return to the call: dismissal, not suppression.             |
| B      | Thinks the government must clean up the arrest.                | Ask whether the prosecution needs anything from the arrest. |
| C      | Treats unlawful police conduct as automatic case erasure.      | Apply the Gold Key: remedy targets tainted evidence.        |

## outline_mastery_map

**Outline code:** `75100000`
**Placement:** Criminal Procedure > Exclusionary Rule.
**This item teaches:** remedy selection after an unlawful arrest.
**Fills:** violation/remedy separation; independent evidence; automatic-dismissal trap.
**Adjacent to master:** good-faith exception, fruit of the poisonous tree, independent source, attenuation.

## crossover_intersection_map

| Crossover          | Connection                                                                                 |
| ------------------ | ------------------------------------------------------------------------------------------ |
| Evidence           | Evidence can be excluded only when the offered proof is tainted and suppression applies.   |
| Civil Procedure    | The motion label matters; dismissal and evidentiary exclusion are different court actions. |
| Constitutional Law | A constitutional violation does not always dictate the remedy.                             |

## review_truth

A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.

---

### 3. `c3_annotation`

```json
{
  "question_id": "20387_psalms_chess_indictment",
  "subject": "CRIMINAL",
  "credited_answer": "D",
  "outline_code": "75100000",
  "distilled_core_question": "Police make an unlawful arrest, get no evidence or statement from it, and indict using evidence already in the file. The defendant moves to dismiss solely because of the arrest. Should dismissal be granted?",
  "review_truth": "A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "D",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "ANCHOR_ASSISTED",
    "tension_axis": "violation versus remedy",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "remedy first: dismissal versus suppression",
    "difficulty": "hard",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "bait_doctrine",
        "architecture": "violation_vs_remedy",
        "card_ref": "SK-CRIMINAL-ARREST-REMEDY-01",
        "explanation": "Good faith belongs to the suppression/admissibility lane; the call asks dismissal and no arrest-derived evidence is being offered."
      },
      {
        "choice": "B",
        "filter_broken": "NOT_TRUE",
        "mold": "fabricated_rule",
        "architecture": "violation_vs_remedy",
        "card_ref": "GK-CRIMINAL-ARREST-REMEDY-01",
        "explanation": "The answer invents a release-and-rearrest prerequisite for prosecution on independent evidence."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_TRUE",
        "mold": "tiered_absolute",
        "architecture": "violation_vs_remedy",
        "card_ref": "GK-CRIMINAL-ARREST-REMEDY-01",
        "explanation": "The answer overclaims by making an unlawful arrest nullify any later indictment."
      }
    ],
    "analyzer_notes": {
      "drift_audit": "PASS: student path uses call lock, stem facts, Silver Key, and Gold Key; case authority is lawyer-confirmation only.",
      "transformed_from": "20387",
      "letter_map": "original A->new C; original B->new A; original C->new D; original D->new B",
      "pick_rate_note": "No measured source pick rates supplied; all emitted percentages are predicted and not measured."
    },
    "gold_keys": [
      {
        "id": "GK-CRIMINAL-ARREST-REMEDY-01",
        "statement": "An unlawful arrest is not itself a prosecution-ending defect. The remedy targets evidence obtained through the illegality; charges supported by untainted evidence are not dismissed merely because the arrest was bad.",
        "type": "rule",
        "unlocks": "automatic dismissal and void-indictment traps",
        "trigger": "unlawful arrest + no arrest-derived evidence + motion to dismiss",
        "tested_choice": "C",
        "authority": "United States v. Crews, Gerstein v. Pugh, Frisbie v. Collins.",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CRIMINAL-ARREST-REMEDY-01",
        "statement": "Lock the remedy before applying Fourth Amendment exceptions. If the call asks for dismissal and the stem gives no arrest-produced evidence, suppression exceptions are side streets.",
        "type": "call_focus",
        "navigates": "violation-vs-remedy trap",
        "trigger": "motion to dismiss solely because arrest was unlawful",
        "tested_choice": "A",
        "outline_code": "75100000",
        "last_minute_review": true
      }
    ]
  }
}
```

---

### 4. `program_elements`

```json
{
  "question_id": "20387_psalms_chess_indictment",
  "subject": "CRIMINAL",
  "outline_code": "75100000",
  "distilled_core_question": "Police make an unlawful arrest, get no evidence or statement from it, and indict using evidence already in the file. The defendant moves to dismiss solely because of the arrest. Should dismissal be granted?",
  "review_truth": "A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.",
  "tension": {
    "axis": "violation versus remedy",
    "resolving_fact": "The prosecution relies on evidence independent of the arrest."
  },
  "traps": [
    {
      "choice": "A",
      "mold": "bait_doctrine",
      "architecture": "violation_vs_remedy",
      "why_attractive": "The choice recognizes a familiar good-faith rescue from Fourth Amendment suppression doctrine. The breaker is that the call asks for dismissal and no arrest-derived evidence is being offered.",
      "focus_group_pct": 25,
      "pct_provenance": "predicted"
    },
    {
      "choice": "B",
      "mold": "fabricated_rule",
      "architecture": "violation_vs_remedy",
      "why_attractive": "The choice sells procedural cleanup by making a new valid arrest sound like a cure. The breaker is that independent evidence lets the prosecution proceed without rerunning the arrest.",
      "focus_group_pct": 13,
      "pct_provenance": "predicted"
    },
    {
      "choice": "C",
      "mold": "tiered_absolute",
      "architecture": "violation_vs_remedy",
      "why_attractive": "The choice sells the moral shortcut that an illegal arrest poisons the whole case. The breaker is that the remedy targets tainted evidence, not the indictment itself.",
      "focus_group_pct": 37,
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "CRIM-REM-ARREST-REMEDY-01",
    "title": "Bad arrest is not automatic dismissal",
    "signal": "Unlawful arrest + motion to dismiss + independent evidence",
    "student_move": "Separate the violation from the requested remedy.",
    "tiny_rule": "Suppress tainted evidence when applicable; do not dismiss charges supported by independent evidence.",
    "trap": "Treating illegality as automatic case erasure.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "remedy confusion",
    "automatic-dismissal overclaim",
    "exception hunting",
    "good-faith side street",
    "independent-evidence fact skip"
  ]
}
```

---

### 5. `program_intelligence`

```json
{
  "question_id": "20387_psalms_chess_indictment",
  "subject": "CRIMINAL",
  "outline_code": "75100000",
  "distilled_core_question": "Police make an unlawful arrest, get no evidence or statement from it, and indict using evidence already in the file. The defendant moves to dismiss solely because of the arrest. Should dismissal be granted?",
  "review_truth": "A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.",
  "wrong_answer_paths": [
    {
      "choice": "A",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "bait_doctrine",
      "why_a_student_picks_this": "The student remembers good faith as a Fourth Amendment exception and applies it before locking the remedy.",
      "skipped_move": "Call lock: dismissal versus suppression.",
      "recovery_step": "Ask what the motion requests and whether any arrest-derived evidence is being offered."
    },
    {
      "choice": "B",
      "filter_broken": "NOT_TRUE",
      "mold": "fabricated_rule",
      "why_a_student_picks_this": "The student assumes a bad arrest must be procedurally cleaned up before the prosecution can continue.",
      "skipped_move": "Gold Key: independent evidence can support prosecution without automatic dismissal.",
      "recovery_step": "Reject invented 'only if' prerequisites unless the anchor supplies them."
    },
    {
      "choice": "C",
      "filter_broken": "NOT_TRUE",
      "mold": "tiered_absolute",
      "why_a_student_picks_this": "The student turns police illegality into total case invalidity.",
      "skipped_move": "Violation-vs-remedy separation.",
      "recovery_step": "Name the remedy: suppression of tainted evidence, not automatic dismissal."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "CUT",
      "target_skill": "violation_vs_remedy",
      "prompt": "Unlawful arrest; no evidence or statement obtained; independent evidence supports indictment. Motion to dismiss?",
      "answer": "Deny; dismissal is not required."
    },
    {
      "drill_type": "trap_spotting",
      "target_skill": "good-faith side street",
      "prompt": "A choice says dismissal depends on officer good faith. What is the C3 signal?",
      "answer": "Good faith is an evidence-admissibility lane; lock the dismissal call."
    },
    {
      "drill_type": "anchor_recall",
      "target_skill": "unlawful arrest remedy",
      "prompt": "What is the remedy for an unlawful arrest when no evidence was obtained from it?",
      "answer": "No automatic dismissal; suppress tainted evidence only when applicable."
    },
    {
      "drill_type": "overclaim",
      "target_skill": "automatic indictment nullity",
      "prompt": "A choice says an unlawful arrest voids any later indictment. Name the mold.",
      "answer": "tiered_absolute."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "BA-2",
      "violation_vs_remedy",
      "remedy_lock",
      "independent_evidence",
      "automatic_dismissal_trap"
    ],
    "misconception_tags": [
      "bad_arrest_erases_case",
      "good_faith_applies_to_every_fourth_amendment_problem",
      "rearrest_required_to_prosecute"
    ]
  },
  "component_routing": [
    "Lesson 1 TRUE and RESPONSIVE",
    "Lesson 2 CUT -> CLASH -> CALL",
    "Lesson 4 Overclaim",
    "Lesson 8 bait_doctrine",
    "Lesson 11 BA-2 violation-vs-remedy",
    "Lesson 12 Anchor Deck",
    "Lesson 13 Calibration"
  ],
  "crossovers": [
    {
      "subject": "EVIDENCE",
      "intersection": "Suppression concerns offered evidence; no offered tainted evidence means the suppression lane is inactive."
    },
    {
      "subject": "CIVIL_PROCEDURE",
      "intersection": "A motion label controls the court action requested; dismissal is not evidentiary exclusion."
    },
    {
      "subject": "CONSTITUTIONAL_LAW",
      "intersection": "A constitutional violation does not mechanically dictate a single remedy."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-ARREST-REMEDY-01",
      "statement": "An unlawful arrest is not itself a prosecution-ending defect. The remedy targets evidence obtained through the illegality; charges supported by untainted evidence are not dismissed merely because the arrest was bad.",
      "type": "rule",
      "unlocks": "automatic dismissal and void-indictment traps",
      "trigger": "unlawful arrest + no arrest-derived evidence + motion to dismiss",
      "tested_choice": "C",
      "authority": "United States v. Crews, Gerstein v. Pugh, Frisbie v. Collins.",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-ARREST-REMEDY-01",
      "statement": "Lock the remedy before applying Fourth Amendment exceptions. If the call asks for dismissal and the stem gives no arrest-produced evidence, suppression exceptions are side streets.",
      "type": "call_focus",
      "navigates": "violation-vs-remedy trap",
      "trigger": "motion to dismiss solely because arrest was unlawful",
      "tested_choice": "A",
      "outline_code": "75100000",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Criminal Procedure > Exclusionary Rule",
    "this_item_teaches": "The remedy for unlawful arrest is not automatic dismissal when the prosecution rests on independent evidence.",
    "fills": [
      "unlawful arrest remedy",
      "independent evidence",
      "suppression versus dismissal",
      "automatic dismissal overclaim"
    ],
    "adjacent_to_master": [
      "good-faith exception",
      "fruit of the poisonous tree",
      "independent source",
      "attenuation",
      "grand jury evidence limits"
    ]
  }
}
```

[1]: https://supreme.justia.com/cases/federal/us/445/463/?utm_source=chatgpt.com "United States v. Crews | 445 U.S. 463 (1980) | Justia U.S. Supreme Court Center"
[2]: https://supreme.justia.com/cases/federal/us/420/103/?utm_source=chatgpt.com "Gerstein v. Pugh | 420 U.S. 103 (1975) | Justia U.S. Supreme Court Center"
[3]: https://supreme.justia.com/cases/federal/us/414/338/?utm_source=chatgpt.com "United States v. Calandra | 414 U.S. 338 (1974) | Justia U.S. Supreme Court Center"

### 2. The 17-section student case study

```
1. **program_frame:** Question 20387_psalms_chess_indictment; source 20387.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic Exclusionary rule; subtopic Remedies and limits.
4. **distilled_core_question:** Police make an unlawful arrest, get no evidence or statement from it, and indict using evidence already in the file. The defendant moves to dismiss solely because of the arrest. Should dismissal be granted?
5. **call_and_prediction:** Credited answer: D.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 75100000.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** D
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 75100000.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.
```

### 3. c3_annotation

```json
{
  "question_id": "20387_psalms_chess_indictment",
  "subject": "CRIMINAL",
  "credited_answer": "D",
  "outline_code": "75100000",
  "distilled_core_question": "Police make an unlawful arrest, get no evidence or statement from it, and indict using evidence already in the file. The defendant moves to dismiss solely because of the arrest. Should dismissal be granted?",
  "review_truth": "A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "D",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 20387; letter_map: - original_letter: \"A",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "20387_psalms_chess_indictment",
  "subject": "CRIMINAL",
  "outline_code": "75100000",
  "distilled_core_question": "Police make an unlawful arrest, get no evidence or statement from it, and indict using evidence already in the file. The defendant moves to dismiss solely because of the arrest. Should dismissal be granted?",
  "review_truth": "A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-20387",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.",
    "trap": "See preserved traps when present.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "20387_psalms_chess_indictment",
  "subject": "CRIMINAL",
  "outline_code": "75100000",
  "distilled_core_question": "Police make an unlawful arrest, get no evidence or statement from it, and indict using evidence already in the file. The defendant moves to dismiss solely because of the arrest. Should dismissal be granted?",
  "review_truth": "A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.",
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
    "placement": "75100000",
    "this_item_teaches": "A bad arrest can suppress tainted evidence, but it does not automatically erase a prosecution supported by independent evidence.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
