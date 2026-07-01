---
qid: "15012"
transformed_from: "18550"
subject: "REAL_PROPERTY"
topic: "Rights in Land"
subtopic: "Easements"
outline_code: "81020102"
key: "C"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "D"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "Review truth not available in source file."
---
```yaml
barmatrix_row:
  qid: "15012"
  internal_id: null
  subject: "REAL_PROPERTY"
  subject_display: "Real Property"
  topic: "Rights in Land"
  source_subtopic: null
  subtopic: "Easements"
  outline_code: "81020102"
  outline_node: "Non-Possessory Rights and Interests in Land > Easements > Creation"
  outline_code_source: "OUTLINE_CODES_COMPLETE.md"
  percent_correct:
    value: 90
    provenance: "source_row"
  selection_percentages:
    A:
      value: 3
      provenance: "source_row"
    B:
      value: 3
      provenance: "source_row"
    C:
      value: 90
      provenance: "source_row"
    D:
      value: 4
      provenance: "source_row"
  dominant_trap: "D"
  question: >-
    Two adjacent, two-story, commercial buildings were owned by a businessman. The first floors of both buildings were occupied by various retail establishments. The second floors were rented to various other tenants. Access to the second floor of each building was reached by a common stairway located entirely in Building 1. While the buildings were being used in this manner, the businessman sold Building 1 to a friend by warranty deed which made no mention of any rights concerning the stairway. About two years later the businessman sold Building 2 to a co-worker. The stairway continued to be used by the occupants of both buildings. The stairway became unsafe as a consequence of regular wear and tear. The owner of Building 2 entered upon Building 1 and began the work of repairing the stairway. The owner of Building 1 demanded that the owner of Building 2 discontinue the repair work and vacate Building 1. When the owner of Building 2 refused, the owner of Building 1 brought an action to enjoin the owner of Building 2 from continuing the work. Judgment should be for
  call: "Judgment should be for whom?"
  choices:
    A: "the owner of Building 1, because the owner of Building 2 has no rights in the stairway."
    B: "the owner of Building 1, because the owner of Building 2's rights in the stairway do not extend beyond the normal life of the existing structure."
    C: "the owner of Building 2, because he has an easement in the stairway and an implied right to keep the stairway in repair."
    D: "the owner of Building 2, because he has a right to take whatever action is necessary to protect himself from possible tort liability to persons using the stairway."
  official_key: "C"
  correct_answer_explanation: "C is correct. The facts indicate that the second floor of Building 2 is only accessible by using the stairway in Building 1. As such, the owner of Building 2 has an implied easement by necessity."
  wrong_answer_explanations:
    A: "A is incorrect. The holder of an easement has the right to enter the land to make repairs to that easement."
    B: "B is incorrect. This answer choice is irrelevant to the facts presented; the question does not indicate that the normal life of the existing buildings has expired."
    D: "D is incorrect. The owner of Building 2's rights with regard to the stairway are not unlimited; he may not take whatever action is necessary."

source_stack:
  - "MBE.xlsx row 15012"
  - "2026_BM_PREP.xlsx row 15012 for supplemental pick rates"
  - "2026_BM_PREP_C3_TAGGED_v2_manual_cards.xlsx C3_Tagged_v1 row 15012"
  - "controlled_vocabularies.md"
  - "OUTLINE_CODES_COMPLETE.md"
  - "C3 Lessons 1, 2, 4, 7, 8, 9, 12, 13, 14"
  - "C3 Master Deck RP-05 Easements"
  - "Official legal explanation as lawyer confirmation only"
  - "Legal authority check: implied easement by necessity and easement-holder repair right"

existing_c3_tags:
  found: true
  phase_guess: "CLASH"
  calibration_tag: "ANCHOR-ASSISTED candidate"
  clash_structure: "high-overlap pair A/C"
  treatment: "Confirmed as anchor-assisted. The A/C fight is not hard structural because the implied-easement rule is a Real Property anchor."

student_access_contract:
  controlling_test: "Could a smart 10-year-old who completed only the C3 lessons, subject overlays, and taught tiny anchors identify this choice's problem without outside legal doctrine?"
  access_limit:
    universal_lessons:
      - "TRUE and RESPONSIVE"
      - "CUT -> CLASH -> CALL"
      - "Predict before you peek"
      - "Overclaim"
      - "Not-responsive molds"
      - "Clash axis"
      - "Anchor deck"
      - "Calibration"
    taught_anchors:
      - id: "RP-05"
        label: "Easements"
        statement: "Easements can arise by express grant, implication, necessity, or prescription; an appurtenant easement benefits land and runs with it."
      - id: "GK-RP-EASEMENT-NECESSITY-REPAIR-01"
        label: "Implied easement plus repair right"
        statement: "Common ownership plus necessity can create an implied easement; the easement holder may make reasonable repairs needed to keep the easement usable."
  access_assessment: "ANCHOR_ASSISTED"
  forbidden_moves:
    - "Do not pretend a deed-silence trap is pure structure."
    - "Do not call A false without the implied-easement anchor."
    - "Do not teach a full easements outline."
    - "Do not let D's correct party outcome hide the overbroad reason."

stem_parse:
  parties:
    original_owner: "businessman"
    building_1_owner: "friend / owner of Building 1"
    building_2_owner: "co-worker / owner of Building 2"
  property_layout:
    building_1: "contains the common stairway"
    building_2: "needs the stairway to reach its second floor"
  original_use: "Both buildings' second-floor tenants used the common stairway before severance."
  conveyance_sequence:
    first: "Businessman sold Building 1 by warranty deed with no stairway language."
    second: "Businessman later sold Building 2."
  later_event: "The stairway became unsafe from regular wear and tear."
  disputed_action: "Owner of Building 2 entered Building 1 to repair the stairway."
  remedy_sought: "Owner of Building 1 seeks an injunction to stop the repair work."
  call_type: "judgment / party winner"
  negative_stem_inversion: false
  adjacent_call_trap: "The call is not whether Building 2 may do anything it thinks necessary; it is whether Building 2 has a property right to use and reasonably repair the stairway."

trigger_facts:
  - fact: "Both buildings were once owned by the same businessman."
    access_label: "student_visible"
    role: "common-ownership trigger"
  - fact: "The stairway was already used to access the second floors before Building 1 was sold."
    access_label: "student_visible"
    role: "existing-use trigger"
  - fact: "The stairway is located entirely in Building 1."
    access_label: "student_visible"
    role: "servient-estate fact"
  - fact: "The second floor of Building 2 can be accessed only by that stairway."
    access_label: "student_visible"
    role: "necessity splitter"
  - fact: "The deed to Building 1 made no mention of stairway rights."
    access_label: "student_visible"
    role: "deed-silence trap"
  - fact: "The stairway became unsafe from regular wear and tear."
    access_label: "student_visible"
    role: "repair-right trigger"
  - fact: "Building 2's owner began repairing the stairway."
    access_label: "student_visible"
    role: "reasonable-maintenance fact"

c3_routing:
  subject_fit: "Real Property = property-status label plus scope-of-right boundary."
  governing_law_type: "RULE"
  deciding_phase: "CLASH"
  primary_anchor: "RP-05 Easements"
  method_class: "anchor_assisted"
  confidence: "ANCHOR_ASSISTED"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "C"
  fork_type: null
  fork_note: "No fork. The stem supplies common ownership, necessity, continued use, and repair facts."

answer_array:
  architecture: "easement-existence plus scope-of-repair array"
  geometry: "A/C are the central no-rights versus easement-and-repair fight. D has the same winning party as C but an overbroad reason. B is a duration/termination distractor with no current-fact trigger."
  dominant_trap: "D"
  dominant_trap_reason: "D selects the correct party but gives an unlimited tort-liability self-help rationale."
  clash_axis: "Does Building 2 have an implied easement in the stairway, and if so is the current work within a reasonable repair right?"
  splitting_fact: "The stairway was the only access to Building 2's second floor and existed while both buildings were under common ownership."
  winner: "C"

choice_walkthroughs:
  A:
    filter_broken: "NOT_TRUE"
    mold_code: "flat_misstatement"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "misstated_rule"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "deed-silence no-rights trap"
    c3_signal: "A says deed silence means no stairway rights. The anchor tells the student that an easement can be implied even when the deed is silent."
    true_responsive_version: "Owner 1 would win if Building 2 had no implied easement because there was no common ownership or no necessity."
    lawyer_confirmation: "The facts support an implied easement by necessity, so the statement that Building 2 has no rights in the stairway is wrong."
  B:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "fact_not_in_evidence"
      - "answer_to_different_question"
      - "sounds_lawyerly"
    method_class: "anchor_assisted"
    student_label: "duration fact not in evidence"
    c3_signal: "B talks about the normal life of the structure. The stem says the stairway is worn and needs repair, not that the structure's life has ended."
    true_responsive_version: "Owner 1 might have a duration or termination argument if the necessity had ended or the relevant structure no longer existed."
    lawyer_confirmation: "Easement-duration limits do not decide this record; the necessary access still exists and the dispute is about reasonable repair."
  C:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "implied easement plus reasonable repair survivor"
    c3_signal: "C matches both decisive facts: Building 2 has the access easement, and repair is within the limited easement right."
    true_responsive_version: "Already true and responsive."
    lawyer_confirmation: "Building 2 has an implied easement by necessity and an implied right to make reasonable repairs needed to keep that easement usable."
  D:
    filter_broken: "NOT_TRUE"
    mold_code: "tiered_absolute"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "overbroad_rule"
      - "wrong_remedy"
      - "moral_common_sense_answer"
      - "bar_exam_bait"
    method_class: "heuristic_structural"
    student_label: "right-result wrong-reason overclaim"
    c3_signal: "D says 'whatever action is necessary.' That is an overclaim. Easement repair rights are limited, not unlimited self-help."
    true_responsive_version: "Owner 2 may take reasonable action necessary to repair and maintain the stairway within the scope of the easement."
    lawyer_confirmation: "The result favors Building 2, but not because of unlimited tort-liability self-help. The correct reason is the limited easement repair right."

residual_answer:
  answer: "C"
  why_survives: "It is the only choice that matches the source of the right and the limit on the remedy: implied easement plus reasonable repair."
  confidence_band: "anchor-assisted high confidence"

legal_leak_audit:
  student_accessible_claims:
    - claim: "The answer array fights over whether Building 2 has a property right in the stairway."
      status: "passes through answer-array structure"
    - claim: "D is overbroad because it says 'whatever action is necessary.'"
      status: "passes through Lesson 4 overclaim"
    - claim: "B uses a fact not in the stem: expiration of the structure's normal life."
      status: "passes through Issue-Sense"
  anchor_assisted_claims:
    - claim: "An easement can be implied by necessity despite deed silence."
      anchor: "RP-05 and GK-RP-EASEMENT-NECESSITY-REPAIR-01"
    - claim: "An easement holder may enter to make reasonable repairs."
      anchor: "GK-RP-EASEMENT-NECESSITY-REPAIR-01"
  lawyer_only_claims:
    - claim: "Exact Restatement/common-law formulation of implied easement by necessity and maintenance duties."
      quarantine: "lawyer_confirmation only"
  drift_audit: "The easement doctrine is labeled anchor-assisted. Only D's overbroad wording is treated as structural."

gold_keys:
  - id: "GK-RP-EASEMENT-NECESSITY-REPAIR-01"
    statement: "When commonly owned parcels are severed and one parcel needs an existing access route through the other, an easement may be implied by necessity. The easement holder may make reasonable repairs needed to keep the easement usable."
    type: "rule"
    unlocks: "the deed-silence no-rights trap and the repair-right issue"
    trigger: "common owner, severance, deed silence, only access through the other parcel, later repair"
    tested_choice: "A"
    authority: "Common-law implied easement by necessity; Restatement (Third) of Property: Servitudes § 4.13"
    last_minute_review: true

silver_keys:
  - id: "SK-RP-EASEMENT-REPAIR-ARRAY-01"
    statement: "When one answer says no rights, one says exact easement plus repair, and one says unlimited self-help, split the array into existence of the easement and scope of the repair right."
    type: "answer_array"
    navigates: "A/C rights fight and D's right-party wrong-reason trap"
    trigger: "deed silence plus continued use plus repair work"
    tested_choice: "D"
    outline_code: "81020102"
    last_minute_review: true

remediation:
  card_id: "REM-RP-EASEMENT-NECESSITY-REPAIR-15012"
  title: "Silent Deed Does Not End the Inquiry"
  signal: "Common owner splits property; access route sits on one parcel but benefits the other."
  student_move: "Ask whether the easement can be implied, then ask whether the action is a reasonable repair or an unlimited expansion."
  tiny_rule: "Implied easement by necessity can exist without deed language; repair right is reasonable, not unlimited."
  trap: "Picking no-rights because the deed is silent, or picking unlimited self-help because the party faces practical risk."
  confidence: "ANCHOR_ASSISTED"

case_study_output:
  final_student_script: "The deed is silent, but both buildings were once commonly owned, and Building 2 needs the stairway for access. That gives Building 2 an implied easement. Repairing the worn stairway is within the reasonable repair right. Pick C."
  residual: "C"
  verdict: "ANCHOR_SOLVE"

quality_control:
  qid_consistent: true
  outline_code_verified: true
  controlled_vocab_checked: true
  credited_answer_has_no_filter_broken: true
  three_distractors_each_break_one_filter: true
  residual_equals_official_key: true
  bank_validation_verdict: "PASS"
  confidence_matches_method_class: true
  legal_leak_quarantined: true

analytics_hooks:
  dominant_trap_choice: "D"
  dominant_trap_pct: 4
  primary_component: "RP-05 Easements"
  drill_family: "implied easement by necessity plus reasonable repair"
  review_queue: false
```

## 2. Student-facing C3 case study

### 1. program_frame

This is a **Real Property easement** question.

The choices are built around two questions:

**Does Building 2 have any stairway right at all?**
**If yes, how far does that right go?**

The winning answer must get both parts right.

### 2. student_access_test

This is **ANCHOR_SOLVE**, not hard structure.

A student can see that the deed was silent, that Building 2 needs the stairway, and that D says too much. But the student needs a taught Real Property anchor:

**A silent deed does not end the inquiry. An easement can be implied by necessity, and the easement holder can make reasonable repairs.**

### 3. question_data

**Question ID:** 15012
**Subject:** Real Property
**Topic:** Rights in Land
**Outline code:** 81020102
**Official key:** C
**Percent correct:** 90%
**Dominant wrong-answer trap:** D, because it picks the right party but gives an overbroad reason.

### 4. call_and_prediction

The call asks who should win the injunction action.

Prediction before choices:

Building 2 should win. The stairway was the only access to Building 2’s second floor. The buildings were once commonly owned. The right can be implied, and repairing the worn stairway is within the reasonable repair right.

Prediction: **Owner of Building 2, because he has an easement and may repair it.**

### 5. trigger_facts

| Fact                                                          | Why it matters                                      |
| ------------------------------------------------------------- | --------------------------------------------------- |
| Same businessman once owned both buildings                    | Common-ownership trigger                            |
| Stairway was used before the first conveyance                 | Existing-use / necessity context                    |
| Stairway is entirely in Building 1                            | Building 1 is the burdened property                 |
| Building 2’s second floor is accessible only by that stairway | Necessity fact                                      |
| Deed to Building 1 did not mention stairway rights            | Deed-silence trap                                   |
| Stairway became unsafe from wear and tear                     | Repair-right trigger                                |
| Building 2’s owner began repairing it                         | Limited maintenance action, not unlimited expansion |

### 6. governing_c3_lane

**Lane:** Real Property easement status and scope.
**C3 move:** CLASH with anchor support.
**Axis:** no stairway right versus implied easement plus reasonable repair.
**Splitting facts:** common ownership, severance, only access, and repair of wear-and-tear damage.

Lawyer confirmation: an implied easement by necessity is generally built from prior unity of ownership and necessity at severance; the easement holder’s repair/maintenance right is limited to keeping the easement usable, not expanding it without limit. ([Legal Information Institute][1])

### 7. choice_by_choice_walkthrough

#### A. The owner of Building 1, because the owner of Building 2 has no rights in the stairway.

1. **Student-accessible C3 signal:**
   A stops at deed silence. But the stem gives common ownership and necessity. That triggers the easement anchor.

2. **Student label:**
   **Deed-silence no-rights trap.**

3. **What a true/responsive version would look like:**
   “Owner of Building 1, because Building 2 had another access route and no implied easement arose.”

4. **Lawyer confirmation:**
   The deed did not need to expressly mention the stairway if an easement was implied by necessity from the severance and access facts. ([Legal Information Institute][1])

#### B. The owner of Building 1, because the owner of Building 2’s rights in the stairway do not extend beyond the normal life of the existing structure.

1. **Student-accessible C3 signal:**
   B talks about a duration limit, but the stem does not say the normal life of the structure has expired. It says the stairway became unsafe and needs repair.

2. **Student label:**
   **Duration fact not in evidence.**

3. **What a true/responsive version would look like:**
   “Owner of Building 1, because the necessity had ended or the easement had otherwise terminated.”

4. **Lawyer confirmation:**
   Easement termination or duration is not the live issue on these facts. The necessity and use remain; the dispute is about reasonable repair.

#### C. The owner of Building 2, because he has an easement in the stairway and an implied right to keep the stairway in repair.

1. **Student-accessible C3 signal:**
   C matches both halves of the problem: the property right exists, and the repair is within the limited scope of that right.

2. **Student label:**
   **Implied easement plus repair survivor.**

3. **What a true/responsive version would look like:**
   This already is the true and responsive version.

4. **Lawyer confirmation:**
   Building 2 has an implied easement by necessity, and the owner of the dominant estate may make reasonable repairs to keep the easement usable. ([Legal Information Institute][1])

#### D. The owner of Building 2, because he has a right to take whatever action is necessary to protect himself from possible tort liability to persons using the stairway.

1. **Student-accessible C3 signal:**
   D picks the right party but gives the wrong reason. “Whatever action is necessary” is too broad. The right is a reasonable easement-repair right, not unlimited self-help.

2. **Student label:**
   **Right-result wrong-reason overclaim.**

3. **What a true/responsive version would look like:**
   “Owner of Building 2, because he may make reasonable repairs necessary to maintain the easement.”

4. **Lawyer confirmation:**
   Easement rights remain limited by scope and reasonableness. The dominant estate may maintain the easement, but not take unlimited action just because tort liability might be possible. ([Justia][2])

### 8. residual_answer

**Residual answer: C.**

A loses because an easement can be implied despite deed silence.
B loses because it uses a duration fact not supplied by the stem.
D loses because it overclaims the repair right.

C survives because it states the exact right: **easement plus reasonable repair.**

### 9. legal_leak_audit

This is not a pure structural question. The implied-easement rule is a Real Property anchor.

**Student-accessible without doctrine:**
D overclaims with “whatever action is necessary.”
B uses a fact not shown by the stem.

**Anchor-assisted:**
A is wrong because an easement can be implied by necessity.
C wins because the easement holder may reasonably repair the easement.

**Lawyer-only:**
Exact Restatement language and common-law variations stay in lawyer confirmation.

### 10. final_student_script

The deed is silent, but both buildings were once commonly owned, and Building 2 needs the stairway for access. That gives Building 2 an implied easement. Repairing the worn stairway is within the reasonable repair right. Pick **C**.

### 11. remediation_card

**Card:** Silent Deed Does Not End the Inquiry
**Signal:** Common owner splits property; one parcel needs an access route through the other.
**Move:** Ask whether the easement can be implied. Then limit the remedy to reasonable repair.
**Tiny rule:** Implied easement by necessity can exist without deed language; repair right is reasonable, not unlimited.
**Trap:** “No deed language, no rights” or “right party, unlimited self-help.”

### 12. qa_checklist

| Check                                                  | Result |
| ------------------------------------------------------ | ------ |
| Official key residual matches C3 residual              | Pass   |
| Exactly three distractors break one filter             | Pass   |
| Credited answer breaks no filter                       | Pass   |
| Deed-silence doctrine labeled anchor-assisted          | Pass   |
| D treated as overclaim, not as a second correct answer | Pass   |
| Outline code verified                                  | Pass   |

### 13. wrong_answer_recovery_paths

**If you picked A:**
You stopped at the silent deed. Add the implied-easement question: common owner, severance, necessity.

**If you picked B:**
You used a fact the stem did not give. The stairway is worn, not expired.

**If you picked D:**
You found the correct party but accepted an unlimited reason. On the MBE, a correct result with a bad “because” still loses.

### 14. outline_mastery_map

| Code     | Node                                                               | Mastery task                                                                       |
| -------- | ------------------------------------------------------------------ | ---------------------------------------------------------------------------------- |
| 81020102 | Non-Possessory Rights and Interests in Land > Easements > Creation | Recognize implied easement by necessity from common ownership and necessary access |
| 81020102 | Non-Possessory Rights and Interests in Land > Easements > Creation | Do not treat deed silence as conclusive when implication facts are supplied        |
| 81020102 | Non-Possessory Rights and Interests in Land > Easements > Creation | Connect the implied easement to the limited repair right                           |

### 15. crossover_intersection_map

**Torts crossover:** D uses tort-liability language to pull the student away from the property-right basis.

**Contracts/deeds crossover:** The warranty deed’s silence is not dispositive when a property interest is implied by law.

**C3 overclaim crossover:** “Whatever action is necessary” is an answer-text overclaim.

## 3. c3_annotation

```json
{
  "question_id": "15012",
  "subject": "REAL_PROPERTY",
  "topic": "Rights in Land",
  "subtopic": "Easements",
  "outline_code": "81020102",
  "outline_node": "Non-Possessory Rights and Interests in Land > Easements > Creation",
  "official_key": "C",
  "credited_answer": "C",
  "case_study_verdict": "ANCHOR_SOLVE",
  "bank_validation_verdict": "PASS",
  "confidence": "ANCHOR_ASSISTED",
  "governing_law_type": "RULE",
  "deciding_phase": "CLASH",
  "method_class": "anchor_assisted",
  "residual": "C",
  "trigger_facts": [
    "Both buildings were once owned by the same businessman.",
    "The stairway was located entirely in Building 1.",
    "The stairway provided the only access to Building 2's second floor.",
    "The deed to Building 1 was silent about the stairway.",
    "The stairway became unsafe from regular wear and tear.",
    "Building 2's owner entered to repair the stairway."
  ],
  "answer_choices": {
    "A": {
      "text": "the owner of Building 1, because the owner of Building 2 has no rights in the stairway.",
      "filter_broken": "NOT_TRUE",
      "mold_code": "flat_misstatement",
      "mold_family": "EAR_FALSITY",
      "bait_architecture_code": "wrong_frame",
      "method_class": "anchor_assisted",
      "wrong_answer_architecture_tags": [
        "misstated_rule",
        "common_student_myth",
        "bar_exam_bait"
      ]
    },
    "B": {
      "text": "the owner of Building 1, because the owner of Building 2's rights in the stairway do not extend beyond the normal life of the existing structure.",
      "filter_broken": "NOT_RESPONSIVE",
      "mold_code": "wrong_element",
      "mold_family": "ISSUE_SENSE",
      "bait_architecture_code": "wrong_frame",
      "method_class": "anchor_assisted",
      "wrong_answer_architecture_tags": [
        "fact_not_in_evidence",
        "answer_to_different_question",
        "sounds_lawyerly"
      ]
    },
    "C": {
      "text": "the owner of Building 2, because he has an easement in the stairway and an implied right to keep the stairway in repair.",
      "filter_broken": null,
      "mold_code": null,
      "mold_family": null,
      "bait_architecture_code": null,
      "method_class": "anchor_assisted",
      "wrong_answer_architecture_tags": [
        "correct_answer"
      ]
    },
    "D": {
      "text": "the owner of Building 2, because he has a right to take whatever action is necessary to protect himself from possible tort liability to persons using the stairway.",
      "filter_broken": "NOT_TRUE",
      "mold_code": "tiered_absolute",
      "mold_family": "EAR_OVERCLAIM",
      "bait_architecture_code": "wrong_frame",
      "method_class": "heuristic_structural",
      "wrong_answer_architecture_tags": [
        "overbroad_rule",
        "wrong_remedy",
        "moral_common_sense_answer",
        "bar_exam_bait"
      ]
    }
  },
  "gold_keys": [
    {
      "id": "GK-RP-EASEMENT-NECESSITY-REPAIR-01",
      "statement": "When commonly owned parcels are severed and one parcel needs an existing access route through the other, an easement may be implied by necessity. The easement holder may make reasonable repairs needed to keep the easement usable.",
      "type": "rule",
      "unlocks": "the deed-silence no-rights trap and the repair-right issue",
      "trigger": "common owner, severance, deed silence, only access through the other parcel, later repair",
      "tested_choice": "A",
      "authority": "Common-law implied easement by necessity; Restatement (Third) of Property: Servitudes § 4.13",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-RP-EASEMENT-REPAIR-ARRAY-01",
      "statement": "When one answer says no rights, one says exact easement plus repair, and one says unlimited self-help, split the array into existence of the easement and scope of the repair right.",
      "type": "answer_array",
      "navigates": "A/C rights fight and D's right-party wrong-reason trap",
      "trigger": "deed silence plus continued use plus repair work",
      "tested_choice": "D",
      "outline_code": "81020102",
      "last_minute_review": true
    }
  ],
  "pick_rates": {
    "A": {
      "value": 3,
      "provenance": "source_row"
    },
    "B": {
      "value": 3,
      "provenance": "source_row"
    },
    "C": {
      "value": 90,
      "provenance": "source_row"
    },
    "D": {
      "value": 4,
      "provenance": "source_row"
    }
  },
  "analyzer_notes": "drift_audit: The implied-easement and repair-right analysis is anchor-assisted, not hard structural. Existing C3 tag CLASH / ANCHOR-ASSISTED candidate confirmed. transformed_from: none. letter_map: not applicable."
}
```

## 4. program_elements

```json
{
  "question_id": "15012",
  "traps": [
    {
      "choice": "A",
      "name": "Deed-silence no-rights trap",
      "trap_type": "wrong_frame",
      "why_it_pulls": "The deed to Building 1 made no mention of the stairway, so no-rights feels clean.",
      "repair": "Check whether the easement can be implied from common ownership and necessity."
    },
    {
      "choice": "B",
      "name": "Duration fact not in evidence",
      "trap_type": "wrong_frame",
      "why_it_pulls": "The answer sounds like a sophisticated property limitation.",
      "repair": "Ask whether the stem actually says the structure's normal life has expired. It does not."
    },
    {
      "choice": "D",
      "name": "Right-result wrong-reason overclaim",
      "trap_type": "wrong_frame",
      "why_it_pulls": "It chooses the correct winning party and gives a practical safety rationale.",
      "repair": "Reject unlimited language. The right is reasonable repair of the easement, not whatever action seems necessary."
    }
  ],
  "tensions": [
    {
      "axis": "no express right versus implied easement",
      "splitting_fact": "Common owner severed the buildings and Building 2 needed the stairway for access.",
      "winner": "C over A"
    },
    {
      "axis": "reasonable repair right versus unlimited self-help",
      "splitting_fact": "Building 2's owner was repairing a worn stairway, but the legal basis is the easement, not tort-liability self-protection.",
      "winner": "C over D"
    },
    {
      "axis": "current repair dispute versus future termination/duration issue",
      "splitting_fact": "The stem gives wear and tear, not expiration of the structure's normal life.",
      "winner": "C over B"
    }
  ],
  "remediation_card": {
    "id": "REM-RP-EASEMENT-NECESSITY-REPAIR-15012",
    "title": "Silent Deed Does Not End the Inquiry",
    "signal": "Common owner splits property; access route sits on one parcel but benefits the other.",
    "student_move": "Ask whether the easement can be implied, then ask whether the action is a reasonable repair or an unlimited expansion.",
    "tiny_rule": "Implied easement by necessity can exist without deed language; repair right is reasonable, not unlimited.",
    "trap": "Picking no-rights because the deed is silent, or picking unlimited self-help because the party faces practical risk.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zones": [
    "silent deed versus implied easement",
    "easement by necessity",
    "dominant estate repair rights",
    "right party with wrong reason",
    "overbroad self-help language"
  ]
}
```

## 5. program_intelligence

```json
{
  "question_id": "15012",
  "wrong_answer_recovery": {
    "A": "You stopped at the silent deed. Add the implied-easement checkpoint: common ownership, severance, and necessity.",
    "B": "You accepted a sophisticated-sounding duration point. The stem gives no fact that the structure's normal life has ended.",
    "D": "You picked the correct party but accepted an overbroad reason. Replace unlimited tort-liability self-help with a limited easement repair right."
  },
  "drill_seeds": [
    {
      "id": "DRILL-RP-EASEMENT-01",
      "prompt": "Common owner sells Parcel 1 first; Parcel 2 needs an existing route across Parcel 1 for access; deed is silent.",
      "answer": "Check implied easement by necessity."
    },
    {
      "id": "DRILL-RP-EASEMENT-02",
      "prompt": "Easement holder enters servient land to fix ordinary wear on the access route.",
      "answer": "Reasonable repair is within the easement right."
    },
    {
      "id": "DRILL-RP-EASEMENT-03",
      "prompt": "Answer chooses the right party but says the party may do whatever is necessary.",
      "answer": "Cut the overclaim; rights are limited by scope and reasonableness."
    }
  ],
  "trap_tags": [
    "misstated_rule",
    "fact_not_in_evidence",
    "answer_to_different_question",
    "overbroad_rule",
    "bar_exam_bait"
  ],
  "component_routing": [
    "Lesson 1 TRUE and RESPONSIVE",
    "Lesson 4 Overclaim",
    "Lesson 8 Not-responsive molds",
    "Lesson 9 Clash axis",
    "Lesson 12 Anchor Deck",
    "RP-05 Easements"
  ],
  "gold_keys": [
    {
      "id": "GK-RP-EASEMENT-NECESSITY-REPAIR-01",
      "statement": "When commonly owned parcels are severed and one parcel needs an existing access route through the other, an easement may be implied by necessity. The easement holder may make reasonable repairs needed to keep the easement usable.",
      "type": "rule",
      "unlocks": "the deed-silence no-rights trap and the repair-right issue",
      "trigger": "common owner, severance, deed silence, only access through the other parcel, later repair",
      "tested_choice": "A",
      "authority": "Common-law implied easement by necessity; Restatement (Third) of Property: Servitudes § 4.13",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-RP-EASEMENT-REPAIR-ARRAY-01",
      "statement": "When one answer says no rights, one says exact easement plus repair, and one says unlimited self-help, split the array into existence of the easement and scope of the repair right.",
      "type": "answer_array",
      "navigates": "A/C rights fight and D's right-party wrong-reason trap",
      "trigger": "deed silence plus continued use plus repair work",
      "tested_choice": "D",
      "outline_code": "81020102",
      "last_minute_review": true
    }
  ],
  "outline_mastery": [
    {
      "outline_code": "81020102",
      "node": "Non-Possessory Rights and Interests in Land > Easements > Creation",
      "mastery_task": "Identify implied easement by necessity despite deed silence."
    },
    {
      "outline_code": "81020102",
      "node": "Non-Possessory Rights and Interests in Land > Easements > Creation",
      "mastery_task": "Use common ownership and necessary access as the triggering facts."
    },
    {
      "outline_code": "81020102",
      "node": "Non-Possessory Rights and Interests in Land > Easements > Creation",
      "mastery_task": "Distinguish reasonable repair from unlimited expansion or self-help."
    }
  ],
  "crossovers": [
    {
      "area": "Torts",
      "intersection": "D uses possible tort liability as a lure, but the property right supplies the winning reason."
    },
    {
      "area": "Contracts / deeds",
      "intersection": "Express deed silence does not defeat an implied easement when the law supplies the property right."
    },
    {
      "area": "C3 Overclaim",
      "intersection": "The phrase 'whatever action is necessary' is the structural tell in the right-result wrong-reason trap."
    }
  ],
  "review_priority": "low overall because 90% selected the credited answer; high for students who picked D because they identified the party but missed the reason requirement.",
  "analyzer_notes": "drift_audit: The item is anchor-assisted. Do not promote implied easement doctrine to hard structure. transformed_from: none. letter_map: not applicable."
}
```

[1]: https://www.law.cornell.edu/wex/implied_easement_by_necessity?utm_source=chatgpt.com "implied easement by necessity | Wex | US Law | LII / Legal Information Institute"
[2]: https://www.justia.com/real-estate/home-ownership/owning-a-home/easements/?utm_source=chatgpt.com "Easements Under Property Law | Home Ownership Legal Center | Justia"

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "15012"
  question_id: "15012"
  subject: "REAL_PROPERTY"
  topic: "Rights in Land"
  subtopic: "Easements"
  outline_code: "81020102"
  official_key: "C"
transform_provenance:
  transformed_from: "18550"
  variant_slug: "18550"
  original_key_letter: "UNKNOWN"
  new_key_letter: "C"
  letter_map: "see Letter Map section"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_SOLVE"
  confidence: "ANCHOR_ASSISTED"
  residual: "C"
distilled_core_question: "Distilled core question not available in source file."
review_truth: "Review truth not available in source file."
```
