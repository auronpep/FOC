---
qid: "15023"
transformed_from: "21410"
subject: "REAL_PROPERTY"
topic: "Rights in Land"
subtopic: "Support Rights - Lateral"
outline_code: "81020901"
key: "A"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "B"
pick_rates: "percent_correct: 74"
bank_validation_verdict: "PASS"
review_truth: "Review truth not available in source file."
---
```yaml
barmatrix_row:
  qid: "15023"
  internal_id: null
  subject: "REAL_PROPERTY"
  subject_display: "Real Property"
  topic: "Rights in Land"
  subtopic: "Support Rights - Lateral"
  outline_code: "81020901"
  outline_code_label: "Non-Possessory Rights and Interests in Land > Support Rights > Lateral"
  stem: >
    A landowner owned Lot 1 in fee simple in a properly approved subdivision,
    designed and zoned for industrial use. His neighbor owned the adjoining Lot 2
    in the same subdivision. The plat of the subdivision was recorded as authorized
    by statute. Twelve years ago, the landowner erected an industrial building wholly
    situated on Lot 1 but with one wall along the boundary common with Lot 2. The
    construction was done as authorized by a building permit, validly obtained under
    applicable statutes, ordinances, and regulations. Further, the construction was
    regularly inspected and passed as being in compliance with all building code
    requirements. Lot 2 remained vacant until six months ago, when the neighbor began
    excavation pursuant to a building permit authorizing the erection of an industrial
    building situated on Lot 2 but with one wall along the boundary common with Lot 1.
    The excavation caused subsidence of a portion of Lot 1 that resulted in injury
    to the landowner's building. Further investigation determined that the subsidence
    would have occurred even if there was not a building on Lot 1. The excavation was
    not done negligently or with any malicious intent to injure. In the jurisdiction,
    the time to acquire title by adverse possession or rights by prescription is 10
    years. The landowner brought an appropriate action against the neighbor to recover
    damages resulting from the injuries in the building on Lot 1. In such lawsuit,
    judgment should be for
  call: "In such lawsuit, judgment should be for"
  choices:
    A: "the landowner, because the subsidence would have occurred without the weight of the building on Lot 1."
    B: "the landowner, because a right for support, appurtenant to Lot 1, had been acquired by adverse possession or prescription."
    C: "the neighbor, because Lots 1 and 2 are urban land, as distinguished from rural land and, therefore, under the circumstances the landowner had the duty to protect any improvements on Lot 1."
    D: "the neighbor, because the construction and the use to be made of the building were both authorized by the applicable law."
  official_key: "A"
  correct_answer_explanation: >
    A is correct. A landowner has the right to lateral support of land from adjoining
    parcels. The right protects land itself, not added structures as such. But when
    the land would have subsided even without the structure, the excavating neighbor
    is liable for resulting damage.
  wrong_answer_explanations:
    B: "B is incorrect. The support right exists as an incident of land ownership; it does not have to be acquired by adverse possession or prescription on these facts."
    C: "C is incorrect. Urban/industrial zoning does not remove the adjoining landowner's lateral-support duty."
    D: "D is incorrect. Building permits and lawful use do not defeat private lateral-support rights."
  additional_info: null
  lb_rule_reference: null
  lb_student_diagnostic: null
  pick_rates:
    percent_correct: 74
    A: 74
    B: 15
    C: 2
    D: 9
    provenance: "measured in source workbook"
  dominant_trap: "B"

source_stack:
  - "BarMatrix row 15023 from MBE.xlsx"
  - "Subject-specific workbook row 15023 for pick rates"
  - "OUTLINE_CODES_COMPLETE.md for outline_code 81020901"
  - "controlled_vocabularies.md for controlled field values"
  - "C3 universal lessons: TRUE/RESPONSIVE, CUT-CLASH-CALL, Issue-Sense, Calibration"
  - "Official explanation used only for lawyer_confirmation"
  - "External legal verification used only for lawyer_confirmation"

student_access_contract:
  controlling_test: "Could a smart 10-year-old who completed the C3 lessons, subject overlays, and taught tiny anchors identify the choice's problem without outside legal doctrine?"
  result: "ANCHOR_GAP"
  reason: >
    The item turns on a Real Property lateral-support rule that is not in the current
    universal C3 lessons or available subject overlays. A student can see the tempting
    facts, but cannot safely know why the no-building subsidence fact beats prescription,
    zoning, and permit compliance without a new tiny anchor.
  allowed_student_moves:
    - "TRUE and RESPONSIVE"
    - "CUT before CLASH before CALL"
    - "Notice the answer array: landowner winners A/B versus neighbor winners C/D"
    - "Notice the dominant trap: 12 years versus 10-year prescription period"
    - "Use only the proposed Gold Key after it is taught"
  forbidden_moves:
    - "Do not call B false on pure C3 structure alone."
    - "Do not pretend a student can derive lateral-support liability from grammar."
    - "Do not turn the item into a full real-property outline."
    - "Do not let permits/zoning facts override the lateral-support anchor unless doctrine says so."

stem_parse:
  actor_landowner: "Owner of Lot 1"
  actor_neighbor: "Owner of adjoining Lot 2"
  property_relation: "adjoining industrial subdivision lots"
  improvement_on_lot_1: "industrial building wholly on Lot 1, wall along boundary"
  time_building_existed: "12 years"
  prescription_period: "10 years"
  neighbor_activity: "non-negligent excavation on Lot 2 under a valid building permit"
  injury: "subsidence of Lot 1 and injury to the building on Lot 1"
  dispositive_fact: "subsidence would have occurred even if there was no building on Lot 1"
  negative_facts:
    - "excavation was not negligent"
    - "excavation was not malicious"
    - "both parties' construction was permit-authorized"
  call_type: "judgment for landowner or neighbor"
  adjacent_call_trap: "Whether the landowner acquired a prescriptive support right because 12 years exceeds the 10-year period"
  negative_stem_inversion: false

trigger_facts:
  - fact: "Neighbor excavated on adjoining Lot 2."
    access_label: "student_visible"
    role: "points to lateral support"
  - fact: "Lot 1 subsided."
    access_label: "student_visible"
    role: "support-right injury"
  - fact: "The subsidence would have occurred even without the building."
    access_label: "student_visible"
    role: "deciding fact under the lateral-support anchor"
  - fact: "The building stood for 12 years."
    access_label: "student_visible"
    role: "dominant prescription trap"
  - fact: "The prescription period is 10 years."
    access_label: "student_visible"
    role: "dominant prescription trap"
  - fact: "Construction and excavation were permit-authorized and code-compliant."
    access_label: "student_visible"
    role: "permit-compliance trap"
  - fact: "The excavation was not negligent or malicious."
    access_label: "student_visible"
    role: "negligence-frame trap"

c3_routing:
  subject_fit: "Real Property support-right item = land relationship + private support right + improvement caveat."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  method_class: "anchor_gap"
  confidence: "HUMAN_REVIEW"
  case_study_verdict: "ANCHOR_GAP"
  bank_validation_verdict: "PASS"
  residual: "A"
  agrees_with_official_key: true
  fork_type: null
  fork_detected: false
  difficulty: null

answer_array:
  architecture: "two landowner answers versus two neighbor answers"
  geometry: "A/B both favor landowner; C/D both favor neighbor; A/B fight over the source of the support right"
  dominant_trap_choice: "B"
  dominant_trap_description: "Prescription bait: 12 years exceeds the 10-year period, so students may think the support right had to be acquired by prescription."
  gold_key_refs:
    - "GK-REAL_PROPERTY-LATERAL-SUPPORT-01"
  silver_key_refs:
    - "SK-REAL_PROPERTY-LATERAL-SUPPORT-FACT-01"

choice_walkthroughs:
  A:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_gap"
    student_label: "natural-land support fact winner"
    c3_signal: "This choice uses the no-building subsidence fact, but why that fact controls requires the proposed lateral-support Gold Key."
    true_responsive_version: "Already true and responsive under the lateral-support anchor."
    lawyer_confirmation: "If the land would have subsided even in its natural condition, the adjoining excavator is liable despite the presence of an improvement."
  B:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "bait_doctrine"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "legally_true_but_irrelevant"
      - "wrong_timing"
      - "answer_to_different_question"
      - "bar_exam_bait"
    method_class: "anchor_gap"
    student_label: "prescription-period bait"
    c3_signal: "The 12-year and 10-year facts are bait. The support right on these facts does not need to be acquired by prescription."
    true_responsive_version: "Prescription would matter more if the landowner needed a special acquired right to support the added weight of the building."
    lawyer_confirmation: "The landowner wins because the natural land would have subsided, not because a prescriptive support right had to be acquired."
  C:
    filter_broken: "NOT_TRUE"
    mold_code: "flat_misstatement"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "misstated_rule"
      - "wrong_standard"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "anchor_gap"
    student_label: "urban-land invented distinction"
    c3_signal: "The choice changes the test to urban versus rural land and a duty to protect improvements. That is not the lateral-support rule."
    true_responsive_version: "The neighbor would have a stronger argument if the subsidence occurred only because of the building's extra weight and no negligence or acquired support right existed."
    lawyer_confirmation: "Urban or industrial zoning does not erase the private support right."
  D:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "legally_true_but_irrelevant"
      - "wrong_standard"
      - "half_right_answer"
      - "answer_to_different_question"
      - "bar_exam_bait"
    method_class: "anchor_gap"
    student_label: "permit-compliance wrong element"
    c3_signal: "The choice points to permits and legal authorization. Those facts do not answer the lateral-support question once natural land subsidence is shown."
    true_responsive_version: "Permit compliance may matter in a negligence-only theory, but it does not defeat strict liability for removing natural lateral support."
    lawyer_confirmation: "A valid permit and lawful intended use do not by themselves defeat liability for loss of lateral support."

residual_answer:
  answer: "A"
  why_survives: "It is the only choice that uses the fact the lateral-support rule makes decisive: Lot 1 would have subsided even without the building."
  confidence_band: "anchor gap until the lateral-support Gold Key is added; anchor-assisted high confidence after remediation"
  official_key_match: true

legal_leak_audit:
  student_accessible_claims:
    - claim: "The 12-year versus 10-year fact is an attractive prescription trap."
      access_basis: "visible from the stem and answer B"
      status: "student-accessible"
    - claim: "A is fact-engaged because it repeats the no-building subsidence fact."
      access_basis: "visible from the stem and answer A"
      status: "student-accessible"
    - claim: "That fact is legally decisive under lateral support."
      access_basis: "not in current C3 deck; proposed Gold Key required"
      status: "anchor_gap"
    - claim: "Permit compliance does not defeat lateral-support liability."
      access_basis: "not in current C3 deck; proposed Gold Key required"
      status: "anchor_gap"
  lawyer_only_claims:
    - claim: "Exact common-law lateral-support rule."
      quarantine: "lawyer_confirmation only unless promoted to Gold Key"
    - claim: "Improvement caveat: structures recover under strict liability only if the land would have subsided without the structure."
      quarantine: "lawyer_confirmation only unless promoted to Gold Key"
  audit_result: "The student-facing solution must be marked ANCHOR_GAP, not C3_SOLVE."

gold_keys:
  - id: "GK-REAL_PROPERTY-LATERAL-SUPPORT-01"
    statement: "Lateral support protects land in its natural condition. If the neighbor's excavation would have made the land subside even without the building's weight, the excavator is liable for the resulting building damage; if only the building's added weight caused the subsidence, negligence or an acquired support right would matter."
    type: "distinction"
    unlocks: "A over B, C, and D"
    trigger: "excavation causes subsidence next to an improved lot, and the stem says whether the land would have subsided without the improvement"
    tested_choice: "B"
    authority: "Common-law lateral support doctrine"
    last_minute_review: true
    status: "proposed_due_to_anchor_gap"

silver_keys:
  - id: "SK-REAL_PROPERTY-LATERAL-SUPPORT-FACT-01"
    statement: "In an excavation/subsidence answer array, find the land-without-the-building fact before chasing negligence, permits, zoning, or prescription."
    type: "trap_spotting"
    navigates: "the prescription and permit-compliance traps"
    trigger: "the stem includes excavation, subsidence, improvements, and a fact saying whether the land would have fallen without the structure"
    tested_choice: "B"
    outline_code: "81020901"
    last_minute_review: true

remediation:
  card_id: "REM-RP-LATERAL-SUPPORT-15023"
  title: "Lateral Support: Land First, Building Second"
  signal: "Adjoining excavation causes subsidence of improved land."
  student_move: "Ask whether the land would have subsided without the building."
  tiny_anchor: "Natural land collapse = excavator liable; building-only collapse = look for negligence or acquired support right."
  trap: "Prescription-period facts and permit facts look important but are not the deciding route here."
  target_status_after_added: "ANCHOR_SOLVE"

case_study_output:
  final_student_script: "This is a lateral-support gap item. The key fact is that Lot 1 would have subsided even without the building. That means the neighbor removed support for the land itself, so the landowner wins. Do not take the 12-year prescription bait or the permit-compliance bait. Pick A."
  residual: "A"
  verdict: "ANCHOR_GAP"

quality_control:
  qid_consistent: true
  official_key_consistent: true
  c3_residual_matches_official_key: true
  outline_code_verified: true
  controlled_vocab_values_checked: true
  one_filter_per_distractor: true
  credited_answer_has_no_filter_broken: true
  pass_requirements_met: true
  legal_leak_audit_completed: true
  anchor_gap_flagged: true

analytics_hooks:
  dominant_trap_choice: "B"
  dominant_trap_pct: 15
  primary_component: "Real Property lateral support"
  secondary_component: "Improvement caveat and prescription bait"
  review_queue: true
  pick_rate_mode: "measured in source workbook"
```

## 1. program_frame

This is a **Real Property lateral-support** item.

The story looks like a permits, zoning, negligence, and prescription question. It is not. The core task is narrower:

**Did the excavation remove support from the land itself, or only from the added building?**

The stem gives the deciding fact: the subsidence would have occurred **even if there had been no building** on Lot 1.

## 2. student_access_test

This item is **ANCHOR_GAP**.

A student can notice the shape of the trap: answer B is baited by the 12-year building history and the 10-year prescription period. But the student cannot safely solve the item from universal C3 structure alone.

The missing tiny anchor is:

**Lateral support protects land in its natural condition. If the land would have subsided even without the building, the excavating neighbor is liable.**

Once that anchor is taught, this becomes an anchor-assisted solve.

## 3. question_data

| Field                 | Value                    |
| --------------------- | ------------------------ |
| QID                   | 15023                    |
| Subject               | Real Property            |
| Topic                 | Rights in Land           |
| Subtopic              | Support Rights - Lateral |
| Outline code          | 81020901                 |
| Correct answer        | A                        |
| Percent correct       | 74%                      |
| Dominant wrong answer | B, 15%                   |

## 4. call_and_prediction

**Call:** Judgment should be for whom?

Prediction after reading the stem:

The landowner should win because the excavation caused subsidence that would have happened even without the building. That makes the injury traceable to loss of support for the land itself.

The adjacent-call trap is prescription. The 12-year building history and 10-year prescription period are there to pull the student into B.

## 5. trigger_facts

| Fact                                                      | C3 role                       |
| --------------------------------------------------------- | ----------------------------- |
| Neighbor excavated on adjoining Lot 2.                    | Lateral-support signal.       |
| Lot 1 subsided.                                           | Support-right injury.         |
| The building was damaged.                                 | Improvement caveat.           |
| Subsidence would have occurred even without the building. | Deciding fact.                |
| Building existed for 12 years.                            | Prescription bait.            |
| Prescription period is 10 years.                          | Prescription bait.            |
| Excavation was not negligent or malicious.                | Cuts negligence-only framing. |
| Both projects had valid permits.                          | Permit-compliance bait.       |

## 6. governing_c3_lane

**Lane:** Anchor gap → proposed Gold Key.

This is not a hard structural item. The student needs the lateral-support rule. But the answer array still has a teachable structure:

* A uses the exact deciding fact.
* B uses the tempting time-period facts.
* C invents an urban/rural support rule.
* D treats public permits as if they defeat a private support right.

## 7. choice_by_choice_walkthrough

### A. The landowner, because the subsidence would have occurred without the weight of the building on Lot 1.

1. **Student-accessible C3 signal:** This choice uses the fact the stem makes conspicuous: the land would have subsided without the building.
2. **Student label:** Natural-land support fact winner.
3. **What a true/responsive version would look like:** Already true and responsive once the lateral-support Gold Key is taught.
4. **Lawyer confirmation:** Lateral support protects land in its natural condition, and strict liability attaches when the neighbor’s excavation removes that natural support. For improvements, the building-damage recovery follows when the land would have subsided even without the improvement. ([Legal Information Institute][1])

### B. The landowner, because a right for support, appurtenant to Lot 1, had been acquired by adverse possession or prescription.

1. **Student-accessible C3 signal:** The answer grabs the 12-year and 10-year facts. That is why it is attractive.
2. **Student label:** Prescription-period bait.
3. **What a true/responsive version would look like:** Prescription would matter more if the building’s added weight caused the subsidence and the landowner needed a special acquired right to support the improvement.
4. **Lawyer confirmation:** The landowner wins here because the excavation removed support from the land itself. The right did not have to be built from prescription on these facts.

### C. The neighbor, because Lots 1 and 2 are urban land, as distinguished from rural land and, therefore, under the circumstances the landowner had the duty to protect any improvements on Lot 1.

1. **Student-accessible C3 signal:** This choice changes the test to urban versus rural land.
2. **Student label:** Urban-land invented distinction.
3. **What a true/responsive version would look like:** The neighbor’s position would be stronger if the subsidence occurred only because of the building’s added weight and the excavation was not negligent.
4. **Lawyer confirmation:** The lateral-support rule does not turn on an urban/rural distinction in this item. The controlling fact is whether the land itself would have subsided.

### D. The neighbor, because the construction and the use to be made of the building were both authorized by the applicable law.

1. **Student-accessible C3 signal:** This choice points to permit compliance, not the support-right fact.
2. **Student label:** Permit-compliance wrong element.
3. **What a true/responsive version would look like:** Permit compliance may be relevant to negligence, but it would not defeat strict liability for removing natural support.
4. **Lawyer confirmation:** A landowner may have the right to excavate, but the excavation must preserve neighboring land in its natural state; permit compliance does not erase the private lateral-support right. ([Stimmel Law][2])

## 8. residual_answer

After the proposed lateral-support anchor is applied:

* B dies because prescription is the wrong route.
* C dies because urban/rural status is not the test.
* D dies because public authorization does not defeat private lateral-support liability.
* A survives because it uses the decisive no-building subsidence fact.

**Residual answer: A.**

## 9. legal_leak_audit

This item is not student-accessible without a new Real Property anchor.

Student-accessible without the anchor:

* B is visibly attractive because 12 years exceeds the 10-year prescription period.
* A is visibly fact-engaged because it repeats the no-building subsidence fact.
* D is visibly permit-focused.

Not student-accessible without the anchor:

* Why the no-building subsidence fact controls.
* Why prescription is unnecessary.
* Why permit compliance does not defeat the claim.
* Why urban/rural land status is irrelevant.

The legal rule is stable: lateral support protects land in its natural condition, and strict liability applies when excavation causes that natural land to subside; for improved land, strict liability still applies when the land would have subsided without the improvement. ([Legal Information Institute][1])

## 10. final_student_script

**This is a lateral-support gap item. The key fact is that Lot 1 would have subsided even without the building. That means the neighbor removed support for the land itself. The landowner wins. Do not take the 12-year prescription bait or the permit-compliance bait. Pick A.**

## 11. remediation_card

**Card:** Lateral Support: Land First, Building Second

**Signal:** Excavation on one parcel causes subsidence on an adjoining parcel.

**Move:** Ask whether the land would have subsided without the improvement.

**Tiny anchor:**

* Land itself would subside → excavator liable.
* Only the building’s added weight caused the problem → look for negligence or an acquired support right.

**Trap:** Prescription and permit facts feel concrete, but they are not the deciding route here.

## 12. qa_checklist

| Check                                   | Result     |
| --------------------------------------- | ---------- |
| Official key located                    | A          |
| C3 residual matches official key        | Yes        |
| Credited answer has no broken filter    | Yes        |
| Three distractors each break one filter | Yes        |
| Dominant trap named                     | B          |
| Pick rates included                     | Yes        |
| Outline code verified                   | 81020901   |
| Legal leak audit completed              | Yes        |
| Teaching verdict                        | ANCHOR_GAP |
| Bank validation verdict                 | PASS       |

## 13. wrong_answer_recovery_paths

**If the student picked B:**
They followed the 12-year/10-year bait. Repair by drilling: prescription matters only if the natural-land support rule does not already decide the case.

**If the student picked C:**
They accepted an invented urban/rural distinction. Repair by drilling: support rights turn on excavation and subsidence, not zoning labels.

**If the student picked D:**
They treated permit compliance as a shield. Repair by drilling: lawful excavation can still create lateral-support liability.

## 14. outline_mastery_map

| Code     | Node                                                                   | Mastery target                                                                    |
| -------- | ---------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| 81020901 | Non-Possessory Rights and Interests in Land > Support Rights > Lateral | Identify liability when excavation removes lateral support from neighboring land. |
| 81020900 | Non-Possessory Rights and Interests in Land > Support Rights           | Separate lateral support from prescription, zoning, and permit issues.            |
| 81020000 | Non-Possessory Rights and Interests in Land                            | Recognize property rights that run with land relationships.                       |

## 15. crossover_intersection_map

This item intersects with **Torts** because the facts mention negligence and malicious intent. That is bait. The landowner wins even though the excavation was not negligent.

It also intersects with **Land Use / Public Regulation** because the facts mention permits, zoning, and building-code compliance. That is also bait. The private lateral-support right is not erased by public authorization.

## c3_annotation

```json
{
  "question_id": "15023",
  "subject": "REAL_PROPERTY",
  "topic": "Rights in Land",
  "subtopic": "Support Rights - Lateral",
  "outline_code": "81020901",
  "official_key": "A",
  "credited_answer": "A",
  "residual": "A",
  "case_study_verdict": "ANCHOR_GAP",
  "bank_validation_verdict": "PASS",
  "confidence": "HUMAN_REVIEW",
  "deciding_phase": "CUT",
  "governing_law_type": "RULE",
  "fork_type": null,
  "method_class": "anchor_gap",
  "dominant_trap": {
    "choice": "B",
    "pick_rate": 15,
    "reason": "The 12-year building history exceeds the 10-year prescription period, making prescription look like the reason the landowner wins."
  },
  "pick_rates": {
    "percent_correct": 74,
    "A": 74,
    "B": 15,
    "C": 2,
    "D": 9,
    "provenance": "measured in source workbook"
  },
  "answer_choices": {
    "A": {
      "text": "the landowner, because the subsidence would have occurred without the weight of the building on Lot 1.",
      "is_correct": true,
      "filter_broken": null,
      "mold_code": null,
      "mold_family": null,
      "bait_architecture_code": null,
      "wrong_answer_architecture_tags": ["correct_answer"],
      "method_class": "anchor_gap",
      "student_label": "natural-land support fact winner"
    },
    "B": {
      "text": "the landowner, because a right for support, appurtenant to Lot 1, had been acquired by adverse possession or prescription.",
      "is_correct": false,
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "bait_doctrine",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": [
        "attractive_wrong_answer",
        "legally_true_but_irrelevant",
        "wrong_timing",
        "answer_to_different_question",
        "bar_exam_bait"
      ],
      "method_class": "anchor_gap",
      "student_label": "prescription-period bait"
    },
    "C": {
      "text": "the neighbor, because Lots 1 and 2 are urban land, as distinguished from rural land and, therefore, under the circumstances the landowner had the duty to protect any improvements on Lot 1.",
      "is_correct": false,
      "filter_broken": "NOT_TRUE",
      "mold_code": "flat_misstatement",
      "mold_family": "EAR_FALSITY",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": [
        "misstated_rule",
        "wrong_standard",
        "common_student_myth",
        "bar_exam_bait"
      ],
      "method_class": "anchor_gap",
      "student_label": "urban-land invented distinction"
    },
    "D": {
      "text": "the neighbor, because the construction and the use to be made of the building were both authorized by the applicable law.",
      "is_correct": false,
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "wrong_element",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "wrong_answer_architecture_tags": [
        "legally_true_but_irrelevant",
        "wrong_standard",
        "half_right_answer",
        "answer_to_different_question",
        "bar_exam_bait"
      ],
      "method_class": "anchor_gap",
      "student_label": "permit-compliance wrong element"
    }
  },
  "gold_keys": [
    {
      "id": "GK-REAL_PROPERTY-LATERAL-SUPPORT-01",
      "statement": "Lateral support protects land in its natural condition. If the neighbor's excavation would have made the land subside even without the building's weight, the excavator is liable for the resulting building damage; if only the building's added weight caused the subsidence, negligence or an acquired support right would matter.",
      "type": "distinction",
      "unlocks": "A over B, C, and D",
      "trigger": "excavation causes subsidence next to an improved lot, and the stem says whether the land would have subsided without the improvement",
      "tested_choice": "B",
      "authority": "Common-law lateral support doctrine",
      "last_minute_review": true,
      "status": "proposed_due_to_anchor_gap"
    }
  ],
  "silver_keys": [
    {
      "id": "SK-REAL_PROPERTY-LATERAL-SUPPORT-FACT-01",
      "statement": "In an excavation/subsidence answer array, find the land-without-the-building fact before chasing negligence, permits, zoning, or prescription.",
      "type": "trap_spotting",
      "navigates": "the prescription and permit-compliance traps",
      "trigger": "the stem includes excavation, subsidence, improvements, and a fact saying whether the land would have fallen without the structure",
      "tested_choice": "B",
      "outline_code": "81020901",
      "last_minute_review": true
    }
  ],
  "analyzer_notes": "drift_audit: This is an anchor gap, not a hard-structural solve. The lateral-support rule must be added as a Gold Key before student-facing C3 can call B/C/D wrong. transformed_from: none. letter_map: not applicable; original BarMatrix item analyzed without transform."
}
```

## program_elements

```json
{
  "question_id": "15023",
  "program_frame": "Real Property lateral-support item requiring a new Gold Key.",
  "traps": [
    {
      "choice": "B",
      "name": "prescription-period bait",
      "trap_type": "bait_doctrine",
      "why_attractive": "The stem gives 12 years of building use and a 10-year prescription period, inviting students to make prescription the reason the landowner wins.",
      "repair": "Ask first whether the land itself would have subsided without the building."
    },
    {
      "choice": "C",
      "name": "urban-land invented distinction",
      "trap_type": "flat_misstatement",
      "why_attractive": "The subdivision and industrial zoning facts make urban/regulated land feel relevant.",
      "repair": "Do not let zoning labels replace the support-right test."
    },
    {
      "choice": "D",
      "name": "permit-compliance wrong element",
      "trap_type": "wrong_element",
      "why_attractive": "The stem repeatedly says both projects were lawfully permitted and code-compliant.",
      "repair": "Separate no-negligence facts from strict lateral-support liability."
    }
  ],
  "tensions": [
    {
      "axis": "natural-land support versus building-only support",
      "resolves_to": "natural land would have subsided",
      "winning_choice": "A",
      "defeats_choices": ["B", "C", "D"]
    },
    {
      "axis": "inherent support right versus acquired prescriptive right",
      "resolves_to": "inherent support right controls",
      "winning_choice": "A",
      "defeats_choice": "B"
    },
    {
      "axis": "private support right versus public permit compliance",
      "resolves_to": "private support right controls",
      "winning_choice": "A",
      "defeats_choice": "D"
    }
  ],
  "remediation_card": {
    "id": "REM-RP-LATERAL-SUPPORT-15023",
    "title": "Lateral Support: Land First, Building Second",
    "signal": "Adjoining excavation causes subsidence of improved land.",
    "move": "Ask whether the land would have subsided without the building.",
    "tiny_anchor": "Natural land collapse equals excavator liability; building-only collapse requires negligence or acquired support right.",
    "drill": "Build three mini-stems: natural land collapses, building-only weight causes collapse, and permit-compliant excavation causes natural land collapse."
  },
  "red_zones": [
    "Lateral support",
    "Improvement caveat",
    "Prescription-period bait",
    "Permit compliance versus private property rights",
    "Negligence facts inside strict-liability property rules"
  ]
}
```

## program_intelligence

```json
{
  "question_id": "15023",
  "wrong_answer_recovery": {
    "B": {
      "diagnosis": "Student treated 12 years plus 10-year prescription period as the controlling route.",
      "repair_task": "Drill inherent natural lateral support versus acquired support for improvements.",
      "micro_script": "Land first. If the land would fall without the building, no prescription route is needed."
    },
    "C": {
      "diagnosis": "Student accepted an invented urban/rural distinction.",
      "repair_task": "Drill support rights using excavation/subsidence facts only.",
      "micro_script": "Zoning is scenery. The support question is land-collapse."
    },
    "D": {
      "diagnosis": "Student treated lawful permits and lack of negligence as a complete defense.",
      "repair_task": "Drill strict support liability versus negligence framing.",
      "micro_script": "Permit compliance is not the same as preserving natural support."
    }
  },
  "drill_seeds": [
    {
      "id": "DRILL-RP-LATERAL-01",
      "prompt": "Neighbor excavates; adjoining land with a warehouse subsides; evidence shows the land would have fallen even without the warehouse. Who wins?",
      "target": "Landowner wins under lateral support."
    },
    {
      "id": "DRILL-RP-LATERAL-02",
      "prompt": "Neighbor excavates carefully; only the extra weight of a recently built warehouse causes subsidence. No negligence. Who wins?",
      "target": "Neighbor wins absent negligence or acquired support right."
    },
    {
      "id": "DRILL-RP-LATERAL-03",
      "prompt": "Neighbor excavates with a valid permit; natural land next door collapses. Does the permit defeat liability?",
      "target": "No. Permit compliance does not defeat lateral-support liability."
    },
    {
      "id": "DRILL-RP-LATERAL-04",
      "prompt": "A building has stood longer than the prescription period, but the land would have subsided without it. Which fact matters first?",
      "target": "The natural-land subsidence fact matters first."
    }
  ],
  "trap_tags": [
    "lateral_support",
    "natural_land_vs_improvements",
    "prescription_bait",
    "permit_compliance_bait",
    "wrong_frame_real_property"
  ],
  "component_routing": {
    "primary_component": "Real Property lateral support Gold Key",
    "secondary_component": "Issue-Sense trap spotting",
    "cut_family": "ISSUE_SENSE and EAR_FALSITY",
    "clash_family": "natural land versus building-only support",
    "call_family": "not needed after anchor"
  },
  "gold_keys": [
    {
      "id": "GK-REAL_PROPERTY-LATERAL-SUPPORT-01",
      "statement": "Lateral support protects land in its natural condition. If the neighbor's excavation would have made the land subside even without the building's weight, the excavator is liable for the resulting building damage; if only the building's added weight caused the subsidence, negligence or an acquired support right would matter.",
      "type": "distinction",
      "unlocks": "A over B, C, and D",
      "trigger": "excavation causes subsidence next to an improved lot, and the stem says whether the land would have subsided without the improvement",
      "tested_choice": "B",
      "authority": "Common-law lateral support doctrine",
      "last_minute_review": true,
      "status": "proposed_due_to_anchor_gap"
    }
  ],
  "silver_keys": [
    {
      "id": "SK-REAL_PROPERTY-LATERAL-SUPPORT-FACT-01",
      "statement": "In an excavation/subsidence answer array, find the land-without-the-building fact before chasing negligence, permits, zoning, or prescription.",
      "type": "trap_spotting",
      "navigates": "the prescription and permit-compliance traps",
      "trigger": "the stem includes excavation, subsidence, improvements, and a fact saying whether the land would have fallen without the structure",
      "tested_choice": "B",
      "outline_code": "81020901",
      "last_minute_review": true
    }
  ],
  "crossovers": [
    {
      "area": "Torts",
      "risk": "Student focuses on non-negligent excavation and misses strict lateral-support liability.",
      "guardrail": "No negligence does not end a natural-land support claim."
    },
    {
      "area": "Land use / zoning",
      "risk": "Student treats permits and industrial zoning as dispositive.",
      "guardrail": "Public authorization does not eliminate private support rights."
    },
    {
      "area": "Adverse possession / prescription",
      "risk": "Student lets the 12-year and 10-year facts control.",
      "guardrail": "Prescription is secondary when natural lateral support already decides the case."
    }
  ],
  "outline_mastery": [
    {
      "outline_code": "81020901",
      "label": "Non-Possessory Rights and Interests in Land > Support Rights > Lateral",
      "mastery_target": "Recognize when excavation removes support from land in its natural condition."
    },
    {
      "outline_code": "81020900",
      "label": "Non-Possessory Rights and Interests in Land > Support Rights",
      "mastery_target": "Separate lateral support from subjacent support and from acquired support rights."
    },
    {
      "outline_code": "81020000",
      "label": "Non-Possessory Rights and Interests in Land",
      "mastery_target": "Classify support rights as private property rights, not zoning or permit questions."
    }
  ],
  "analytics": {
    "dominant_trap_choice": "B",
    "dominant_trap_pct": 15,
    "percent_correct": 74,
    "bank_validation_verdict": "PASS",
    "case_study_verdict": "ANCHOR_GAP",
    "confidence": "HUMAN_REVIEW",
    "review_queue": true
  }
}
```

[1]: https://www.law.cornell.edu/wex/lateral_support?utm_source=chatgpt.com "lateral support | Wex | US Law | LII / Legal Information Institute"
[2]: https://www.stimmel-law.com/en/articles/lateral-and-subjacent-support-protecting-foundations?utm_source=chatgpt.com "Lateral and Subjacent Support - Protecting the Foundations | Stimmel Law"

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "15023"
  question_id: "15023"
  subject: "REAL_PROPERTY"
  topic: "Rights in Land"
  subtopic: "Support Rights - Lateral"
  outline_code: "81020901"
  official_key: "A"
transform_provenance:
  transformed_from: "21410"
  variant_slug: "21410"
  original_key_letter: "UNKNOWN"
  new_key_letter: "A"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_GAP"
  confidence: "HUMAN_REVIEW"
  residual: "A"
distilled_core_question: "Distilled core question not available in source file."
review_truth: "Review truth not available in source file."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 15023; source 21410.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject REAL_PROPERTY; topic Rights in Land; subtopic Support Rights - Lateral.
4. **distilled_core_question:** Distilled core question not available in source file.
5. **call_and_prediction:** Credited answer: A.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 81020901.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** A
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Review truth not available in source file.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 81020901.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Review truth not available in source file.
```

### 3. c3_annotation

```json
{
  "question_id": "15023",
  "subject": "REAL_PROPERTY",
  "credited_answer": "A",
  "outline_code": "81020901",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "c3": {
    "verdict": "ANCHOR_GAP",
    "residual": "A",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "HUMAN_REVIEW",
    "tension_axis": null,
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "repair_normalized",
    "difficulty": "UNKNOWN",
    "distractors": [],
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 21410; letter_map: see Letter Map section",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "15023",
  "subject": "REAL_PROPERTY",
  "outline_code": "81020901",
  "distilled_core_question": "Distilled core question not available in source file.",
  "review_truth": "Review truth not available in source file.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-21410",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "Review truth not available in source file.",
    "trap": "See preserved traps when present.",
    "confidence": "HUMAN_REVIEW"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "15023",
  "subject": "REAL_PROPERTY",
  "outline_code": "81020901",
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
    "placement": "81020901",
    "this_item_teaches": "Review truth not available in source file.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
