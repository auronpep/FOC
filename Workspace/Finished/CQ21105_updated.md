---
qid: "15017"
transformed_from: "21105"
subject: "REAL_PROPERTY"
topic: "Rights in Land"
subtopic: "Real Covenants"
outline_code: "81020401"
key: "D"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "choice: \"B"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "Review truth not available in source file."
---
```yaml
barmatrix_row:
  qid: "15017"
  internal_id: null
  subject: "REAL_PROPERTY"
  subject_display: "Real Property"
  topic: "Rights in Land"
  subtopic: "Real Covenants"
  outline_code: "81020401"
  outline_code_basis: "Assigned from OUTLINE_CODES_COMPLETE.md: Non-Possessory Rights and Interests in Land > Real Covenants > Running with the land."
  percent_correct:
    value: 15
    provenance: "MBE.xlsx"
  selection_percentages:
    A:
      value: 4
      provenance: "MBE.xlsx"
    B:
      value: 59
      provenance: "MBE.xlsx"
    C:
      value: 22
      provenance: "MBE.xlsx"
    D:
      value: 15
      provenance: "MBE.xlsx"
  most_popular_wrong_answer: "B"
  official_key: "D"
  stem: |
    An owner owned in fee simple two adjoining lots, Lot 1 and 2. He conveyed in fee simple Lot 1 to a veterinarian. The deed was in usual form of a warranty deed with the following provision inserted in the appropriate place: "Grantor, for himself, his heirs and assigns, does covenant and agree that any reasonable expense incurred by grantee, his heirs and assigns, as the result of having to repair the retaining wall presently situated on Lot 1 at the common boundary with Lot 2, shall be reimbursed one-half the costs of repairs; and by this provision the parties intend a covenant running with the land."

    The veterinarian conveyed Lot 1 in fee simple to a woman by warranty deed in usual and regular form. The deed omitted any reference to the retaining wall or any covenant. 50 years after the owner's conveyance to the veterinarian, the woman conveyed Lot 1 in fee simple to her friend by warranty deed in usual form; this deed omitted any reference to the retaining wall or the covenant.

    There is no statute that applies to any aspect of the problems presented except a recording act and a statute providing for acquisition of title after 10 years of adverse possession. All conveyances by deeds were for a consideration equal to fair market value. The deed from the owner to the veterinarian was never recorded. All other deeds were promptly and properly recorded. Lot 2 is now owned by a businessman, who took by intestate succession from the owner, now dead.

    The friend expended $3,500 on the retaining wall. Then he obtained all of the original deeds in the chain from the owner to him. Shortly thereafter, the friend discovered the covenant in the owner's deed to the veterinarian. He demanded that the businessman pay $1,750, and when the businessman refused, the friend instituted an appropriate action to recover that sum from the businessman. In such action, the businessman asserted all defenses available to him.

    If judgment is for the businessman, it will be because
  choices:
    A: "the friend is barred by adverse possession."
    B: "the veterinarian's deed from the owner was never recorded."
    C: "the friend did not know about the covenant until after he had incurred the expenses and, hence, could not have relied on it."
    D: "the friend's expenditures were not proved to be reasonable and customary."
  official_explanation: "D is correct. This question deals with a covenant running with the land. Because the covenant runs with the land, and its terms expressly state that any expenditures related to the retaining wall must be reasonable to be reimbursed, the only way judgment would be entered in favor of the businessman is if the friend's expenditures were unreasonable."
  wrong_answer_explanations:
    A: "A is a red herring because no party acquired land by adverse possession."
    B: "B is incorrect because the businessman is not a bona fide purchaser and therefore is not protected by the recording acts."
    C: "C is incorrect because reliance is irrelevant to determining whether a covenant is enforceable."
  additional_info: null
  lb_rule_reference: null
  lb_student_diagnostic: null

source_stack:
  - "MBE.xlsx row 15017"
  - "2026_BM_PREP_C3_TAGGED_v2_manual_cards.xlsx C3_Tagged_v1 row 15017, treated as hypothesis"
  - "OUTLINE_CODES_COMPLETE.md for outline_code 81020401"
  - "controlled_vocabularies.md"
  - "C3 Lessons 1, 2, 7, 8, 9, 10, 12, 13, 14"
  - "C3 Master Deck RP-03 and RP-06"
  - "Official legal explanation as lawyer confirmation only"

student_access_contract:
  controlling_test: "Could a smart 10-year-old who completed only the C3 lessons, subject overlays, and taught tiny anchors identify the choice's problem without outside doctrine?"
  allowed_lessons:
    - "TRUE and RESPONSIVE"
    - "CUT -> CLASH -> CALL"
    - "Predict the call before choices"
    - "Issue-Sense: misfit"
    - "Issue-Sense: bait_doctrine"
    - "Issue-Sense: wrong_element"
    - "Fact-engaged answer over dramatic but off-call fact"
    - "Real Property Gold Key: real covenant running with land"
    - "Real Property Gold Key: recording acts protect BFPs, not heirs"
  anchor_status:
    taught_anchor_available: "yes"
    taught_anchor_used:
      - "Real covenant running with land"
      - "Recording act BFP limitation"
      - "Reliance is not an element of an express running covenant"
    missing_anchor: null
  forbidden_moves:
    - "Do not call B false from structure alone; the nonrecording defense requires the BFP/recording-act anchor."
    - "Do not call C false from structure alone; reliance irrelevance requires the real-covenant anchor."
    - "Do not teach a full covenants outline."
    - "Do not treat the word customary in D as an independent doctrine; the operative covenant condition is reasonableness."

stem_parse:
  call: "If judgment is for the businessman, it will be because ____."
  call_type: "because-call / winning-defense classification"
  negative_stem_inversion: false
  adjacent_call_trap: "The student may answer whether the covenant was easy to find in the title records instead of whether the businessman has a valid defense."
  parties:
    original_owner_of_both_lots: "owner"
    original_grantee_of_lot_1: "veterinarian"
    intermediate_owner_of_lot_1: "woman"
    current_owner_of_lot_1: "friend"
    current_owner_of_lot_2: "businessman"
  property:
    benefited_parcel: "Lot 1"
    burdened_parcel: "Lot 2"
    physical_feature: "retaining wall on Lot 1 at the common boundary with Lot 2"
  covenant_text_features:
    - "The covenant expressly refers to repair expenses for the retaining wall."
    - "The covenant covers grantee, heirs, and assigns."
    - "The covenant says the expense must be reasonable."
    - "The parties expressly intend a covenant running with the land."
  distracting_title_facts:
    - "The owner's deed to the veterinarian was never recorded."
    - "Later deeds omitted any reference to the covenant."
    - "Other deeds were promptly and properly recorded."
    - "The businessman took Lot 2 by intestate succession."
  predicted_answer_before_choices: "A valid defense should attack an actual condition of reimbursement, not merely the dramatic chain-of-title facts."

trigger_facts:
  - fact: "The covenant uses 'heirs and assigns' and says the parties intend it to run with the land."
    access_label: "anchor_assisted"
    role: "supports running-covenant route"
  - fact: "The covenant reimburses only 'reasonable expense' for retaining-wall repairs."
    access_label: "student_visible"
    role: "points to D"
  - fact: "The owner-to-veterinarian deed was never recorded."
    access_label: "student_visible"
    role: "dominant recording-act trap"
  - fact: "The businessman took Lot 2 by intestate succession."
    access_label: "anchor_assisted"
    role: "defeats BFP/recording-act defense"
  - fact: "The friend discovered the covenant only after paying for repairs."
    access_label: "student_visible"
    role: "reliance trap"
  - fact: "No party acquired land by adverse possession."
    access_label: "student_visible"
    role: "cuts A"

c3_routing:
  subject_fit: "Real Property = property-status routing plus title/notice traps; identify which status actually controls before reacting to recorded/unrecorded facts."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  c3_lane: "Anchor-assisted CUT to text-condition survivor"
  primary_axis: "external title/notice/reliance defenses versus the covenant's own reimbursement condition"
  splitting_fact: "The covenant reimburses only reasonable repair expenses."
  residual_before_anchor: "B/D or C/D may remain for students without real-covenant and recording-act anchors."
  residual_after_anchor: "D"
  credited_answer: "D"
  agrees_with_official_key: true
  method_class_deciding_choice: "anchor_assisted"
  confidence: "ANCHOR_ASSISTED"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  fork_type: null
  difficulty: null

answer_array:
  architecture: "Long-chain-of-title defense array"
  geometry: "Three outside defenses surround one text-condition defense. B is the dominant trap because the stem spotlights nonrecording."
  dominant_trap:
    choice: "B"
    percent: 59
    why_attractive: "The stem repeatedly discusses recording and omitted deed references, so the unrecorded original deed feels like the strongest defense."
  credited_answer:
    choice: "D"
    why_survives: "It attacks the condition built into the covenant itself: reimbursement only for reasonable repair expenses."
  clash_pair:
    choices: ["B", "D"]
    axis: "recording-act defense versus covenant-condition defense"
    resolving_anchor: "Recording acts protect bona fide purchasers; the businessman inherited Lot 2 and is not a BFP."
  secondary_trap:
    choice: "C"
    axis: "reliance versus enforceability of an express running covenant"
    resolving_anchor: "Reliance is not an element of enforcing this real covenant."

choice_walkthroughs:
  A:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "misfit"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "fact_not_in_evidence"
      - "answer_to_different_question"
      - "bar_exam_bait"
    method_class: "hard_structural"
    student_label: "adverse-possession red herring"
    c3_signal: "The stem mentions an adverse-possession statute, but no party is claiming title by adverse possession."
    what_true_responsive_version_would_need: "Facts showing the friend or a predecessor acquired or lost title through actual, open, hostile, exclusive, continuous possession for the statutory period."
    lawyer_confirmation: "No adverse possession issue affects the reimbursement covenant."
  B:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "bait_doctrine"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "legally_true_but_irrelevant"
      - "wrong_party"
      - "half_right_answer"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "recording-act dominant trap"
    c3_signal: "The choice states a real title-record fact, but the businessman is not a later purchaser for value; he took by intestate succession."
    what_true_responsive_version_would_need: "It would need the businessman to be a protected bona fide purchaser for value without notice, not an heir."
    lawyer_confirmation: "Recording acts protect qualifying subsequent purchasers. The businessman took by intestate succession, so nonrecording does not give him the recording-act defense."
  C:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "legally_true_but_irrelevant"
      - "common_student_myth"
      - "half_right_answer"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "reliance wrong element"
    c3_signal: "The choice talks about reliance, but the covenant text does not make reliance the reimbursement condition."
    what_true_responsive_version_would_need: "It would need a doctrine or fact making reliance an element of the friend's right to reimbursement."
    lawyer_confirmation: "Reliance is not an element of enforcing an express real covenant running with the land."
  D:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "text-condition survivor"
    c3_signal: "The answer tracks the covenant's own limiting word: reasonable expense."
    what_true_responsive_version_would_need: "This choice already gives the viable defense: failure to prove the reimbursable repair expenses were reasonable."
    lawyer_confirmation: "Because the covenant reimburses only reasonable expenses, judgment for the businessman would rest on failure to prove that the expenditures were reasonable. The word customary is treated here as proof language tied to reasonableness, not as a separate covenant element."

residual_answer:
  official_key: "D"
  c3_residual_without_anchors: "B may remain attractive because the deed was unrecorded; C may remain attractive because the friend did not rely."
  c3_residual_with_anchors: "D"
  residual_statement: "The only defense that attacks an actual condition of the reimbursement covenant is lack of proof that the repair expenditures were reasonable."
  confidence_band: "ANCHOR_ASSISTED"

legal_leak_audit:
  student_accessible_claims:
    - claim: "A is off-call because no one acquired title by adverse possession."
      status: "passes via stem facts"
    - claim: "D tracks the covenant's own word 'reasonable.'"
      status: "passes via answer-text-to-stem relation"
    - claim: "B is the dominant trap because the stem spotlights recording."
      status: "passes via answer-array and pick-rate relation"
  anchor_assisted_claims:
    - claim: "The covenant runs with the land."
      status: "requires Real Property real-covenant anchor"
    - claim: "The recording act does not protect the businessman because he inherited rather than purchased for value."
      status: "requires recording-act BFP anchor"
    - claim: "Reliance is not an element of enforcing this express running covenant."
      status: "requires real-covenant anchor"
  lawyer_only_claims:
    - claim: "Full real-covenant elements such as touch and concern, intent, privity, and notice."
      quarantine: "lawyer_confirmation only"
  drift_audit: "The walkthrough does not pretend a student can defeat the recording-act or reliance distractors from grammar alone."

gold_keys:
  - id: "GK-REAL_PROPERTY-RECORDING-HEIR-BFP-01"
    statement: "Recording acts protect qualifying later purchasers for value without notice. An heir or intestate successor is not a bona fide purchaser merely because an earlier deed was unrecorded."
    type: "distinction"
    unlocks: "the unrecorded-deed dominant trap"
    trigger: "a party takes by inheritance or intestate succession and then invokes a recording-act problem"
    tested_choice: "B"
    authority: "Common-law recording-act doctrine"
    last_minute_review: true
  - id: "GK-REAL_PROPERTY-REAL-COVENANT-RELIANCE-01"
    statement: "An express real covenant running with land is not enforced because a successor relied on it. The enforceability question is the running-covenant status; the performance question is whether the covenant's own conditions are met."
    type: "distinction"
    unlocks: "the no-reliance trap"
    trigger: "a successor discovers the covenant after acting, but the covenant itself states a land-related obligation"
    tested_choice: "C"
    authority: "Common-law real covenant doctrine"
    last_minute_review: true

silver_keys:
  - id: "SK-REAL_PROPERTY-COVENANT-TEXT-CONDITION-01"
    statement: "In a long chain-of-title stem, do not let the dramatic recording facts outrank the operative covenant text. First ask which answer attacks a condition the covenant actually states."
    type: "call_focus"
    navigates: "recording/reliance traps versus the covenant's own reasonableness condition"
    trigger: "a because-call after a long deed history with one answer mirroring the covenant language"
    tested_choice: "B"
    outline_code: "81020401"
    last_minute_review: true

remediation:
  card_id: "REM-RP-REAL-COVENANT-DEFENSES-01"
  title: "Do Not Let Recording Facts Swallow the Covenant Text"
  signal: "Long deed chain, unrecorded original deed, later omitted covenant, and a because-call."
  student_move: "Ask whether the defendant is a protected purchaser. Then return to the covenant's own condition."
  tiny_anchor: "Recording acts protect BFPs, not heirs; reliance is not required for an express running covenant."
  dominant_trap: "Unrecorded deed means the covenant cannot be enforced."
  confidence_after_teaching: "ANCHOR_ASSISTED"
  drill_need: "Add a three-item drill contrasting heirs, donees, and BFPs in running-covenant problems."

case_study_output:
  final_student_script: "The call asks why the businessman would win. A is adverse-possession noise. B is the big trap: the original deed was unrecorded, but the businessman inherited Lot 2, so he is not a protected BFP. C is also off because reliance is not the element for an express running covenant. The covenant only reimburses reasonable repair expenses. If the friend did not prove reasonableness, the businessman wins. Pick D."
  residual: "D"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"

quality_control:
  full_stem_present: true
  official_key_present: true
  residual_matches_official_key: true
  three_distractors_each_have_one_filter: true
  credited_answer_has_no_filter_broken: true
  controlled_vocab_values_used: true
  outline_code_verified: true
  dominant_trap_identified: true
  anchor_dependency_disclosed: true
  no_fake_hard_structural_claim: true
  customary_wording_audited: true
  pass_requirements_met_for_bank_validation: true

analytics_hooks:
  dominant_trap_choice: "B"
  dominant_trap_percent: 59
  percent_correct: 15
  primary_component: "Real covenant running with land"
  primary_anchor: "Recording acts protect BFPs, not heirs"
  red_zone: "unrecorded-deed trap"
  review_queue: false
```

# Student C3 case study

## 1. program_frame

This is a Real Property running-covenant question. The stem is long because it wants the student to chase deed history. The actual answer turns on a narrower point: **what defense would let the Lot 2 owner avoid paying under the covenant?**

Official answer: **D**.

Teaching verdict: **ANCHOR_SOLVE**. The student needs the Real Property anchors for recording acts and real covenants. This is not a hard structural item.

## 2. student_access_test

A student can structurally see two things:

The adverse-possession answer is off because no one is claiming title by adverse possession. The correct answer tracks the covenant's own word: **reasonable** expense.

But the student cannot safely eliminate B or C from structure alone. Those require anchors:

**B requires the recording-act anchor:** recording acts protect qualifying purchasers for value, not heirs.
**C requires the real-covenant anchor:** reliance is not an element of enforcing an express covenant running with land.

## 3. question_data

**Subject:** Real Property
**Topic:** Rights in Land
**Subtopic:** Real Covenants
**Outline code:** 81020401
**Percent correct:** 15%
**Dominant trap:** B, selected by 59%

**Call:** If judgment is for the businessman, it will be because ____.

**Choices:**

A. the friend is barred by adverse possession.
B. the veterinarian's deed from the owner was never recorded.
C. the friend did not know about the covenant until after he had incurred the expenses and, hence, could not have relied on it.
D. the friend's expenditures were not proved to be reasonable and customary.

## 4. call_and_prediction

The call is a **because-call**. It does not ask, “Which fact in the title history sounds important?” It asks which reason would support judgment for the businessman.

Prediction before choices: the answer should identify a real defense to payment under the covenant. The covenant itself says reimbursement is for **reasonable expense**. That word should be watched closely.

## 5. trigger_facts

| Fact                                                          | Why it matters                         |
| ------------------------------------------------------------- | -------------------------------------- |
| The covenant says “heirs and assigns.”                        | Running-covenant signal.               |
| The covenant says the parties intend it to run with the land. | Running-covenant signal.               |
| The covenant reimburses only reasonable repair expenses.      | Direct path to D.                      |
| The original deed was never recorded.                         | Dominant trap.                         |
| The businessman took by intestate succession.                 | Defeats the BFP recording-act defense. |
| The friend learned of the covenant only after paying.         | Reliance trap.                         |
| No one acquired title by adverse possession.                  | Cuts A.                                |

## 6. governing_c3_lane

**Lane:** Anchor-assisted CUT.

The item is designed to make the student chase outside defenses:

* adverse possession;
* recording act;
* reliance.

The answer is the one defense that attacks the covenant's own condition: **reasonable expenses**.

## 7. choice_by_choice_walkthrough

### A

1. **Student-accessible C3 signal:** The stem mentions an adverse-possession statute, but no party claims title by adverse possession.
2. **Student label:** Adverse-possession red herring.
3. **What a true/responsive version would look like:** It would need facts showing someone acquired or lost title through actual, open, hostile, exclusive, continuous possession for the statutory period.
4. **Lawyer confirmation:** Adverse possession has no role in the friend's covenant-reimbursement claim.

### B

1. **Student-accessible C3 signal:** This choice uses a true fact from the title history, but it does not yet show a valid defense for the businessman.
2. **Student label:** Recording-act dominant trap.
3. **What a true/responsive version would look like:** It would need the businessman to be a bona fide purchaser for value without notice.
4. **Lawyer confirmation:** The businessman took Lot 2 by intestate succession. Recording acts protect qualifying later purchasers for value, not heirs. The unrecorded deed does not give him the defense.

### C

1. **Student-accessible C3 signal:** This choice talks about reliance. The covenant text does not make reliance the condition for reimbursement.
2. **Student label:** Reliance wrong element.
3. **What a true/responsive version would look like:** It would need a doctrine or fact making reliance an element of the friend's right to enforce the covenant.
4. **Lawyer confirmation:** Reliance is not an element of enforcing an express real covenant running with the land.

### D

1. **Student-accessible C3 signal:** This choice matches the covenant's own limiting word: “reasonable.”
2. **Student label:** Text-condition survivor.
3. **What a true/responsive version would look like:** This is the true/responsive reason. If the friend failed to prove reasonable reimbursable expenses, the businessman wins.
4. **Lawyer confirmation:** The covenant reimburses reasonable repair expenses. Judgment for the businessman would rest on failure to prove the repair expenditures were reasonable. The word “customary” is treated as proof language tied to reasonableness, not as a separate covenant element.

## 8. residual_answer

Residual answer: **D**.

A is off by facts. B is the dominant trap but fails under the BFP recording-act anchor. C is a reliance trap. D is the only reason that attacks the actual covenant condition.

## 9. legal_leak_audit

Student-accessible:

* A is a red herring because no adverse-possession facts appear.
* D matches the covenant's “reasonable expense” language.
* B is visually attractive because the stem emphasizes recording.

Anchor-assisted:

* The covenant runs with the land.
* Recording acts do not protect the businessman because he inherited.
* Reliance is not an element of enforcing the real covenant.

Lawyer-only:

* Full real-covenant element analysis: intent, touch and concern, privity, notice.
* Full recording-act priority framework.

## 10. final_student_script

The call asks why the businessman would win. A is adverse-possession noise. B is the big trap: the original deed was unrecorded, but the businessman inherited Lot 2, so he is not a protected BFP. C is also off because reliance is not the element for an express running covenant. The covenant only reimburses reasonable repair expenses. If the friend did not prove reasonableness, the businessman wins. Pick **D**.

## 11. remediation_card

**REM-RP-REAL-COVENANT-DEFENSES-01 — Do Not Let Recording Facts Swallow the Covenant Text**

Signal: long deed chain, unrecorded original deed, later omitted covenant, and a because-call.

Move: ask whether the defendant is a protected purchaser. Then return to the covenant's own condition.

Tiny anchor: recording acts protect BFPs, not heirs; reliance is not required for an express running covenant.

Trap: “the deed was unrecorded, so the covenant cannot be enforced.”

## 12. qa_checklist

| Check                                   | Result       |
| --------------------------------------- | ------------ |
| Full stem present                       | Pass         |
| Negative stem                           | No           |
| Official key identified                 | D            |
| Residual matches official key           | Yes          |
| Dominant trap identified                | B            |
| Three distractors each break one filter | Yes          |
| Credited answer has no broken filter    | Yes          |
| Anchor dependency disclosed             | Yes          |
| Bank validation                         | PASS         |
| Teaching verdict                        | ANCHOR_SOLVE |

## 13. wrong_answer_recovery_paths

**If the student picked A:** The student reacted to the adverse-possession statute rather than the facts. Recovery: do not use a statute just because the stem mentions it. Require facts that trigger it.

**If the student picked B:** The student followed the loudest title fact. Recovery: ask who needs recording-act protection. The businessman inherited; he did not purchase for value.

**If the student picked C:** The student imported reliance. Recovery: read the covenant's condition. The text requires reasonable repair expense, not reliance.

## 14. outline_mastery_map

Primary outline code: **81020401 — Non-Possessory Rights and Interests in Land > Real Covenants > Running with the land**.

Adjacent codes:

| Code     | Why adjacent                                                        |
| -------- | ------------------------------------------------------------------- |
| 81020400 | Real Covenants generally.                                           |
| 84040403 | Recording Acts > Bona fide purchaser.                               |
| 84040101 | Adverse Possession > Requirements, used only as a red herring here. |

## 15. crossover_intersection_map

This item borrows from title-recording and adverse-possession vocabulary, but the operative issue is a real covenant.

Crossover risk:

* Recording facts feel like priority facts.
* Adverse-possession statutes feel legally important because they are named.
* Warranty deeds and omitted covenant language invite deed-covenant confusion.

C3 response: return to the **because-call** and the covenant text. The winning defense must explain why the businessman does not owe reimbursement under the covenant.

# c3_annotation

```json
{
  "question_id": "15017",
  "subject": "REAL_PROPERTY",
  "subject_display": "Real Property",
  "topic": "Rights in Land",
  "subtopic": "Real Covenants",
  "outline_code": "81020401",
  "official_key": "D",
  "credited_answer": "D",
  "percent_correct": 15,
  "selection_percentages": {
    "A": 4,
    "B": 59,
    "C": 22,
    "D": 15
  },
  "dominant_trap": "B",
  "governing_law_type": "RULE",
  "deciding_phase": "CUT",
  "case_study_verdict": "ANCHOR_SOLVE",
  "bank_validation_verdict": "PASS",
  "confidence": "ANCHOR_ASSISTED",
  "method_class_deciding_choice": "anchor_assisted",
  "residual": "D",
  "answer_array": {
    "architecture": "Long-chain-of-title defense array",
    "geometry": "Three external defenses surround one covenant-text condition defense.",
    "primary_axis": "external title/notice/reliance defenses versus the covenant's own reimbursement condition",
    "dominant_trap_mechanic": "unrecorded-deed recording-act trap",
    "resolving_fact": "The covenant reimburses only reasonable repair expenses."
  },
  "choices": {
    "A": {
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "misfit",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": [
        "fact_not_in_evidence",
        "answer_to_different_question",
        "bar_exam_bait"
      ],
      "method_class": "hard_structural",
      "student_label": "adverse-possession red herring"
    },
    "B": {
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "bait_doctrine",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": [
        "attractive_wrong_answer",
        "legally_true_but_irrelevant",
        "wrong_party",
        "half_right_answer",
        "bar_exam_bait"
      ],
      "method_class": "anchor_assisted",
      "student_label": "recording-act dominant trap"
    },
    "C": {
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "wrong_element",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": [
        "legally_true_but_irrelevant",
        "common_student_myth",
        "half_right_answer",
        "bar_exam_bait"
      ],
      "method_class": "anchor_assisted",
      "student_label": "reliance wrong element"
    },
    "D": {
      "filter_broken": null,
      "mold_code": null,
      "mold_family": null,
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": [
        "correct_answer"
      ],
      "method_class": "anchor_assisted",
      "student_label": "text-condition survivor"
    }
  },
  "gold_keys": [
    {
      "id": "GK-REAL_PROPERTY-RECORDING-HEIR-BFP-01",
      "statement": "Recording acts protect qualifying later purchasers for value without notice. An heir or intestate successor is not a bona fide purchaser merely because an earlier deed was unrecorded.",
      "type": "distinction",
      "unlocks": "the unrecorded-deed dominant trap",
      "trigger": "a party takes by inheritance or intestate succession and then invokes a recording-act problem",
      "tested_choice": "B",
      "authority": "Common-law recording-act doctrine",
      "last_minute_review": true
    },
    {
      "id": "GK-REAL_PROPERTY-REAL-COVENANT-RELIANCE-01",
      "statement": "An express real covenant running with land is not enforced because a successor relied on it. The enforceability question is the running-covenant status; the performance question is whether the covenant's own conditions are met.",
      "type": "distinction",
      "unlocks": "the no-reliance trap",
      "trigger": "a successor discovers the covenant after acting, but the covenant itself states a land-related obligation",
      "tested_choice": "C",
      "authority": "Common-law real covenant doctrine",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-REAL_PROPERTY-COVENANT-TEXT-CONDITION-01",
      "statement": "In a long chain-of-title stem, do not let the dramatic recording facts outrank the operative covenant text. First ask which answer attacks a condition the covenant actually states.",
      "type": "call_focus",
      "navigates": "recording/reliance traps versus the covenant's own reasonableness condition",
      "trigger": "a because-call after a long deed history with one answer mirroring the covenant language",
      "tested_choice": "B",
      "outline_code": "81020401",
      "last_minute_review": true
    }
  ],
  "analyzer_notes": "drift_audit: recording-act and reliance eliminations are anchor_assisted, not hard structural. transformed_from: none. letter_map: original item, no transform. outline_code: 81020401 verified from OUTLINE_CODES_COMPLETE.md."
}
```

# program_elements

```json
{
  "question_id": "15017",
  "traps": [
    {
      "choice": "B",
      "name": "recording-act dominant trap",
      "trap_type": "dominant_trap",
      "pick_rate": 59,
      "student_error": "Treating the unrecorded original deed as automatically defeating the covenant.",
      "recovery_move": "Ask whether the defendant is a protected purchaser for value. The businessman inherited."
    },
    {
      "choice": "C",
      "name": "reliance wrong element",
      "trap_type": "wrong_element",
      "pick_rate": 22,
      "student_error": "Importing reliance as if it were required to enforce the covenant.",
      "recovery_move": "Read the covenant condition: reasonable repair expense, not reliance."
    },
    {
      "choice": "A",
      "name": "adverse-possession red herring",
      "trap_type": "misfit",
      "pick_rate": 4,
      "student_error": "Reacting to a statute mentioned in the stem without facts triggering it.",
      "recovery_move": "Require adverse-possession facts before using adverse possession."
    }
  ],
  "tensions": [
    {
      "axis": "recording-act defense versus covenant-condition defense",
      "choices": [
        "B",
        "D"
      ],
      "resolving_fact": "The businessman took Lot 2 by intestate succession, while the covenant reimburses only reasonable expenses.",
      "anchor_needed": "GK-REAL_PROPERTY-RECORDING-HEIR-BFP-01"
    },
    {
      "axis": "reliance versus express running-covenant enforceability",
      "choices": [
        "C",
        "D"
      ],
      "resolving_fact": "The covenant text does not require reliance; it requires reasonable repair expense.",
      "anchor_needed": "GK-REAL_PROPERTY-REAL-COVENANT-RELIANCE-01"
    }
  ],
  "remediation_card": {
    "id": "REM-RP-REAL-COVENANT-DEFENSES-01",
    "title": "Do Not Let Recording Facts Swallow the Covenant Text",
    "signal": "Long deed chain, unrecorded original deed, later omitted covenant, and a because-call.",
    "move": "Ask whether the defendant is a protected purchaser. Then return to the covenant's own condition.",
    "tiny_anchor": "Recording acts protect BFPs, not heirs; reliance is not required for an express running covenant.",
    "trap": "Unrecorded deed means the covenant cannot be enforced."
  },
  "red_zones": [
    "unrecorded-deed overreaction",
    "heir mistaken for bona fide purchaser",
    "reliance imported into real covenant",
    "statute mention treated as statute trigger",
    "long chain-of-title misdirection"
  ],
  "quality_flags": {
    "anchor_assisted": true,
    "dominant_trap_identified": true,
    "bank_item_valid": true,
    "student_solve_after_anchor": true,
    "customary_wording_audited": true
  }
}
```

# program_intelligence

```json
{
  "question_id": "15017",
  "wrong_answer_recovery": {
    "A": {
      "diagnosis": "The student grabbed the adverse-possession statute because the stem named it.",
      "repair": "Require adverse-possession facts before using the doctrine. No possession claim means the statute is noise."
    },
    "B": {
      "diagnosis": "The student treated nonrecording as a universal defense.",
      "repair": "Ask who is invoking the recording act. A person taking by intestate succession is not a purchaser for value."
    },
    "C": {
      "diagnosis": "The student treated lack of reliance as fatal.",
      "repair": "Do not import reliance. Enforceability turns on the running covenant; payment turns on the covenant's own condition."
    }
  },
  "drill_seeds": [
    {
      "id": "DRILL-RP-RECORDING-HEIR-01",
      "prompt": "Owner conveys Lot A by an unrecorded deed containing a running covenant. Neighbor later inherits the burdened parcel and claims the covenant is unenforceable because the deed was unrecorded. Does the recording act protect the heir?",
      "target": "heir is not a BFP"
    },
    {
      "id": "DRILL-RP-COVENANT-RELIANCE-01",
      "prompt": "A successor spends money on a wall before learning of an express covenant requiring reimbursement of reasonable repair expenses. Which fact matters more: lack of reliance or proof that the expense was reasonable?",
      "target": "covenant condition beats reliance trap"
    },
    {
      "id": "DRILL-RP-LONG-STEM-TRAP-01",
      "prompt": "A deed-chain stem mentions adverse possession, recording, omitted deed references, and a covenant. Identify which facts actually support a defense to reimbursement.",
      "target": "separate legal triggers from decorative facts"
    }
  ],
  "trap_tags": [
    "attractive_wrong_answer",
    "legally_true_but_irrelevant",
    "answer_to_different_question",
    "half_right_answer",
    "bar_exam_bait",
    "fact_not_in_evidence"
  ],
  "component_routing": {
    "lessons": [
      "Lesson 1 TRUE and RESPONSIVE",
      "Lesson 2 CUT -> CLASH -> CALL",
      "Lesson 7 Predict Before You Peek",
      "Lesson 8 Not-Responsive Molds",
      "Lesson 9 Tension Points and the Clash",
      "Lesson 12 Anchor Deck",
      "Lesson 13 Calibration",
      "Lesson 14 Full Workflow"
    ],
    "primary_component": "anchor-assisted CUT",
    "method_class": "anchor_assisted",
    "confidence": "ANCHOR_ASSISTED",
    "case_study_verdict": "ANCHOR_SOLVE",
    "bank_validation_verdict": "PASS"
  },
  "crossovers": [
    {
      "source_area": "Recording acts",
      "risk": "The stem's unrecorded-deed fact pulls students into priority analysis.",
      "c3_response": "Check protected status before using the recording act."
    },
    {
      "source_area": "Adverse possession",
      "risk": "The statute mention makes adverse possession feel available.",
      "c3_response": "No adverse-possession facts, no adverse-possession answer."
    },
    {
      "source_area": "Contract reliance",
      "risk": "Students may think the successor must have known of and relied on the covenant before spending.",
      "c3_response": "Return to the running-covenant anchor and the covenant's text."
    }
  ],
  "outline_mastery": [
    {
      "outline_code": "81020401",
      "label": "Non-Possessory Rights and Interests in Land > Real Covenants > Running with the land",
      "mastery_task": "Recognize when a covenant's benefit and burden survive a long chain of title."
    },
    {
      "outline_code": "84040403",
      "label": "Titles, Deeds, and Conveyancing > Recording Acts > Bona fide purchaser",
      "mastery_task": "Distinguish protected purchasers from heirs and donees."
    },
    {
      "outline_code": "84040101",
      "label": "Titles, Deeds, and Conveyancing > Adverse Possession > Requirements",
      "mastery_task": "Do not use adverse possession without possession facts."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-REAL_PROPERTY-RECORDING-HEIR-BFP-01",
      "statement": "Recording acts protect qualifying later purchasers for value without notice. An heir or intestate successor is not a bona fide purchaser merely because an earlier deed was unrecorded.",
      "type": "distinction",
      "unlocks": "the unrecorded-deed dominant trap",
      "trigger": "a party takes by inheritance or intestate succession and then invokes a recording-act problem",
      "tested_choice": "B",
      "authority": "Common-law recording-act doctrine",
      "last_minute_review": true
    },
    {
      "id": "GK-REAL_PROPERTY-REAL-COVENANT-RELIANCE-01",
      "statement": "An express real covenant running with land is not enforced because a successor relied on it. The enforceability question is the running-covenant status; the performance question is whether the covenant's own conditions are met.",
      "type": "distinction",
      "unlocks": "the no-reliance trap",
      "trigger": "a successor discovers the covenant after acting, but the covenant itself states a land-related obligation",
      "tested_choice": "C",
      "authority": "Common-law real covenant doctrine",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-REAL_PROPERTY-COVENANT-TEXT-CONDITION-01",
      "statement": "In a long chain-of-title stem, do not let the dramatic recording facts outrank the operative covenant text. First ask which answer attacks a condition the covenant actually states.",
      "type": "call_focus",
      "navigates": "recording/reliance traps versus the covenant's own reasonableness condition",
      "trigger": "a because-call after a long deed history with one answer mirroring the covenant language",
      "tested_choice": "B",
      "outline_code": "81020401",
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
  qid: "15017"
  question_id: "15017"
  subject: "REAL_PROPERTY"
  topic: "Rights in Land"
  subtopic: "Real Covenants"
  outline_code: "81020401"
  official_key: "D"
transform_provenance:
  transformed_from: "21105"
  variant_slug: "21105"
  original_key_letter: "UNKNOWN"
  new_key_letter: "D"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_SOLVE"
  confidence: "ANCHOR_ASSISTED"
  residual: "D"
distilled_core_question: "Distilled core question not available in source file."
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 15017; source 21105.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject REAL_PROPERTY; topic Rights in Land; subtopic Real Covenants.
4. **distilled_core_question:** Distilled core question not available in source file.
5. **call_and_prediction:** Credited answer: D.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 81020401.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** D
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 81020401.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "15017",
  "subject": "REAL_PROPERTY",
  "credited_answer": "D",
  "outline_code": "81020401",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 21105; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "15017",
  "subject": "REAL_PROPERTY",
  "outline_code": "81020401",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-21105",
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
  "question_id": "15017",
  "subject": "REAL_PROPERTY",
  "outline_code": "81020401",
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
    "placement": "81020401",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
