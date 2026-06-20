---
qid: "20353_baptism_tank_burst"
transformed_from: "20353"
subject: "CIVIL_PROCEDURE"
topic: "Subject Matter Jurisdiction"
subtopic: "Supplemental Jurisdiction - Defendant Claims"
outline_code: "94010300"
key: "D"
original_key: "C"
letter_map: "- original_letter: \"A"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000."
---
## A) PASS-1 TRANSFORM REPORT

### 1. Final question — revised stem + call

Source row used: BARMATRIX Q# 20353, Civil Procedure, supplemental jurisdiction, defendant counterclaim, official key C. 

**Final variation — “The Baptism-Tank Burst at the Handbell Expo”**

In a federal diversity action, Lydia, a citizen of State A, sues Barnabas, a citizen of State B, for $120,000 after Barnabas’s privately owned portable baptism-tank display burst at a Christian handbell expo and ruined Lydia’s sound equipment. Barnabas counterclaims against Lydia for $18,000 for damage to the tank display from the same burst. The counterclaim has no independent amount in controversy.

**May the federal court hear the counterclaim?**

### 2. Distilled Core Question

In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant’s $18,000 counterclaim against the plaintiff when it arises from the same incident?

### 3. Final answer choices

A. No, because Section 1367(b) bars all low-value or nondiverse counterclaims by defendants in diversity cases.
B. Yes, but only because the counterclaim presents a federal question.
C. No, because each claim in a diversity case must independently exceed $75,000.
D. Yes, because the counterclaim arises from the same burst and forms part of the same Article III case.

### 5. Correct answer

**D**. Original key: **C**.

### 6. Letter Map

| Original letter | New letter | Mechanic                                                   | Substance | Pick % + provenance                             |
| --------------- | ---------: | ---------------------------------------------------------- | --------- | ----------------------------------------------- |
| A               |          C | `tiered_absolute` / independent-amount overclaim           | kept      | 17% predicted; no measured source rate supplied |
| B               |          A | `tiered_absolute` / overbroad §1367(b) defendant-claim bar | kept      | 25% predicted; no measured source rate supplied |
| C               |          D | `correct_answer`                                           | kept      | 50% predicted; no measured source rate supplied |
| D               |          B | `misfit` / federal-question wrong frame                    | kept      | 8% predicted; no measured source rate supplied  |

### 7. Full right-answer explanation

**D is correct.** The counterclaim is by the defendant against the existing plaintiff, and it comes from the same burst that supports the anchor diversity claim. **Gold Key:** a same-transaction defendant counterclaim can ride supplemental jurisdiction even if it is below $75,000, unless a specific §1367(b) plaintiff-side bar applies. **Silver Key:** match the “yes” answer to the correct jurisdictional hook; here, the hook is same-event supplemental jurisdiction, not federal-question jurisdiction.

### 8. Full wrong-answer explanations

**A.** This answer sells a precise-sounding §1367(b) rule and tries to make the statute feel like a blanket defendant-counterclaim bar. **Gold Key:** §1367(b) is a plaintiff-side limitation in diversity; it does not categorically bar a same-event counterclaim by the defendant.

**B.** This answer gets to “yes,” so it feels safe after the student senses the court should hear the claim. The breaker is the reason: nothing in the facts makes the counterclaim a federal-question claim, and **Silver Key:** the correct “yes” must use the same-event supplemental-jurisdiction hook.

**C.** This answer sells the familiar $75,000 diversity number and turns it into an absolute rule for every claim. **Gold Key:** once the federal court has a valid diversity anchor claim, a related defendant counterclaim can use supplemental jurisdiction without independently exceeding $75,000.

### 9. Black-letter-law verification and right-answer legal reasoning

Authority check: 28 U.S.C. § 1367(a) gives district courts supplemental jurisdiction over claims so related to claims within original jurisdiction that they form part of the same Article III case or controversy; § 1367(b), in diversity-only cases, limits specified **claims by plaintiffs**, not all defendant counterclaims. Rule 13(a)(1) describes a compulsory counterclaim as one arising out of the transaction or occurrence that is the subject matter of the opposing party’s claim. The variation preserves the tested rule, issue, and credited outcome from the source row. ([Legal Information Institute][1])

### 10. Why the variation preserves rigor/difficulty

The surface story changes from a car crash to a Christian expo equipment burst, but the legal skeleton is identical: proper diversity anchor claim, low-value defendant counterclaim, same occurrence, no independent amount in controversy, and a choice array testing amount-in-controversy overclaim, §1367(b) overclaim, correct supplemental jurisdiction, and federal-question misfit.

### 11. C3 elimination walkthrough — CUT → CLASH → CALL

**A — CUT.** It says §1367(b) bars **all** low-value or nondiverse defendant counterclaims. The word “all” is the trap. With the Gold Key, the statute’s plaintiff-side limit cannot be expanded into a defendant-side blanket bar.

**B — CUT.** It answers with the wrong jurisdictional frame. The call is whether the court may hear this related counterclaim; the stem gives a same-burst relation, not a federal-law issue.

**C — CUT.** It turns the $75,000 diversity threshold into “each claim must independently exceed $75,000.” That is an overclaim once supplemental jurisdiction is in play.

**D — RESIDUAL.** Same burst + defendant counterclaim + valid anchor case. D is true and responsive.

**CLASH:** not needed after the CUT.
**CALL:** not needed after the CUT.

### 12. Divergence Audit

| Recognition-Kill dimension | Change / skip                                                                                                                                      |
| -------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------- |
| Asset / subject matter     | Changed car damage to private baptism-tank display and sound equipment.                                                                            |
| Transaction frame          | Kept civil accident/counterclaim frame because the same-occurrence counterclaim relation is legally load-bearing.                                  |
| Specific facts             | Changed car crash to a burst display at a Christian handbell expo.                                                                                 |
| Numbers                    | Changed $100,000 / $20,000 to $120,000 / $18,000 while staying on the same side of the $75,000 line.                                               |
| Fact ordering and rhythm   | Opened with party citizenship and expo equipment, then revealed counterclaim and independent-amount defect.                                        |
| Cast size / roles          | Changed generic plaintiff/defendant to Lydia and Barnabas; no antagonist names used.                                                               |
| Choice ordering            | Shuffled; post-shuffle key is D.                                                                                                                   |
| Choice phrasing            | Rephrased story nouns and preserved legal substance.                                                                                               |
| Setting / era / texture    | Changed ordinary road collision to a private Christian handbell expo.                                                                              |
| Call wording               | Kept equivalent “May the federal court hear the counterclaim?” to preserve call function.                                                          |
| Christian clutter guard    | Used privately owned equipment and a private expo; no church property, donation, First Amendment, charitable immunity, or church-internal dispute. |
| Over-signal guard          | Did not spell out that §1367(b) is plaintiff-side in the stem.                                                                                     |

**Original stem summary:** A diversity plaintiff sues for car-crash damages, and the defendant brings a low-value counterclaim for damage from the same crash.
**Variant stem summary:** A Christian expo exhibitor sues over a burst baptism-tank display, and the defendant brings a low-value counterclaim for display damage from the same burst.

### 13. Review Truth

A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.

### 14. The 5 variations considered

| Candidate                                                | Setting / cast                                                    | Exact preserved issue                                          | Why memorable                               | Legal risks                                                                            | Divergence score                                                                            |
| -------------------------------------------------------- | ----------------------------------------------------------------- | -------------------------------------------------------------- | ------------------------------------------- | -------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| **Recommended: Baptism-Tank Burst at the Handbell Expo** | Lydia v. Barnabas; private Christian expo; portable display burst | Low-value defendant counterclaim in diversity, same occurrence | Strange but clean private-property accident | Must avoid church-property / First Amendment implications; solved by private ownership | **9/10** — kills asset, setting, numbers, cast, rhythm; transaction frame kept for doctrine |
| Manna Oven Flare at the Bake-Off                         | Ruth v. Timothy; Christian bake-off; oven flare damages           | Same                                                           | Fun “manna bread” imagery                   | Food-sale facts could invite products/contract clutter                                 | 8/10                                                                                        |
| Noah’s Ark Puppet Rig Collapse                           | Mary v. Stephen; private puppet-theater rig collapse              | Same                                                           | Strong Christian visual                     | “Collapse” still resembles accident; possible premises clutter                         | 8/10                                                                                        |
| Psalms Lyre Case Flood                                   | Esther v. Paul; custom lyre display soaked by sprinkler           | Same                                                           | Memorable music tie-in                      | Sprinkler / premises facts may distract                                                | 7/10                                                                                        |
| Calligraphy Press Ink Spill                              | Hannah v. John; scripture-calligraphy press spill                 | Same                                                           | Clean private-equipment damage              | Less fun; closer to ordinary property damage                                           | 7/10                                                                                        |

**Distractor policy:** no swap. All three original mechanics are sound and preserved. The dominant trap is not measured because no source pick rates were supplied; the likely dominant trap is the precise-sounding §1367(b) overclaim, and it survives as post-shuffle A.

---

## B) PASS-2 BLOCK 1 — Question YAML

```yaml
barmatrix_row:
  qid: "20353_baptism_tank_burst"
  transformed_from: "20353"
  internal_id: "CP-244"
  subject: CIVIL_PROCEDURE
  subject_display: "Civil Procedure"
  topic: "Subject Matter Jurisdiction"
  subtopic: "Supplemental Jurisdiction - Defendant Claims"
  outline_code: "94010300"
  official_key: "D"
  original_key_letter: "C"
  call: "May the federal court hear the counterclaim?"
  stem: "In a federal diversity action, Lydia, a citizen of State A, sues Barnabas, a citizen of State B, for $120,000 after Barnabas's privately owned portable baptism-tank display burst at a Christian handbell expo and ruined Lydia's sound equipment. Barnabas counterclaims against Lydia for $18,000 for damage to the tank display from the same burst. The counterclaim has no independent amount in controversy."
  choices:
    A: "No, because Section 1367(b) bars all low-value or nondiverse counterclaims by defendants in diversity cases."
    B: "Yes, but only because the counterclaim presents a federal question."
    C: "No, because each claim in a diversity case must independently exceed $75,000."
    D: "Yes, because the counterclaim arises from the same burst and forms part of the same Article III case."
  selection_percentages:
    A:
      value: 25
      provenance: "predicted"
      note: "No measured source rate supplied; predicted for inherited §1367(b) overclaim mechanic."
    B:
      value: 8
      provenance: "predicted"
      note: "No measured source rate supplied; predicted for inherited federal-question misfit mechanic."
    C:
      value: 17
      provenance: "predicted"
      note: "No measured source rate supplied; predicted for inherited amount-in-controversy overclaim mechanic."
    D:
      value: 50
      provenance: "predicted"
      note: "No measured source rate supplied; predicted for correct answer."

transform_provenance:
  variant_slug: "baptism_tank_burst"
  original_key_letter: "C"
  new_key_letter: "D"
  letter_map:
    - original_letter: "A"
      new_letter: "C"
      mechanic: "tiered_absolute"
      substance: "kept"
      pick_rate:
        value: 17
        provenance: "predicted"
    - original_letter: "B"
      new_letter: "A"
      mechanic: "tiered_absolute"
      substance: "kept"
      pick_rate:
        value: 25
        provenance: "predicted"
    - original_letter: "C"
      new_letter: "D"
      mechanic: "correct_answer"
      substance: "kept"
      pick_rate:
        value: 50
        provenance: "predicted"
    - original_letter: "D"
      new_letter: "B"
      mechanic: "misfit"
      substance: "kept"
      pick_rate:
        value: 8
        provenance: "predicted"
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "A diversity plaintiff sues for car-crash damages, and the defendant brings a low-value counterclaim for damage from the same crash."
    variant_stem_one_sentence: "A Christian expo exhibitor sues over a burst baptism-tank display, and the defendant brings a low-value counterclaim for display damage from the same burst."
    dimensions_changed:
      - "asset_subject_matter"
      - "specific_facts"
      - "all_numbers"
      - "fact_ordering_and_stem_rhythm"
      - "cast_size_roles"
      - "choice_ordering"
      - "choice_phrasing"
      - "setting_era_texture"
    dimensions_skipped_with_reason:
      - dimension: "transaction_frame"
        reason: "Kept accident/counterclaim frame because same-occurrence defendant counterclaim is the legal invariant."
      - dimension: "call_wording"
        reason: "Kept equivalent hear-counterclaim call to preserve MBE rigor and legal function."

source_stack:
  - priority: 1
    source: "Pasted BarMatrix row for QID 20353."
    use: "Invariant rule, issue, official key, official explanations."
  - priority: 2
    source: "Existing C3 tags."
    use: "None supplied."
  - priority: 3
    source: "Controlled vocabularies."
    use: "Controlled enum values only."
  - priority: 4
    source: "Universal C3 lessons and Civil Procedure overlay."
    use: "True/Responsive, CUT, Issue-Sense, overclaim, wrong-frame, threshold/gate routing."
  - priority: 5
    source: "Official explanation."
    use: "Lawyer confirmation only."
  - priority: 6
    source: "28 U.S.C. §1367(a)-(b); Fed. R. Civ. P. 13(a)(1)."
    use: "Lawyer confirmation only."

student_access_contract:
  allowed_lessons:
    - "Lesson 1: TRUE and RESPONSIVE"
    - "Lesson 2: CUT -> CLASH -> CALL"
    - "Lesson 3: RULE vs STANDARD"
    - "Lesson 4: Overclaim"
    - "Lesson 7: Predict before you peek"
    - "Lesson 8: Not-responsive molds"
    - "Lesson 11: Bait architecture"
    - "Lesson 12: Anchor deck"
    - "Lesson 13: Calibration"
    - "Lesson 14: Full workflow"
  allowed_subject_overlay:
    - "Civil Procedure = procedural posture + structural prerequisite."
    - "Gate first. Status second. Merits last."
  allowed_gold_keys:
    - "GK-CIVIL_PROCEDURE-DEFENDANT_COUNTERCLAIM-01"
  allowed_silver_keys:
    - "SK-CIVIL_PROCEDURE-SUPP_COUNTERCLAIM_ARRAY-01"
  not_allowed:
    - "Full supplemental jurisdiction outline."
    - "Unprovided pick-rate claims."
    - "Doctrinal assertions not routed through Gold Key or lawyer_confirmation."

stem_parse:
  posture: "Federal diversity action with defendant counterclaim."
  call_type: "May the federal court hear the counterclaim?"
  negative_stem_inversion: false
  adjacent_call_traps:
    - "Does every claim independently satisfy the diversity amount?"
    - "Does the counterclaim raise a federal question?"
    - "Does §1367(b) bar plaintiff-side claims?"
  predicted_answer: "Yes, if the defendant counterclaim is part of the same Article III case and no plaintiff-side §1367(b) bar applies."

trigger_facts:
  - fact: "The action is in federal court based on diversity."
    access_label: "C3-visible"
    role: "Anchor claim frame."
  - fact: "Lydia's claim is for $120,000."
    access_label: "C3-visible"
    role: "Original diversity amount is satisfied."
  - fact: "Barnabas counterclaims against Lydia."
    access_label: "C3-visible"
    role: "Defendant-side counterclaim, not plaintiff-side claim."
  - fact: "The counterclaim is for $18,000."
    access_label: "C3-visible"
    role: "No independent amount in controversy."
  - fact: "The counterclaim arises from the same burst."
    access_label: "C3-visible"
    role: "Same case or controversy trigger."
  - fact: "No federal-law issue is stated."
    access_label: "C3-visible"
    role: "Cuts federal-question wrong frame."

c3_routing:
  subject_fit: "Civil Procedure = procedural posture + structural prerequisite."
  governing_law_type: RULE
  deciding_phase: CUT
  method_class: anchor_assisted
  confidence: ANCHOR_ASSISTED
  case_study_verdict: ANCHOR_SOLVE
  bank_validation_verdict: PASS
  residual: "D"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: "medium_hard"
  tension_axis: null
  call_heuristic: null

answer_array:
  shape: "2x2 result/reason matrix collapsing to one residual after anchor-assisted CUT."
  geometry_preserved: true
  silver_key:
    id: "SK-CIVIL_PROCEDURE-SUPP_COUNTERCLAIM_ARRAY-01"
    type: "answer_array"
  conclusions:
    no_answers:
      - "A"
      - "C"
    yes_answers:
      - "B"
      - "D"
  reason_types:
    amount_threshold_overclaim: "C"
    section_1367b_overclaim: "A"
    federal_question_wrong_frame: "B"
    same_case_supplemental_jurisdiction: "D"

choice_walkthroughs:
  A:
    filter_broken: NOT_TRUE
    mold_code: tiered_absolute
    mold_family: EAR_OVERCLAIM
    bait_architecture_code: wrong_frame
    wrong_answer_architecture_tags:
      - attractive_wrong_answer
      - overbroad_rule
      - sounds_lawyerly
      - common_student_myth
      - bar_exam_bait
    method_class: anchor_assisted
    student_label: "Overbroad §1367(b) defendant-claim bar."
    c3_signal: "The answer says 'all' defendant counterclaims; the Gold Key blocks that expansion."
    lawyer_confirmation: "Section 1367(b) limits specified claims by plaintiffs in diversity-only cases; it does not categorically bar defendant counterclaims that satisfy §1367(a)."
  B:
    filter_broken: NOT_RESPONSIVE
    mold_code: misfit
    mold_family: ISSUE_SENSE
    bait_architecture_code: wrong_frame
    wrong_answer_architecture_tags:
      - attractive_wrong_answer
      - legally_true_but_irrelevant
      - answer_to_different_question
      - wrong_jurisdiction
      - fact_not_in_evidence
      - bar_exam_bait
    method_class: hard_structural
    student_label: "Right result, wrong jurisdictional hook."
    c3_signal: "The stem gives no federal-law counterclaim; same-burst relation is the visible hook."
    lawyer_confirmation: "The correct basis is supplemental jurisdiction, not federal-question jurisdiction."
  C:
    filter_broken: NOT_TRUE
    mold_code: tiered_absolute
    mold_family: EAR_OVERCLAIM
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - attractive_wrong_answer
      - overbroad_rule
      - common_student_myth
      - misstated_rule
      - exception_omitted
    method_class: anchor_assisted
    student_label: "Amount-in-controversy overclaim."
    c3_signal: "The answer says each claim must independently exceed $75,000; the Gold Key supplies the exception."
    lawyer_confirmation: "A claim that lacks an independent amount may fall within supplemental jurisdiction if it forms part of the same Article III case and is not barred by §1367(b)."
  D:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - correct_answer
    method_class: anchor_assisted
    student_label: "True and responsive residual."
    c3_signal: "It matches the call, the same-burst fact, and the Gold Key."
    lawyer_confirmation: "Under §1367(a), the same-burst counterclaim is part of the same case or controversy; §1367(b)'s plaintiff-side limits do not bar it."

residual_answer:
  choice: "D"
  text: "Yes, because the counterclaim arises from the same burst and forms part of the same Article III case."
  why_residual: "A and C overclaim; B answers a different jurisdictional hook; D alone is true and responsive."

legal_leak_audit:
  item_level:
    legal_anchor_needed: true
    gold_key_required: true
    no_fake_structure: true
  per_choice:
    A: "Do not call false by structure alone; requires Gold Key."
    B: "C3-visible wrong frame because no federal-law fact appears."
    C: "Do not call false by structure alone; requires Gold Key."
    D: "Correctness requires Gold Key and lawyer confirmation."
  drift_audit: "Student path uses C3 signals and Gold Key only; authority remains in lawyer_confirmation."

gold_keys:
  - id: "GK-CIVIL_PROCEDURE-DEFENDANT_COUNTERCLAIM-01"
    statement: "In a diversity case, a defendant's same-transaction counterclaim can use supplemental jurisdiction even below $75,000 unless a specific plaintiff-side §1367(b) bar applies."
    type: "rule"
    unlocks: "Amount-in-controversy and §1367(b) blanket-bar traps."
    trigger: "Defendant counterclaim + same incident + no independent amount in controversy."
    tested_choice: "A"
    authority: "28 U.S.C. §1367(a)-(b); Fed. R. Civ. P. 13(a)(1)."
    last_minute_review: true

silver_keys:
  - id: "SK-CIVIL_PROCEDURE-SUPP_COUNTERCLAIM_ARRAY-01"
    statement: "Read the array as result plus jurisdictional reason. A 'yes' answer is not enough; the reason must be same-event supplemental jurisdiction, not federal question."
    type: "answer_array"
    navigates: "Two yes/two no answer array with competing jurisdictional hooks."
    trigger: "A counterclaim in a diversity case with no independent amount."
    tested_choice: "B"
    outline_code: "94010300"
    last_minute_review: true

remediation:
  card_id: "CIV-REM-20353-DEFENDANT-COUNTERCLAIM"
  title: "Defendant counterclaim under supplemental jurisdiction"
  signal: "Diversity anchor claim plus low-value defendant counterclaim from the same incident."
  student_move: "Check whether the low-value claim is defendant-side and same occurrence before applying §1367(b)."
  tiny_rule: "Same-event defendant counterclaims may ride §1367(a); §1367(b) is plaintiff-side."
  trap: "Treating every low-value diversity claim as independently barred."
  confidence: ANCHOR_ASSISTED

distilled_core_question: "In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant's $18,000 counterclaim against the plaintiff when it arises from the same incident?"
review_truth: "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000."

case_study_output:
  final_student_script: "This is a Civ Pro gate question. The anchor claim is good. The counterclaim is by the defendant and comes from the same burst. Cut the 'every claim' amount answer, cut the blanket §1367(b) defendant-bar answer, cut federal question because no federal law appears. Pick D."
  verdict_reason: "Anchor-assisted CUT to one residual."

quality_control:
  credited_answer_true_and_responsive: true
  exactly_three_distractors: true
  each_distractor_one_filter: true
  residual_equals_official_key_after_shuffle: true
  bank_validation_verdict: PASS
  no_fork: true
  no_swap: true
  recognition_test_passed: true
  controlled_values_checked: true

analytics_hooks:
  forensic_tags:
    - "supplemental_jurisdiction"
    - "defendant_counterclaim"
    - "amount_in_controversy_trap"
    - "section_1367b_plaintiff_side_limit"
    - "federal_question_wrong_frame"
  misconception_tags:
    - "every_claim_needs_75000"
    - "section_1367b_bars_all_low_value_claims"
    - "yes_result_wrong_reason"
  component_routing:
    - "CIVIL_PROCEDURE"
    - "Subject Matter Jurisdiction"
    - "Supplemental Jurisdiction"
    - "CUT"
    - "Gold Key"
    - "Silver Key"
```

---

## B) PASS-2 BLOCK 2 — 17-section student case study

### 1. program_frame

This is a Civil Procedure gate question. Do not ask who should win on the expo damage. Ask whether the federal court has power to hear the defendant’s counterclaim.

### 2. student_access_test

A student can cut B structurally because the stem gives no federal-law fact. A student cannot safely cut A or C on structure alone; those require the Gold Key. This is **ANCHOR_SOLVE**, not pure hard-structural.

### 3. question_data

**Stem:** Lydia sues Barnabas in federal diversity for $120,000 after a privately owned baptism-tank display burst at a Christian handbell expo and damaged her sound equipment. Barnabas counterclaims for $18,000 for damage to the tank display from the same burst. The counterclaim lacks an independent amount in controversy.

**Call:** May the federal court hear the counterclaim?

**Choices:**
A. No, because Section 1367(b) bars all low-value or nondiverse counterclaims by defendants in diversity cases.
B. Yes, but only because the counterclaim presents a federal question.
C. No, because each claim in a diversity case must independently exceed $75,000.
D. Yes, because the counterclaim arises from the same burst and forms part of the same Article III case.

### 4. distilled_core_question

In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant’s $18,000 counterclaim against the plaintiff when it arises from the same incident?

### 5. call_and_prediction

**Call:** court power to hear the counterclaim.
**Adjacent traps:** amount in controversy for every claim; federal-question jurisdiction; overreading §1367(b).
**Prediction:** yes, because the counterclaim is defendant-side and same-event.

### 6. trigger_facts

| Fact                   | Student use                                       |
| ---------------------- | ------------------------------------------------- |
| Diversity action       | Sets the jurisdiction gate.                       |
| $120,000 anchor claim  | Original diversity claim is large enough.         |
| Defendant counterclaim | The claimant is the defendant, not the plaintiff. |
| $18,000                | Counterclaim lacks independent amount.            |
| Same burst             | Same Article III case signal.                     |
| No federal-law fact    | Cuts federal-question answer.                     |

### 7. governing_c3_lane

**Lane:** Civil Procedure = procedural posture + structural prerequisite.
**Governing law type:** `RULE`.
**Deciding phase:** `CUT`.
**Method:** anchor-assisted CUT.

### 8. choice_by_choice_walkthrough

#### A

1. **Student-accessible C3 signal:** The answer says §1367(b) bars **all** low-value or nondiverse defendant counterclaims. That is a blanket claim.
2. **Student label:** §1367(b) overclaim.
3. **True/responsive version:** “No, if a specific §1367(b) plaintiff-side bar applied.”
4. **Lawyer confirmation:** §1367(b) limits specified claims by plaintiffs in diversity cases; it does not categorically bar defendant counterclaims that satisfy §1367(a).

#### B

1. **Student-accessible C3 signal:** The answer says yes for a federal-question reason, but the stem gives no federal-law counterclaim.
2. **Student label:** right result, wrong jurisdictional hook.
3. **True/responsive version:** “Yes, because the counterclaim is part of the same Article III case.”
4. **Lawyer confirmation:** Federal-question jurisdiction is not the basis; supplemental jurisdiction is.

#### C

1. **Student-accessible C3 signal:** The answer says **each claim** must independently exceed $75,000. That is an absolute.
2. **Student label:** amount-in-controversy overclaim.
3. **True/responsive version:** “A standalone diversity claim needs the amount, but a related defendant counterclaim may not.”
4. **Lawyer confirmation:** §1367(a) can cover related claims that lack an independent amount, unless a statutory bar applies.

#### D

1. **Student-accessible C3 signal:** The answer uses the same-burst fact and answers the court-power call.
2. **Student label:** true and responsive residual.
3. **True/responsive version:** This is the true/responsive version.
4. **Lawyer confirmation:** Same-incident defendant counterclaim fits §1367(a), and §1367(b) does not bar it.

### 9. residual_answer

**D** survives. It is the only answer that says yes for the same-event supplemental-jurisdiction reason.

### 10. legal_leak_audit

A and C need the Gold Key. The student path must not pretend that “every claim” and “all defendant claims” are false without the supplemental-jurisdiction anchor. B is visible from the stem because no federal-law counterclaim appears.

**Drift audit:** no doctrine is converted into fake structure; legal authority stays in lawyer_confirmation.

### 11. final_student_script

“This is a Civ Pro gate question. The anchor claim is good. The counterclaim is by the defendant and comes from the same burst. Cut the amount answer because it says every claim. Cut the §1367(b) answer because it says all defendant claims. Cut federal question because no federal law appears. D is the same-event supplemental-jurisdiction answer.”

### 12. remediation_card

**Card:** CIV-REM-20353-DEFENDANT-COUNTERCLAIM
**Signal:** diversity anchor claim + defendant counterclaim + same incident + low amount.
**Student move:** do not force every claim to satisfy $75,000. Check whether the low-value claim can ride the anchor case.
**Tiny rule:** same-event defendant counterclaims may ride §1367(a); §1367(b) is plaintiff-side.
**Trap:** overreading §1367(b) and the $75,000 threshold.

### Gold Key(s)

**GK-CIVIL_PROCEDURE-DEFENDANT_COUNTERCLAIM-01**
In a diversity case, a defendant’s same-transaction counterclaim can use supplemental jurisdiction even below $75,000 unless a specific plaintiff-side §1367(b) bar applies. Trigger: defendant counterclaim + same incident + no independent amount.

### Silver Key(s)

**SK-CIVIL_PROCEDURE-SUPP_COUNTERCLAIM_ARRAY-01**
Read the array as result plus jurisdictional reason. A “yes” answer is not enough; the reason must be same-event supplemental jurisdiction, not federal question.

### 13. qa_checklist

| Check                                                      | Result |
| ---------------------------------------------------------- | ------ |
| Correct answer post-shuffle consistent                     | Yes: D |
| Three distractors                                          | Yes    |
| One filter per distractor                                  | Yes    |
| No stem over-signal                                        | Yes    |
| Christian skin avoids extra doctrine                       | Yes    |
| Gold Key present because anchor-dependent                  | Yes    |
| Silver Key present because answer-array navigation matters | Yes    |
| PASS available                                             | Yes    |

### 14. wrong_answer_recovery_paths

| Choice | Recovery                                                                                        |
| ------ | ----------------------------------------------------------------------------------------------- |
| A      | Ask whether the statute is being expanded from plaintiff-side limits into all defendant claims. |
| B      | Ask whether the stem supplies a federal-law fact. It does not.                                  |
| C      | Hear “each claim” as an absolute and check the Gold Key.                                        |

### 15. outline_mastery_map

**Outline code:** 94010300.
**Placement:** Civil Procedure → Jurisdiction and Venue → Federal Subject-Matter Jurisdiction → Supplemental Jurisdiction.
**This item teaches:** related defendant counterclaims under supplemental jurisdiction.
**Adjacent mastery:** diversity amount in controversy, §1367(b) plaintiff-side limits, federal-question misfit.

### 16. crossover_intersection_map

| Crossover                   | Use                                                               |
| --------------------------- | ----------------------------------------------------------------- |
| Lesson 4 overclaim          | “all” and “each claim” are overclaim signals.                     |
| Lesson 8 misfit             | Federal-question answer is a wrong-frame answer.                  |
| Lesson 11 bait architecture | The item uses wrong-frame jurisdiction bait.                      |
| Lesson 12 anchor deck       | The item depends on a statutory supplemental-jurisdiction anchor. |

### 17. review_truth

A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.

---

## B) PASS-2 BLOCK 3 — `c3_annotation`

```json
{
  "question_id": "20353_baptism_tank_burst",
  "subject": "CIVIL_PROCEDURE",
  "credited_answer": "D",
  "outline_code": "94010300",
  "distilled_core_question": "In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant's $18,000 counterclaim against the plaintiff when it arises from the same incident?",
  "review_truth": "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.",
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
    "call_heuristic": null,
    "difficulty": "medium_hard",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_TRUE",
        "mold": "tiered_absolute",
        "architecture": "wrong_frame",
        "card_ref": "GK-CIVIL_PROCEDURE-DEFENDANT_COUNTERCLAIM-01",
        "explanation": "Over-expands Section 1367(b) into an all-defendant-counterclaim bar."
      },
      {
        "choice": "B",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "misfit",
        "architecture": "wrong_frame",
        "card_ref": "SK-CIVIL_PROCEDURE-SUPP_COUNTERCLAIM_ARRAY-01",
        "explanation": "Uses a federal-question reason when the stem supplies a same-event supplemental-jurisdiction hook."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_TRUE",
        "mold": "tiered_absolute",
        "architecture": null,
        "card_ref": "GK-CIVIL_PROCEDURE-DEFENDANT_COUNTERCLAIM-01",
        "explanation": "Turns the diversity amount threshold into an every-claim independent-amount rule."
      }
    ],
    "analyzer_notes": {
      "drift_audit": "Anchor-dependent item; do not label A or C false without Gold Key. B is visible wrong-frame from the stem. transformed_from: 20353. letter_map: A->C, B->A, C->D, D->B.",
      "transformed_from": "20353",
      "letter_map": "A->C, B->A, C->D, D->B",
      "variant_slug": "baptism_tank_burst",
      "no_swap": true,
      "pick_rate_note": "No original pick rates supplied; emitted percentages are predicted, not measured."
    },
    "gold_keys": [
      {
        "id": "GK-CIVIL_PROCEDURE-DEFENDANT_COUNTERCLAIM-01",
        "statement": "In a diversity case, a defendant's same-transaction counterclaim can use supplemental jurisdiction even below $75,000 unless a specific plaintiff-side §1367(b) bar applies.",
        "type": "rule",
        "unlocks": "Amount-in-controversy and §1367(b) blanket-bar traps.",
        "trigger": "Defendant counterclaim + same incident + no independent amount in controversy.",
        "tested_choice": "A",
        "authority": "28 U.S.C. §1367(a)-(b); Fed. R. Civ. P. 13(a)(1).",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CIVIL_PROCEDURE-SUPP_COUNTERCLAIM_ARRAY-01",
        "statement": "Read the array as result plus jurisdictional reason. A 'yes' answer is not enough; the reason must be same-event supplemental jurisdiction, not federal question.",
        "type": "answer_array",
        "navigates": "Two yes/two no answer array with competing jurisdictional hooks.",
        "trigger": "A counterclaim in a diversity case with no independent amount.",
        "tested_choice": "B",
        "outline_code": "94010300",
        "last_minute_review": true
      }
    ]
  }
}
```

---

## B) PASS-2 BLOCK 4 — `program_elements`

```json
{
  "question_id": "20353_baptism_tank_burst",
  "subject": "CIVIL_PROCEDURE",
  "outline_code": "94010300",
  "distilled_core_question": "In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant's $18,000 counterclaim against the plaintiff when it arises from the same incident?",
  "review_truth": "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.",
  "tension": null,
  "traps": [
    {
      "choice": "A",
      "mold": "tiered_absolute",
      "architecture": "wrong_frame",
      "why_attractive": "The student sees Section 1367(b) and assumes the specific statute must be the sophisticated answer. The breaker is that the answer expands plaintiff-side limits into an all-defendant-claim bar.",
      "focus_group_pct": 25,
      "pct_provenance": "predicted"
    },
    {
      "choice": "B",
      "mold": "misfit",
      "architecture": "wrong_frame",
      "why_attractive": "The student senses the court can hear the counterclaim and accepts the first yes answer. The breaker is that no federal-law fact appears, so the yes reason is the wrong jurisdictional hook.",
      "focus_group_pct": 8,
      "pct_provenance": "predicted"
    },
    {
      "choice": "C",
      "mold": "tiered_absolute",
      "architecture": null,
      "why_attractive": "The student remembers the $75,000 diversity threshold and applies it to every claim. The breaker is the word each, because supplemental jurisdiction can carry a related defendant counterclaim below the threshold.",
      "focus_group_pct": 17,
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "CIV-REM-20353-DEFENDANT-COUNTERCLAIM",
    "title": "Defendant counterclaim under supplemental jurisdiction",
    "signal": "Diversity anchor claim plus low-value defendant counterclaim from the same incident.",
    "student_move": "Check whether the low-value claim is defendant-side and same occurrence before applying §1367(b).",
    "tiny_rule": "Same-event defendant counterclaims may ride §1367(a); §1367(b) is plaintiff-side.",
    "trap": "Treating every low-value diversity claim as independently barred.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "amount_in_controversy_overgeneralization",
    "section_1367b_wrong_actor",
    "yes_answer_wrong_reason",
    "federal_question_wrong_frame",
    "anchor_required"
  ]
}
```

---

## B) PASS-2 BLOCK 5 — `program_intelligence`

```json
{
  "question_id": "20353_baptism_tank_burst",
  "subject": "CIVIL_PROCEDURE",
  "outline_code": "94010300",
  "distilled_core_question": "In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant's $18,000 counterclaim against the plaintiff when it arises from the same incident?",
  "review_truth": "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.",
  "wrong_answer_paths": [
    {
      "choice": "A",
      "filter_broken": "NOT_TRUE",
      "mold": "tiered_absolute",
      "why_a_student_picks_this": "The student over-trusts statutory language and treats §1367(b) as a universal diversity-case limit.",
      "skipped_move": "Actor check: plaintiff-side limit vs defendant counterclaim.",
      "recovery_step": "Say the Gold Key: defendant same-event counterclaims may ride supplemental jurisdiction."
    },
    {
      "choice": "B",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "misfit",
      "why_a_student_picks_this": "The student locks onto the yes result and stops checking the reason.",
      "skipped_move": "Jurisdictional-hook check.",
      "recovery_step": "Ask whether the stem gives federal law; if not, use the same-event hook."
    },
    {
      "choice": "C",
      "filter_broken": "NOT_TRUE",
      "mold": "tiered_absolute",
      "why_a_student_picks_this": "The student remembers the $75,000 threshold but applies it to every claim without the supplemental-jurisdiction exception.",
      "skipped_move": "Overclaim check on 'each claim.'",
      "recovery_step": "Separate the anchor diversity claim from a related counterclaim riding supplemental jurisdiction."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "CUT",
      "target_skill": "tiered_absolute",
      "prompt": "A diversity anchor claim is for $110,000. The defendant asserts a $12,000 same-incident counterclaim. Cut: 'No, each claim must independently exceed $75,000.'",
      "answer": "CUT as tiered_absolute after Gold Key."
    },
    {
      "drill_type": "CUT",
      "target_skill": "misfit",
      "prompt": "A counterclaim arises from the same incident but no federal statute appears. Cut: 'Yes, because the counterclaim presents a federal question.'",
      "answer": "CUT as misfit / wrong_frame."
    },
    {
      "drill_type": "anchor",
      "target_skill": "supplemental_jurisdiction_defendant_counterclaim",
      "prompt": "State the Gold Key for a same-event defendant counterclaim below $75,000 in a diversity case.",
      "answer": "It can use supplemental jurisdiction unless a specific plaintiff-side §1367(b) bar applies."
    },
    {
      "drill_type": "answer_array",
      "target_skill": "result_reason_match",
      "prompt": "Two answers say yes; one says federal question, one says same Article III case. The stem gives only same-incident facts. Which yes survives?",
      "answer": "The same Article III case answer."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "supplemental_jurisdiction",
      "defendant_counterclaim",
      "same_case_or_controversy",
      "amount_in_controversy",
      "section_1367b"
    ],
    "misconception_tags": [
      "every_claim_must_exceed_75000",
      "section_1367b_bars_all_low_value_claims",
      "federal_question_is_any_federal_court_case",
      "correct_result_wrong_reason"
    ]
  },
  "component_routing": [
    "Lesson 1 TRUE_RESPONSIVE",
    "Lesson 2 CUT_CLASH_CALL",
    "Lesson 4 EAR_OVERCLAIM",
    "Lesson 8 ISSUE_SENSE_MISFIT",
    "Lesson 11 WRONG_FRAME",
    "Lesson 12 ANCHOR_DECK",
    "Civil Procedure Overlay: gate before merits"
  ],
  "crossovers": [
    {
      "area": "Civil Procedure",
      "connection": "Subject-matter jurisdiction threshold before merits."
    },
    {
      "area": "C3 universal",
      "connection": "A correct yes/no result is not enough; reason must be responsive."
    },
    {
      "area": "Contracts/Torts analogy",
      "connection": "Same occurrence operates as the fact tie, similar to matched-pair fact routing."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-CIVIL_PROCEDURE-DEFENDANT_COUNTERCLAIM-01",
      "statement": "In a diversity case, a defendant's same-transaction counterclaim can use supplemental jurisdiction even below $75,000 unless a specific plaintiff-side §1367(b) bar applies.",
      "type": "rule",
      "unlocks": "Amount-in-controversy and §1367(b) blanket-bar traps.",
      "trigger": "Defendant counterclaim + same incident + no independent amount in controversy.",
      "tested_choice": "A",
      "authority": "28 U.S.C. §1367(a)-(b); Fed. R. Civ. P. 13(a)(1).",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CIVIL_PROCEDURE-SUPP_COUNTERCLAIM_ARRAY-01",
      "statement": "Read the array as result plus jurisdictional reason. A 'yes' answer is not enough; the reason must be same-event supplemental jurisdiction, not federal question.",
      "type": "answer_array",
      "navigates": "Two yes/two no answer array with competing jurisdictional hooks.",
      "trigger": "A counterclaim in a diversity case with no independent amount.",
      "tested_choice": "B",
      "outline_code": "94010300",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Civil Procedure > Jurisdiction and Venue > Federal Subject-Matter Jurisdiction > Supplemental Jurisdiction",
    "this_item_teaches": "A defendant's same-event counterclaim can be heard through supplemental jurisdiction despite lacking an independent amount in controversy.",
    "fills": [
      "supplemental_jurisdiction_same_case",
      "defendant_counterclaim_exception_to_amount_trap",
      "section_1367b_plaintiff_side_limit"
    ],
    "adjacent_to_master": [
      "complete_diversity",
      "amount_in_controversy",
      "federal_question_jurisdiction",
      "compulsory_counterclaim_same_transaction"
    ]
  }
}
```

[1]: https://www.law.cornell.edu/uscode/text/28/1367?utm_source=chatgpt.com "28 U.S. Code § 1367 - Supplemental jurisdiction | U.S. Code | US Law | LII / Legal Information Institute"

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "20353_baptism_tank_burst"
  question_id: "20353_baptism_tank_burst"
  subject: "CIVIL_PROCEDURE"
  topic: "Subject Matter Jurisdiction"
  subtopic: "Supplemental Jurisdiction - Defendant Claims"
  outline_code: "94010300"
  official_key: "D"
transform_provenance:
  transformed_from: "20353"
  variant_slug: "baptism_tank_burst"
  original_key_letter: "C"
  new_key_letter: "D"
  letter_map: "- original_letter: \"A"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_SOLVE"
  confidence: "ANCHOR_ASSISTED"
  residual: "D"
distilled_core_question: "In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant's $18,000 counterclaim against the plaintiff when it arises from the same incident?"
review_truth: "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 20353_baptism_tank_burst; source 20353.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CIVIL_PROCEDURE; topic Subject Matter Jurisdiction; subtopic Supplemental Jurisdiction - Defendant Claims.
4. **distilled_core_question:** In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant's $18,000 counterclaim against the plaintiff when it arises from the same incident?
5. **call_and_prediction:** Credited answer: D.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 94010300.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** D
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 94010300.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.
```

### 3. c3_annotation

```json
{
  "question_id": "20353_baptism_tank_burst",
  "subject": "CIVIL_PROCEDURE",
  "credited_answer": "D",
  "outline_code": "94010300",
  "distilled_core_question": "In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant's $18,000 counterclaim against the plaintiff when it arises from the same incident?",
  "review_truth": "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 20353; letter_map: - original_letter: \"A",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "20353_baptism_tank_burst",
  "subject": "CIVIL_PROCEDURE",
  "outline_code": "94010300",
  "distilled_core_question": "In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant's $18,000 counterclaim against the plaintiff when it arises from the same incident?",
  "review_truth": "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-20353",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.",
    "trap": "See preserved traps when present.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "20353_baptism_tank_burst",
  "subject": "CIVIL_PROCEDURE",
  "outline_code": "94010300",
  "distilled_core_question": "In a diversity case with a proper $120,000 anchor claim, may the court hear a defendant's $18,000 counterclaim against the plaintiff when it arises from the same incident?",
  "review_truth": "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.",
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
    "placement": "94010300",
    "this_item_teaches": "A same-event defendant counterclaim can use supplemental jurisdiction even if it does not independently exceed $75,000.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
