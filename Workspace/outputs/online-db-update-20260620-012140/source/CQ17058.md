---
qid: "17058_advent_honey_parcel"
transformed_from: "17058"
subject: "REAL_PROPERTY"
topic: "Conveyance by Deed — Requirements for Valid Deed"
subtopic: "B1"
outline_code: "84040201"
key: "B"
original_key: "C"
letter_map: "- original_letter: \"A"
dominant_trap: "unknown_no_pick_rates_supplied"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect."
---
# A) PASS-1 TRANSFORM REPORT

## 1. Final question — revised stem + call

Source row used: BARMATRIX Q# 17058, Real Property, deed validity, blank grantee / unauthorized completion.  Controlled fields follow the uploaded controlled-vocabulary file. 

**Final Christian variation — `17058_advent_honey_parcel`**

Paul owned a narrow riverfront parcel where he kept beehives for the honey cakes his family sold each Advent season. During a family potluck, Paul signed a deed that described the parcel and used words of present conveyance, but the space for the grantee’s name was empty. Paul handed the paper to Martha and asked her to keep it with his private papers. He did not authorize Martha to fill in any name. After Paul died, Martha typed her own name into the blank space and recorded the instrument.

**Who owns the parcel?**

## 2. Distilled Core Question

A signed deed for land is delivered for safekeeping with the grantee line blank and no authority to fill it in. The holder later names herself and records it. Who owns the land?

## 3. Final answer choices — post-shuffle

**A.** Martha, because holding the signed instrument gave her automatic authority to fill an empty grantee line.
**B.** Paul’s estate, because the instrument identified no grantee when Paul delivered it and Martha’s later unauthorized insertion and recording did not cure that defect.
**C.** Martha, because a deed can transfer land without consideration.
**D.** Martha, because Paul signed the instrument and Martha later recorded it.

## 5. Correct answer

**B** *(original key: C).*

## 6. Letter Map

| Original letter | New letter | Mechanic                               | Substance | Pick rate                                           |
| --------------- | ---------: | -------------------------------------- | --------- | --------------------------------------------------- |
| A               |          D | recording-cures-invalid-instrument     | kept      | null, predicted; no original measured rate supplied |
| B               |          A | possession-creates-automatic-authority | kept      | null, predicted; no original measured rate supplied |
| C               |          B | correct_answer                         | kept      | null, predicted; no original measured rate supplied |
| D               |          C | no-consideration-cures-missing-grantee | kept      | null, predicted; no original measured rate supplied |

## 7. Full right-answer explanation

**B is correct.** The deed-validity gate is grantee identity at delivery. Paul signed language that looked like a present conveyance, but the instrument did not identify a grantee when he handed it to Martha. Martha also lacked authority to complete the blank. **Gold Key:** a deed must identify an existing or ascertainable grantee when delivered; a later unauthorized insertion plus recording does not supply that missing validity gate. **Silver Key:** run the validity gate before downstream facts like recording or consideration. Because the claimed deed failed at the grantee-identity gate, title remains in Paul’s estate.

## 8. Full wrong-answer explanations

**A.** This choice sells the “paper-holder power” story: Martha had the signed instrument, so the answer tries to turn custody into authority. The breaker is the stem’s explicit authority fact: Paul gave Martha no power to fill in a name, and “automatic authority to fill any blank” overclaims.

**C.** This choice sells a true-but-off-point deed idea: consideration is not required for a deed transfer. The breaker is Issue-Sense: the problem is not payment; it is the missing grantee and unauthorized completion. **Gold Key:** no-consideration doctrine does not repair a deed that lacked a grantee when delivered.

**D.** This choice sells the recording shortcut: signature plus recording feels like a completed land transfer. The breaker is the validity gate. **Silver Key:** recordation is a downstream notice step; first ask whether the instrument was valid as a deed when delivered.

## 9. Full black-letter-law verification and legal reasoning

The tested rule and credited outcome are unchanged from the original: a deed must identify the grantor and grantee, contain words of conveyance, describe the land, be signed, and be delivered; recording is not a substitute for a valid deed. Cornell’s Wex summary lists grantee and grantor names, conveyance language, and property description among ordinary valid-deed elements, and an open property-law casebook states the same deed requirements, including grantee identity and delivery. ([Legal Information Institute][1]) Case law also supports the blank-grantee distinction: a deed with a blank grantee can operate if the blank is filled under authority, but unauthorized insertion is fatal or at least ineffective against the grantor’s interest; California authority states the general rule that a deed blank as to grantee passes no title absent authority to complete it. ([Justia][2])

## 10. Why the variation preserves rigor and difficulty

The hard gate is unchanged. The student must separate deed validity from attractive downstream facts: custody, recording, and lack of consideration. The Christian skin changes the scene, asset texture, rhythm, names, and memorable details without adding church-property, charitable-immunity, First Amendment, or donation issues.

## 11. C3 elimination walkthrough — CUT → CLASH → CALL

**CUT A.** “Automatic authority” and “any blank” are overclaim tells. The stem also says Paul gave no authority. Cut A as `NOT_TRUE`.

**CUT C.** Consideration is not the issue. The stem’s trigger facts are blank grantee, no authority, later self-insertion, and recordation. Cut C as `NOT_RESPONSIVE`.

**CUT D.** Signature and recording are not the validity gate. This choice ignores the blank grantee at delivery. Cut D as `NOT_RESPONSIVE`.

**Residual.** B is the only true-and-responsive answer. No CLASH or CALL needed after the CUT.

## 12. Divergence Audit — Recognition-Kill Checklist

| Dimension                | Changed / skipped | Audit line                                                                                                                        |
| ------------------------ | ----------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| Asset / subject matter   | Changed           | Field becomes a narrow riverfront honey-bee parcel tied to Advent honey cakes.                                                    |
| Transaction frame        | Skipped           | Must remain deed conveyance; changing to lease, sale contract, or service frame would change the legal issue.                     |
| Specific facts           | Changed           | Original safekeeping becomes private-papers custody after a family Advent potluck; later completion is typed rather than written. |
| Numbers                  | Skipped           | No legally meaningful numbers supplied; no artificial numbers added.                                                              |
| Fact ordering and rhythm | Changed           | New stem opens with parcel texture and family event, then reveals deed defect and later recording.                                |
| Cast size / roles        | Changed           | Daniel / Esther become Paul / Martha; Christian family setting added without legal clutter.                                       |
| Choice ordering          | Changed           | Correct answer moved to B.                                                                                                        |
| Choice phrasing          | Changed           | Legal substance retained; words re-skinned to the new story.                                                                      |
| Setting / era / texture  | Changed           | Generic field becomes riverfront Advent honey parcel with private papers.                                                         |
| Call wording             | Kept              | “Who owns the parcel?” preserves the identical legal function.                                                                    |
| Christian skin           | Changed           | Advent-season family potluck and popular Bible names; no antagonist names.                                                        |
| No clutter doctrine      | Passed            | No church property, pledge, tithe, charitable-immunity, or First Amendment issue.                                                 |

**Original one-sentence stem summary:** A signed deed for a field was handed over with the grantee line blank, no authority to complete it, and the holder later named herself and recorded it.
**Variant one-sentence stem summary:** At an Advent family potluck, a riverfront honey-parcel deed was stored with private papers while still missing a grantee, and the custodian later typed herself in and recorded it.

Recognition test: passed. The shared content is the legal rule, not the story.

## 13. Review Truth

A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.

## 14. The 5 variations considered

| Variation                          | Setting / cast                                                        | Preserved issue                                              | Why memorable                                             | Legal risks                                                                             | Divergence score                                                                                  |
| ---------------------------------- | --------------------------------------------------------------------- | ------------------------------------------------------------ | --------------------------------------------------------- | --------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| **Advent Honey Parcel** — selected | Paul, Martha; riverfront beehive parcel and Advent honey cakes        | Blank grantee, no authority, later self-insertion, recording | Strong Christian texture without church-property doctrine | Low; private land and ordinary deed                                                     | **8/10** — kills asset, rhythm, texture, names, fact details, choice order, phrasing, and setting |
| Psalm Garden Easement Lot          | Hannah, Ruth; small private garden lot used for psalm-copying retreat | Same deed-validity gate                                      | Visual and devotional                                     | “Garden retreat” could sound charitable if overbuilt                                    | 7/10                                                                                              |
| Fishermen’s Net-Drying Strip       | Peter, John; river strip used for fishers’ fellowship cookouts        | Same deed-validity gate                                      | Fun and vivid                                             | Peter as grantor / John as custodian may feel too close to “field deed” if not textured | 7/10                                                                                              |
| Nativity Prop Shed Parcel          | Mary, Lydia; private shed lot for family pageant props                | Same deed-validity gate                                      | Memorable Christmas setting                               | “Mary” plus pageant could over-signal church use if mishandled                          | 7/10                                                                                              |
| Hymnal Bookplate Cabin Lot         | Stephen, Naomi; cabin lot deed tucked into a hymnal                   | Same deed-validity gate                                      | Strong image                                              | Too close to paper-for-safekeeping if not varied enough                                 | 6/10                                                                                              |

**Pass-1 six-step audit:**

1. Rule identified: deed must identify grantee / unauthorized completion does not cure.
2. Invariant layer preserved: rule, credited estate outcome, recording trap, authority trap, consideration trap, 3-vs-1 ownership geometry.
3. Five Christian variations generated.
4. Distractor policy: no swap; pick rates not supplied, so no dominant-trap percentage identified.
5. Final selected: Advent Honey Parcel, maximum legally safe divergence.
6. Choices shuffled; Letter Map and Divergence Audit completed.

# B) PASS-2 FIVE BLOCKS

## 1. Question YAML

```yaml
barmatrix_row:
  qid: "17058_advent_honey_parcel"
  transformed_from: "17058"
  internal_id: "real_property_titles_questions_batch_001_B1_valid_deed_requirements::r20::Q19"
  subject: "REAL_PROPERTY"
  subject_display: "Real Property"
  topic: "Conveyance by Deed — Requirements for Valid Deed"
  subtopic: "B1"
  outline_code: "84040201"
  difficulty: "Discriminator"
  selection_percentages:
    A:
      value: null
      provenance: "predicted"
      note: "No original measured pick rate supplied."
    B:
      value: null
      provenance: "predicted"
      note: "No original measured pick rate supplied."
    C:
      value: null
      provenance: "predicted"
      note: "No original measured pick rate supplied."
    D:
      value: null
      provenance: "predicted"
      note: "No original measured pick rate supplied."
  official_key: "B"
  original_key_letter: "C"
  call: "Who owns the parcel?"
  stem: "Paul owned a narrow riverfront parcel where he kept beehives for the honey cakes his family sold each Advent season. During a family potluck, Paul signed a deed that described the parcel and used words of present conveyance, but the space for the grantee’s name was empty. Paul handed the paper to Martha and asked her to keep it with his private papers. He did not authorize Martha to fill in any name. After Paul died, Martha typed her own name into the blank space and recorded the instrument."
  choices:
    A: "Martha, because holding the signed instrument gave her automatic authority to fill an empty grantee line."
    B: "Paul’s estate, because the instrument identified no grantee when Paul delivered it and Martha’s later unauthorized insertion and recording did not cure that defect."
    C: "Martha, because a deed can transfer land without consideration."
    D: "Martha, because Paul signed the instrument and Martha later recorded it."

transform_provenance:
  variant_slug: "advent_honey_parcel"
  transformed_from: "17058"
  original_key_letter: "C"
  new_key_letter: "B"
  letter_map:
    - original_letter: "A"
      new_letter: "D"
      mechanic: "recording-cures-invalid-instrument"
      substance: "kept"
      pick_rate:
        value: null
        provenance: "predicted"
        note: "No original measured rate supplied."
    - original_letter: "B"
      new_letter: "A"
      mechanic: "possession-creates-automatic-authority"
      substance: "kept"
      pick_rate:
        value: null
        provenance: "predicted"
        note: "No original measured rate supplied."
    - original_letter: "C"
      new_letter: "B"
      mechanic: "correct_answer"
      substance: "kept"
      pick_rate:
        value: null
        provenance: "predicted"
        note: "No original measured rate supplied."
    - original_letter: "D"
      new_letter: "C"
      mechanic: "no-consideration-cures-missing-grantee"
      substance: "kept"
      pick_rate:
        value: null
        provenance: "predicted"
        note: "No original measured rate supplied."
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "A signed deed for a field was handed over with the grantee line blank, no authority to complete it, and the holder later named herself and recorded it."
    variant_stem_one_sentence: "At an Advent family potluck, a riverfront honey-parcel deed was stored with private papers while still missing a grantee, and the custodian later typed herself in and recorded it."
    dimensions_changed:
      - "asset_subject_matter"
      - "specific_facts"
      - "fact_ordering_and_stem_rhythm"
      - "cast_roles"
      - "choice_ordering"
      - "choice_phrasing"
      - "setting_era_texture"
      - "Christian_skin"
    dimensions_skipped_with_reason:
      - dimension: "transaction_frame"
        reason: "Must remain deed conveyance to test deed-validity rule."
      - dimension: "numbers"
        reason: "No legally meaningful numbers supplied; no artificial numbers added."
      - dimension: "call_wording"
        reason: "Ownership call preserves identical legal function."

source_stack:
  - priority: 1
    source: "BARMATRIX row supplied in 17058.md"
  - priority: 2
    source: "No existing item-specific C3 tags supplied."
  - priority: 3
    source: "C3 method, lessons, master deck, and controlled_vocabularies.md"
  - priority: 4
    source: "Official legal explanation used only for lawyer confirmation."
  - priority: 5
    source: "External legal research used only in lawyer_confirmation."

student_access_contract:
  allowed_tools:
    - "TRUE_AND_RESPONSIVE"
    - "Ear overclaim detector"
    - "Issue-Sense wrong-element detector"
    - "CUT → CLASH → CALL workflow"
    - "Gold Key GK-REAL_PROPERTY-BLANK-GRANTEE-01"
    - "Silver Key SK-REAL_PROPERTY-DEED-GATE-01"
  controlling_test: "A student may cut a choice only by grammar, overclaim, stem-call mismatch, taught C3 card, or Gold/Silver Key."
  forbidden_moves:
    - "Do not say recording fails unless using the Gold Key."
    - "Do not treat real-property doctrine as pure structure."
    - "Do not turn the walkthrough into a deed outline."

stem_parse:
  subject_fit: "Real Property = title source + validity gate."
  call_type: "ownership/status"
  negative_stem: false
  adjacent_call_traps:
    - "Was the instrument recorded?"
    - "Was consideration required?"
    - "Did custody of the paper authorize completion?"
  predicted_answer: "Paul’s estate owns because the deed had no grantee at delivery and Martha lacked authority to add one."

trigger_facts:
  - fact: "Paul signed a deed with present conveyance language and land description."
    access_label: "stem_visible"
    role: "tempts signature/recording trap"
  - fact: "The grantee space was empty."
    access_label: "stem_visible"
    role: "validity gate"
  - fact: "Paul gave Martha no authority to fill in a name."
    access_label: "stem_visible"
    role: "kills automatic-authority trap"
  - fact: "Martha later inserted herself and recorded."
    access_label: "stem_visible"
    role: "tempts recording-cure trap"

c3_routing:
  subject_fit: "Real Property = title source + validity gate."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  method_class: "anchor_assisted"
  confidence: "ANCHOR_ASSISTED"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "B"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: "Discriminator"
  call_heuristic: "threshold before downstream facts"
  tension_axis: "deed validity at delivery vs downstream recording/consideration/custody facts"

answer_array:
  geometry: "3-vs-1"
  geometry_description: "Three choices award Martha by downstream or adjacent facts; one choice keeps title in the estate by the deed-validity gate."
  silver_key_ref: "SK-REAL_PROPERTY-DEED-GATE-01"
  dominant_trap: "unknown_no_pick_rates_supplied"
  residual_answer: "B"

choice_walkthroughs:
  A:
    filter_broken: "NOT_TRUE"
    mold_code: "tiered_absolute"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "overbroad_rule"
      - "common_student_myth"
      - "sounds_lawyerly"
      - "bar_exam_bait"
    method_class: "hard_structural"
    student_label: "Overclaim: automatic authority from custody."
    c3_signal: "The answer says holding the paper automatically gives authority to fill an empty grantee line, but the stem says Paul gave no authority."
    lawyer_confirmation: "Possession of a deed form does not itself authorize the holder to insert herself as grantee; authority must come from the grantor."
  B:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "Residual: valid deed gate."
    c3_signal: "This answer engages the blank grantee, delivery timing, no authority, and failed cure."
    lawyer_confirmation: "A deed must identify an existing or ascertainable grantee at delivery; unauthorized later insertion and recording do not pass title to the inserter."
  C:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "legally_true_but_irrelevant"
      - "answer_to_different_question"
      - "wrong_standard"
      - "bar_exam_bait"
    method_class: "heuristic_structural"
    student_label: "Wrong element: consideration instead of grantee identity."
    c3_signal: "The stem is not fighting about payment. It is fighting about the blank grantee and no authority."
    lawyer_confirmation: "A deed can be effective without consideration, but that rule does not cure a missing grantee or unauthorized completion."
  D:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "half_right_answer"
      - "wrong_timing"
      - "answer_to_different_question"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "Wrong element: signature and recording instead of validity at delivery."
    c3_signal: "The answer points to true-looking downstream facts but skips the blank-grantee defect."
    lawyer_confirmation: "Recording gives notice of a valid instrument; it does not make an invalid deed valid."

residual_answer:
  choice: "B"
  answer_text: "Paul’s estate, because the instrument identified no grantee when Paul delivered it and Martha’s later unauthorized insertion and recording did not cure that defect."
  reason: "Only B answers the ownership call by using the deed-validity gate."

legal_leak_audit:
  student_accessible_claims:
    - claim: "A overclaims by saying custody automatically creates authority."
      basis: "answer text plus stem fact"
      status: "passes"
    - claim: "C answers payment, not blank grantee / authority."
      basis: "call-fact relation"
      status: "passes"
    - claim: "D answers signature and recording, not blank grantee / authority."
      basis: "call-fact relation plus Silver Key"
      status: "passes"
  lawyer_only_claims:
    - claim: "A deed must identify a grantee at delivery."
      quarantine: "Gold Key and lawyer_confirmation"
    - claim: "Recording does not cure missing grantee identity."
      quarantine: "Gold Key and lawyer_confirmation"
  drift_audit: "No lawyer-only rule is used as pure structure."

gold_keys:
  - id: "GK-REAL_PROPERTY-BLANK-GRANTEE-01"
    statement: "A deed must identify an existing or ascertainable grantee when delivered. A later unauthorized insertion plus recording does not supply that missing validity gate."
    type: "threshold"
    unlocks: "recording and no-consideration traps"
    trigger: "signed deed, blank grantee line, no authority to complete, later self-insertion"
    tested_choice: "D"
    authority: "Cornell LII Wex, Deed; Alan White, Deeds and Recording Acts; Sanders v. Kirk; Tumansky v. Woodruff."
    last_minute_review: true

silver_keys:
  - id: "SK-REAL_PROPERTY-DEED-GATE-01"
    statement: "Run the deed-validity gate before downstream facts. Signature, custody, recording, and consideration matter only after the instrument can operate as a deed."
    type: "call_focus"
    navigates: "validity gate vs downstream recording/consideration facts"
    trigger: "answer choices offer signed/recorded/no-consideration reasons while the stem flags a blank grantee"
    tested_choice: "D"
    outline_code: "84040201"
    last_minute_review: true

remediation:
  card_id: "RP-REMED-BLANK-GRANTEE-GATE"
  title: "Blank grantee gate"
  signal: "The stem says the grantee line was blank when the deed was delivered."
  student_move: "Freeze the validity gate before considering recording or consideration."
  tiny_rule: "No grantee at delivery plus no authority to fill means no title passes to the later filler."
  trap: "Signature or recording feels complete."
  confidence: "ANCHOR_ASSISTED"

distilled_core_question: "A signed deed for land is delivered for safekeeping with the grantee line blank and no authority to fill it in. The holder later names herself and records it. Who owns the land?"
review_truth: "A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect."

case_study_output:
  final_student_script: "Call: who owns the parcel. Trigger facts: blank grantee at delivery, no authority, later self-insertion, recording. Cut A for automatic-authority overclaim. Cut C for answering consideration. Cut D for answering signature/recording. B survives: estate owns."
  remediation_card: "Blank grantee gate."
  drift_audit: "Anchor used openly; no hidden doctrine converted into structure."

quality_control:
  c3_residual_equals_official_key: true
  exactly_three_distractors: true
  each_distractor_one_filter: true
  no_fork: true
  bank_validation_verdict_available: "PASS"
  post_shuffle_key_consistent: true
  pick_rate_honesty: "No original pick rates supplied; all values null with predicted provenance."

analytics_hooks:
  forensic_tags:
    - "blank_grantee"
    - "unauthorized_completion"
    - "recording_cure_trap"
    - "consideration_irrelevance"
  component_routing:
    - "Ear: overclaim"
    - "Issue-Sense: wrong element"
    - "Gold Key: deed validity gate"
    - "Silver Key: gate before downstream facts"
```

## 2. Student case study — 17-section walkthrough

## program_frame

This is a Real Property deed-validity question. Do not start with recording. Do not start with consideration. Start with the title source: the claimed deed.

## student_access_test

Could the student solve this without outside doctrine?

Partly. A is structurally cut because it says custody gives “automatic” authority even though the stem says no authority. C and D are visible Issue-Sense cuts because they answer adjacent facts rather than the blank-grantee problem. The final reason B wins needs a tiny deed-validity anchor, so this is `ANCHOR_SOLVE`, not pure structure.

## question_data

**Stem:** Paul signed a deed for a riverfront parcel, left the grantee line blank, gave Martha no authority to fill it in, and Martha later inserted herself and recorded.

**Call:** Who owns the parcel?

**Choices:** A, B, C, D as post-shuffle above.

**Correct answer:** B.

## distilled_core_question

A signed deed for land is delivered for safekeeping with the grantee line blank and no authority to fill it in. The holder later names herself and records it. Who owns the land?

## call_and_prediction

Call: ownership.

Prediction: the estate owns unless the instrument worked as a deed when Paul delivered it. The trigger is not whether Martha recorded. The trigger is whether the deed identified a grantee at delivery and whether Martha had authority to fill the blank.

## trigger_facts

| Fact                                       | C3 role                                   |
| ------------------------------------------ | ----------------------------------------- |
| Signed deed with property description      | Makes signature/recording trap attractive |
| Grantee space empty                        | Validity gate                             |
| No authority to fill in any name           | Kills authority trap                      |
| Martha later typed herself in and recorded | Recording-cure trap                       |

## governing_c3_lane

**Lane:** Rule-driven Real Property anchor.
**FIT:** Real Property = title source + validity gate.
**Phase:** CUT.
**Gold Key controls:** grantee identity at delivery.
**Silver Key controls:** validity gate before recording or consideration.

## choice_by_choice_walkthrough

### A

1. **Student-accessible C3 signal:** “Automatic authority” is too strong, and the stem says Paul gave no authority.
2. **Student label:** `NOT_TRUE` — `tiered_absolute`.
3. **True/responsive version:** Martha would need actual authority from Paul to complete the grantee blank.
4. **Lawyer confirmation:** Custody of a deed form does not itself authorize the holder to insert herself as grantee.

### B

1. **Student-accessible C3 signal:** This choice uses every trigger fact: blank grantee, delivery timing, no authority, later recording.
2. **Student label:** Residual answer; `anchor_assisted`.
3. **True/responsive version:** This is already true and responsive.
4. **Lawyer confirmation:** A deed must identify a grantee when delivered; unauthorized later completion and recording do not pass title to Martha.

### C

1. **Student-accessible C3 signal:** The answer talks about consideration. The stem’s dispute is blank grantee and authority.
2. **Student label:** `NOT_RESPONSIVE` — `wrong_element`.
3. **True/responsive version:** “Martha owns because Paul authorized her to complete the grantee line before delivery” would engage the gate.
4. **Lawyer confirmation:** Consideration is not required for a deed, but that rule does not cure the missing grantee.

### D

1. **Student-accessible C3 signal:** Signature and recording are attractive but skip the blank-grantee defect.
2. **Student label:** `NOT_RESPONSIVE` — `wrong_element`.
3. **True/responsive version:** “Martha owns because the deed identified Martha as grantee when Paul delivered it” would engage the gate.
4. **Lawyer confirmation:** Recording protects or gives notice of valid instruments; it does not validate a deed that lacked a grantee when delivered.

## residual_answer

After A, C, and D are cut, B remains. B is true and responsive. The estate owns.

## legal_leak_audit

Student-accessible:

* A can be cut from answer language plus the stem’s no-authority fact.
* C can be cut because it answers payment, not the blank-grantee problem.
* D can be cut because it answers signature/recording, not the blank-grantee problem.

Anchor-assisted:

* B’s final correctness needs the Gold Key that grantee identity at delivery is a deed-validity gate.
* D’s “recording does not cure” point also needs the Gold Key.

Drift audit: No lawyer-only deed doctrine is used as pure structure. The anchor is labeled and quarantined.

## final_student_script

Who owns? Start with deed validity. The grantee line was blank when Paul delivered the paper, and Martha had no authority to fill it in. Cut A because custody does not automatically give authority. Cut C because consideration is not the issue. Cut D because signature plus recording skips the blank-grantee gate. B survives. Paul’s estate owns.

## remediation_card

**Card:** RP-REMED-BLANK-GRANTEE-GATE
**Signal:** signed deed, blank grantee, later self-insertion.
**Move:** ask whether the deed was valid when delivered.
**Tiny rule:** no grantee at delivery plus no authority to fill means no title passes to the later filler.
**Trap:** recordation makes the paper look official.

## Gold Key(s)

**GK-REAL_PROPERTY-BLANK-GRANTEE-01**
A deed must identify an existing or ascertainable grantee when delivered. A later unauthorized insertion plus recording does not supply that missing validity gate.

## Silver Key(s)

**SK-REAL_PROPERTY-DEED-GATE-01**
Run the deed-validity gate before downstream facts. Signature, custody, recording, and consideration matter only after the instrument can operate as a deed.

## qa_checklist

| Check                                   | Result |
| --------------------------------------- | ------ |
| Correct answer breaks no filter         | Pass   |
| Three distractors each break one filter | Pass   |
| Residual matches post-shuffle key       | Pass   |
| Anchor labeled                          | Pass   |
| No fork                                 | Pass   |
| No pick-rate fabrication                | Pass   |

## wrong_answer_recovery_paths

| Choice | Likely student error              | Recovery                                  |
| ------ | --------------------------------- | ----------------------------------------- |
| A      | Treats custody as authority       | Circle “no authority” in the stem         |
| C      | Recalls no consideration required | Ask whether payment is the contested fact |
| D      | Treats recording as magic         | Run validity before recording             |

## outline_mastery_map

**Outline code:** 84040201.
**Placement:** Real Property > Titles > Conveyance by Deed > Requirements for valid deed.
**This item teaches:** deed-validity gate; grantee identity; unauthorized completion.
**Adjacent mastery:** delivery and acceptance; forged instruments; recording acts.

## crossover_intersection_map

| Crossover                    | Shared move                                            |
| ---------------------------- | ------------------------------------------------------ |
| Contracts formation          | Identity of parties before performance details         |
| Evidence authentication      | Valid source before downstream use                     |
| Civil Procedure jurisdiction | Threshold before merits                                |
| Recording acts               | Recording matters only after a valid conveyance exists |

## review_truth

A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.

## 3. `c3_annotation`

```json
{
  "question_id": "17058_advent_honey_parcel",
  "subject": "REAL_PROPERTY",
  "credited_answer": "B",
  "outline_code": "84040201",
  "distilled_core_question": "A signed deed for land is delivered for safekeeping with the grantee line blank and no authority to fill it in. The holder later names herself and records it. Who owns the land?",
  "review_truth": "A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "B",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "ANCHOR_ASSISTED",
    "tension_axis": "deed validity at delivery vs downstream recording/consideration/custody facts",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "threshold before downstream facts",
    "difficulty": "Discriminator",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_TRUE",
        "mold": "tiered_absolute",
        "architecture": null,
        "card_ref": "C3 Lesson 4 overclaim",
        "explanation": "The choice overclaims that custody automatically supplies authority, despite the stem's no-authority fact."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "wrong_element",
        "architecture": null,
        "card_ref": "C3 Lesson 8 wrong-element",
        "explanation": "The choice addresses consideration, not the blank-grantee and authority defect."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "wrong_element",
        "architecture": null,
        "card_ref": "GK-REAL_PROPERTY-BLANK-GRANTEE-01",
        "explanation": "The choice addresses signature and recording, not the deed-validity gate."
      }
    ],
    "analyzer_notes": "drift_audit: Anchor labeled; no lawyer-only rule converted into pure structure. transformed_from: 17058. letter_map: original A→new D; original B→new A; original C→new B; original D→new C.",
    "gold_keys": [
      {
        "id": "GK-REAL_PROPERTY-BLANK-GRANTEE-01",
        "statement": "A deed must identify an existing or ascertainable grantee when delivered. A later unauthorized insertion plus recording does not supply that missing validity gate.",
        "type": "threshold",
        "unlocks": "recording and no-consideration traps",
        "trigger": "signed deed, blank grantee line, no authority to complete, later self-insertion",
        "tested_choice": "D",
        "authority": "Cornell LII Wex, Deed; Alan White, Deeds and Recording Acts; Sanders v. Kirk; Tumansky v. Woodruff.",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-REAL_PROPERTY-DEED-GATE-01",
        "statement": "Run the deed-validity gate before downstream facts. Signature, custody, recording, and consideration matter only after the instrument can operate as a deed.",
        "type": "call_focus",
        "navigates": "validity gate vs downstream recording/consideration facts",
        "trigger": "answer choices offer signed/recorded/no-consideration reasons while the stem flags a blank grantee",
        "tested_choice": "D",
        "outline_code": "84040201",
        "last_minute_review": true
      }
    ]
  }
}
```

## 4. `program_elements`

```json
{
  "question_id": "17058_advent_honey_parcel",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040201",
  "distilled_core_question": "A signed deed for land is delivered for safekeeping with the grantee line blank and no authority to fill it in. The holder later names herself and records it. Who owns the land?",
  "review_truth": "A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.",
  "tension": {
    "axis": "deed validity gate vs downstream completion/recording facts",
    "deciding_fact": "The grantee line was blank at delivery and Martha had no authority to fill it."
  },
  "traps": [
    {
      "choice": "A",
      "mold": "tiered_absolute",
      "architecture": null,
      "why_attractive": "A student sees Martha holding the signed paper and treats custody as power over the document. The breaker is that the stem expressly denies authority and the answer overclaims with automatic authority.",
      "focus_group_pct": null,
      "pct_provenance": "predicted"
    },
    {
      "choice": "C",
      "mold": "wrong_element",
      "architecture": null,
      "why_attractive": "A student remembers that a deed can be a gift and does not need consideration. The breaker is that payment is not the defect; the blank grantee and unauthorized completion are.",
      "focus_group_pct": null,
      "pct_provenance": "predicted"
    },
    {
      "choice": "D",
      "mold": "wrong_element",
      "architecture": null,
      "why_attractive": "A student treats signed plus recorded as enough because recording sounds official. The breaker is the Silver Key: validity at delivery comes before recording.",
      "focus_group_pct": null,
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "RP-REMED-BLANK-GRANTEE-GATE",
    "title": "Blank grantee gate",
    "signal": "The deed is signed but the grantee line is blank when delivered.",
    "student_move": "Freeze the validity gate before considering recording or consideration.",
    "tiny_rule": "No grantee at delivery plus no authority to fill means no title passes to the later filler.",
    "trap": "Signature or recording feels complete.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "recording_cure_trap",
    "custody_equals_authority_trap",
    "consideration_irrelevance_trap",
    "validity_gate_missed"
  ]
}
```

## 5. `program_intelligence`

```json
{
  "question_id": "17058_advent_honey_parcel",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040201",
  "distilled_core_question": "A signed deed for land is delivered for safekeeping with the grantee line blank and no authority to fill it in. The holder later names herself and records it. Who owns the land?",
  "review_truth": "A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.",
  "wrong_answer_paths": [
    {
      "choice": "A",
      "filter_broken": "NOT_TRUE",
      "mold": "tiered_absolute",
      "why_a_student_picks_this": "The student treats possession of the signed paper as control over the legal instrument.",
      "skipped_move": "Check the stem's no-authority fact and overclaim language.",
      "recovery_step": "Underline 'no authority' and distrust 'automatic authority.'"
    },
    {
      "choice": "C",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "wrong_element",
      "why_a_student_picks_this": "The student remembers a true deed rule about no consideration.",
      "skipped_move": "Match the answer reason to the contested fact.",
      "recovery_step": "Ask whether the answer explains the blank grantee and later unauthorized completion."
    },
    {
      "choice": "D",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "wrong_element",
      "why_a_student_picks_this": "The student sees signature and recording and treats them as completion.",
      "skipped_move": "Run the validity gate before recording.",
      "recovery_step": "Apply SK-REAL_PROPERTY-DEED-GATE-01."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "CUT",
      "target_skill": "overclaim detection",
      "prompt": "A signed deed is held by a custodian with no authority. Choice: custody automatically gives authority to complete any blank. Cut or keep?",
      "answer": "Cut: tiered_absolute / NOT_TRUE."
    },
    {
      "drill_type": "Issue-Sense",
      "target_skill": "wrong-element detection",
      "prompt": "The stem flags a blank grantee. Choice: deed required no consideration. What is the skipped move?",
      "answer": "It answers payment, not grantee identity."
    },
    {
      "drill_type": "Gold Key recall",
      "target_skill": "deed-validity gate",
      "prompt": "What must be true of the grantee when a deed is delivered?",
      "answer": "The grantee must be identified or ascertainable; unauthorized later insertion does not cure."
    },
    {
      "drill_type": "Silver Key navigation",
      "target_skill": "gate before downstream facts",
      "prompt": "Which comes first: recording or deed validity?",
      "answer": "Deed validity first."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "blank_grantee",
      "unauthorized_completion",
      "signed_instrument_bait",
      "recording_bait",
      "consideration_bait"
    ],
    "misconception_tags": [
      "recording_cures_defects",
      "possession_equals_authority",
      "gift_deed_no_consideration_solves_all",
      "signature_equals_valid_deed"
    ]
  },
  "component_routing": [
    "Lesson 1 TRUE_AND_RESPONSIVE",
    "Lesson 4 overclaim",
    "Lesson 8 wrong-element",
    "Lesson 12 threshold before downstream facts",
    "Gold Key deed-validity gate",
    "Silver Key gate-first navigation"
  ],
  "crossovers": [
    {
      "area": "Civil Procedure",
      "shared_move": "Threshold before merits."
    },
    {
      "area": "Contracts",
      "shared_move": "Party identity / formation gate before performance facts."
    },
    {
      "area": "Evidence",
      "shared_move": "Authentication/source validity before use."
    },
    {
      "area": "Recording Acts",
      "shared_move": "Recording protects valid instruments; it does not create validity."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-REAL_PROPERTY-BLANK-GRANTEE-01",
      "statement": "A deed must identify an existing or ascertainable grantee when delivered. A later unauthorized insertion plus recording does not supply that missing validity gate.",
      "type": "threshold",
      "unlocks": "recording and no-consideration traps",
      "trigger": "signed deed, blank grantee line, no authority to complete, later self-insertion",
      "tested_choice": "D",
      "authority": "Cornell LII Wex, Deed; Alan White, Deeds and Recording Acts; Sanders v. Kirk; Tumansky v. Woodruff.",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-REAL_PROPERTY-DEED-GATE-01",
      "statement": "Run the deed-validity gate before downstream facts. Signature, custody, recording, and consideration matter only after the instrument can operate as a deed.",
      "type": "call_focus",
      "navigates": "validity gate vs downstream recording/consideration facts",
      "trigger": "answer choices offer signed/recorded/no-consideration reasons while the stem flags a blank grantee",
      "tested_choice": "D",
      "outline_code": "84040201",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Real Property > Titles > Conveyance by Deed > Requirements for valid deed",
    "this_item_teaches": "A deed-validity gate fails when the grantee is blank at delivery and the later filler lacks authority.",
    "fills": [
      "grantee identity",
      "delivery validity",
      "unauthorized completion",
      "recording non-cure"
    ],
    "adjacent_to_master": [
      "Delivery and acceptance",
      "Forged instruments",
      "Recording Acts",
      "Types of deeds"
    ]
  }
}
```

[1]: https://www.law.cornell.edu/wex/deed?utm_source=chatgpt.com "deed | Wex | US Law | LII / Legal Information Institute"
[2]: https://law.justia.com/cases/oklahoma/supreme-court/1929/45283.html?utm_source=chatgpt.com "SANDERS v. KIRK :: 1929 :: Oklahoma Supreme Court Decisions :: Oklahoma Case Law :: Oklahoma Law :: U.S. Law :: Justia"

### 2. The 17-section student case study

```
1. **program_frame:** Question 17058_advent_honey_parcel; source 17058.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject REAL_PROPERTY; topic Conveyance by Deed — Requirements for Valid Deed; subtopic B1.
4. **distilled_core_question:** A signed deed for land is delivered for safekeeping with the grantee line blank and no authority to fill it in. The holder later names herself and records it. Who owns the land?
5. **call_and_prediction:** Credited answer: B.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 84040201.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** B
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 84040201.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.
```

### 3. c3_annotation

```json
{
  "question_id": "17058_advent_honey_parcel",
  "subject": "REAL_PROPERTY",
  "credited_answer": "B",
  "outline_code": "84040201",
  "distilled_core_question": "A signed deed for land is delivered for safekeeping with the grantee line blank and no authority to fill it in. The holder later names herself and records it. Who owns the land?",
  "review_truth": "A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 17058; letter_map: - original_letter: \"A",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "17058_advent_honey_parcel",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040201",
  "distilled_core_question": "A signed deed for land is delivered for safekeeping with the grantee line blank and no authority to fill it in. The holder later names herself and records it. Who owns the land?",
  "review_truth": "A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-17058",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.",
    "trap": "See preserved traps when present.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "17058_advent_honey_parcel",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040201",
  "distilled_core_question": "A signed deed for land is delivered for safekeeping with the grantee line blank and no authority to fill it in. The holder later names herself and records it. Who owns the land?",
  "review_truth": "A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.",
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
    "placement": "84040201",
    "this_item_teaches": "A deed fails if the grantee is missing at delivery and the later filler had no authority; recording does not fix that defect.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
