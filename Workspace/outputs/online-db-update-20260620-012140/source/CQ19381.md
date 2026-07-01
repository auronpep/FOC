---
qid: "19381_shepherd_olive_press_deed"
transformed_from: "19381"
subject: "REAL_PROPERTY"
topic: "Conveyance by Deed — Requirements for Valid Deed"
subtopic: "B1"
outline_code: "84040201"
key: "C"
original_key: "D"
letter_map: "- original_letter: \"A"
dominant_trap: "choice: \"A"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee."
---
## A) PASS-1 TRANSFORM REPORT

Source row: BARMATRIX Q# 19381 tests Real Property, Conveyance by Deed — Requirements for Valid Deed. The supplied row states that a signed, delivered, accepted deed with all required terms passes title even though unrecorded when no third party claims the property; the supplied official key is D. 

### 1. Final question — revised stem + call

Naomi owned a small olive-press parcel behind her bakery. After Lydia completed a private hymn-calligraphy commission for Naomi, Naomi signed and handed Lydia a deed conveying the parcel to Lydia. The deed contained all required deed terms, and Lydia accepted it. Lydia tucked the deed inside a Psalms hymnal and never recorded it. No later buyer, lender, creditor, or other third party claims the parcel. Naomi later says the deed did not work because no recorder’s stamp was ever placed on it.

**Who owns the olive-press parcel?**

### 2. Distilled Core Question

Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?

### 3. Final answer choices, post-shuffle

**A.** Naomi, because a deed that is not recorded is void.
**B.** Naomi, because the county recorder’s stamp is a deed-validity formality.
**C.** Lydia, because recording is not required for a valid deed to pass title between grantor and grantee.
**D.** Naomi, until Lydia records the deed.

### 5. Correct answer

**C**. Original key letter: **D**.

### 6. Letter Map

| Original letter | New letter | Mechanic                                                        | Substance | Pick rate     |
| --------------- | ---------: | --------------------------------------------------------------- | --------- | ------------- |
| A               |          A | `flat_misstatement` — unrecorded deed is void                   | kept      | 32% predicted |
| B               |          D | `backwards` — recording treated as condition to title passing   | kept      | 16% predicted |
| C               |          B | `fabricated_rule` — recorder’s stamp required as deed formality | kept      | 18% predicted |
| D               |          C | `correct_answer`                                                | kept      | 34% predicted |

No measured focus-group pick rates were supplied in the source row. All percentages are diagnostic predictions, not inherited measurements.

### 7. Full right-answer explanation

**C is correct.** The stem gives the title-transfer facts: Naomi signed the deed, delivered it, Lydia accepted it, and the deed contained the required deed terms. No outsider claims the parcel. That makes the question a validity-between-the-parties question, not a recording-priority question.

**Gold Key:** A valid deed passes title between grantor and grantee when delivered and accepted; recording protects notice and priority against outsiders, not validity between the original parties.

**Silver Key:** Read the answer array as a 3-vs-1 recording trap. Three choices give the property back to Naomi because of recording; one choice answers the actual call: title between the original parties.

### 8. Full wrong-answer explanations

**A.** This choice sells the harsh version of the recording myth: if the deed never enters the public record, the deed must be a nullity. The breaker is the Gold Key: nonrecording does not make a delivered and accepted deed void between the original grantor and grantee.

**B.** This choice sounds formal and clerk-office precise. The breaker is that the stem already gives the deed-validity facts; a recorder’s stamp belongs to public recording, not to the deed’s validity between Naomi and Lydia.

**D.** This choice sells a compromise: Lydia will own later, but Naomi owns for now. The breaker is the same Gold Key: recording is not a condition precedent to title passing between the parties when the deed has been delivered and accepted.

### 9. Full black-letter verification and legal reasoning for the right answer

The rule and outcome are unchanged from the original row: a deed with the required terms, signed and delivered by the grantor and accepted by the grantee, can pass title even if the grantee never records it, so long as the dispute is only between the original parties and no recording-act priority claimant appears. Cornell Wex states that a deed transfers title, that recording protects title by giving constructive notice, and that a valid real-estate deed generally must be in writing, contain required deed information, be signed by the grantor, and be delivered to the grantee. ([Legal Information Institute][1]) Willamette’s summary of *Muzzy v. Uttamchandani* states the recording-act distinction directly: under ORS 93.640, an unrecorded deed is valid between grantor and grantee but can be void against a qualifying later bona fide purchaser. ([Willamette Law Online][2]) A California discussion of Civil Code § 1217 states the same validity-between-parties point for unrecorded interests. ([Underwood Law Firm, P.C.][3])

### 10. Why the variation preserves rigor and difficulty

The surface story changes completely: warehouse becomes olive-press parcel, drawer becomes Psalms hymnal, Peter/Paul become Naomi/Lydia, and the transaction is tied to a private hymn-calligraphy commission. The legal engine remains unchanged: valid deed + delivery + acceptance + no recording + no third-party claimant = grantee owns.

### 11. C3 elimination walkthrough — CUT → CLASH → CALL

**CUT A:** This is the strongest trap. It makes nonrecording equal voidness. Gold Key cut: recording is not deed validity between original parties.

**CUT B:** This invents an extra deed formality. Gold Key cut: the recorder’s stamp is not part of the valid-deed gate in this call.

**CUT D:** This reverses timing. Gold Key cut: Lydia does not wait for recording to receive title as against Naomi.

**Residual:** C. No CLASH or CALL needed after the Gold Key cut.

### 12. Divergence Audit

| Recognition-Kill dimension | Result                                                                                                                                                           |
| -------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Asset / subject matter     | Warehouse → small olive-press parcel behind a bakery.                                                                                                            |
| Transaction frame          | Plain conveyance → deed delivered after private hymn-calligraphy commission.                                                                                     |
| Specific facts             | Drawer → Psalms hymnal; “never recorded” preserved because legally load-bearing.                                                                                 |
| Numbers                    | Original had no numbers; none added.                                                                                                                             |
| Fact ordering / rhythm     | New stem opens with asset and commission, then deed, then hymnal, then no third party, then Naomi’s recorder-stamp challenge.                                    |
| Cast size / roles          | Peter/Paul → Naomi/Lydia; roles preserved as grantor/grantee.                                                                                                    |
| Choice ordering            | Shuffled; correct answer moved to C.                                                                                                                             |
| Choice phrasing            | Rephrased while preserving legal substance and trap pull.                                                                                                        |
| Setting / texture          | Commercial warehouse setting → Christian-flavored bakery / hymn-calligraphy / Psalms-hymnal setting.                                                             |
| Call wording               | “Who owns the warehouse?” → “Who owns the olive-press parcel?” Same function.                                                                                    |
| Precedence-rule skips      | The “never recorded” fact was not removed because it is the tested trigger. “No third party” was not removed because it prevents a recording-act priority issue. |

**Original one-sentence stem summary:** Peter delivered a valid deed for a warehouse to Paul, Paul never recorded it, no third party appeared, and Peter claimed nonrecording defeated the transfer.
**Variant one-sentence stem summary:** Naomi delivered a valid deed for an olive-press parcel to Lydia after a hymn-calligraphy commission, Lydia hid it in a Psalms hymnal without recording, no outsider appeared, and Naomi invoked the missing recorder stamp.

### 13. Review Truth

Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.

### 14. The 5 variations considered

|  # | Title                                           | Setting / cast                                                         | Preserved issue                                | Why memorable                                                          | Legal risks                                                                             | Divergence score                                                                                                    |
| -: | ----------------------------------------------- | ---------------------------------------------------------------------- | ---------------------------------------------- | ---------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------- |
|  1 | **The Psalms-Hymnal Olive Press** — recommended | Naomi → Lydia; olive-press parcel; private hymn-calligraphy commission | Valid deed unrecorded; no third-party claimant | Psalms hymnal replaces drawer; olive press kills warehouse recognition | Must avoid church-property issue; solved by making the parcel Naomi’s personal property | **9/10** — changed asset, transaction texture, names, setting, storage, rhythm, call object, choice order, phrasing |
|  2 | Galilee Net-Drying Lot                          | John → Andrew; lakeside net-drying lot; private fish-market mural      | Same                                           | Biblical fishing imagery                                               | “Galilee” could feel geographically unrealistic; no legal issue but less clean          | 8/10                                                                                                                |
|  3 | Ruth’s Donkey-Pasture Strip                     | Hannah → Ruth; pasture strip; private saddle repair                    | Same                                           | Rural, vivid, low-clutter                                              | Pasture still land, good; less Christian texture                                        | 7/10                                                                                                                |
|  4 | Timothy’s Tentmaking Workshop                   | Barnabas → Timothy; workshop parcel; tentmaking apprenticeship         | Same                                           | Pauline trade texture                                                  | “Workshop parcel” close to warehouse / business real estate                             | 7/10                                                                                                                |
|  5 | Martha’s Rooftop Fig Garden                     | Esther → Martha; rooftop garden lot; bakery services                   | Same                                           | Memorable, urban, Christian names                                      | Rooftop parcel may raise fixture / condominium complexity                               | 6/10                                                                                                                |

**Six-step transform audit:**
Step 1: Rule = recording is not required for deed validity between grantor and grantee.
Step 2: Invariants = valid deed, delivery, acceptance, nonrecording, no third-party claimant, grantee wins.
Step 3: Five Christian variations generated.
Step 4: Distractor mechanics kept; no swap.
Step 5: Olive-press version selected for maximum surface divergence with low legal clutter.
Step 6: Choices shuffled; letter map and recognition audit completed.

---

## B1) PASS-2 QUESTION YAML

```yaml
barmatrix_row:
  qid: "19381_shepherd_olive_press_deed"
  transformed_from: "19381"
  internal_id: "real_property_titles_questions_batch_001_B1_valid_deed_requirements::r17::Q16"
  subject: "REAL_PROPERTY"
  subject_display: "Real Property"
  topic: "Conveyance by Deed — Requirements for Valid Deed"
  subtopic: "B1"
  difficulty: "Calibration"
  selection_percentages:
    A:
      value: 32
      provenance: "predicted"
      note: "No measured pick rate supplied; diagnostic estimate for unrecorded-deed-void trap."
    B:
      value: 18
      provenance: "predicted"
      note: "No measured pick rate supplied; diagnostic estimate for recorder-stamp-formality trap."
    C:
      value: 34
      provenance: "predicted"
      note: "No measured pick rate supplied; diagnostic estimate for credited answer."
    D:
      value: 16
      provenance: "predicted"
      note: "No measured pick rate supplied; diagnostic estimate for recording-as-condition trap."
  official_key: "C"
  call: "Who owns the olive-press parcel?"
  stem: "Naomi owned a small olive-press parcel behind her bakery. After Lydia completed a private hymn-calligraphy commission for Naomi, Naomi signed and handed Lydia a deed conveying the parcel to Lydia. The deed contained all required deed terms, and Lydia accepted it. Lydia tucked the deed inside a Psalms hymnal and never recorded it. No later buyer, lender, creditor, or other third party claims the parcel. Naomi later says the deed did not work because no recorder’s stamp was ever placed on it."
  choices:
    A: "Naomi, because a deed that is not recorded is void."
    B: "Naomi, because the county recorder’s stamp is a deed-validity formality."
    C: "Lydia, because recording is not required for a valid deed to pass title between grantor and grantee."
    D: "Naomi, until Lydia records the deed."

transform_provenance:
  transformed_from: "19381"
  variant_slug: "shepherd_olive_press_deed"
  original_key_letter: "D"
  new_key_letter: "C"
  letter_map:
    - original_letter: "A"
      new_letter: "A"
      mechanic: "flat_misstatement"
      substance: "kept"
      pick_rate:
        value: 32
        provenance: "predicted"
    - original_letter: "B"
      new_letter: "D"
      mechanic: "backwards"
      substance: "kept"
      pick_rate:
        value: 16
        provenance: "predicted"
    - original_letter: "C"
      new_letter: "B"
      mechanic: "fabricated_rule"
      substance: "kept"
      pick_rate:
        value: 18
        provenance: "predicted"
    - original_letter: "D"
      new_letter: "C"
      mechanic: "correct_answer"
      substance: "kept"
      pick_rate:
        value: 34
        provenance: "predicted"
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "Peter delivered a valid deed for a warehouse to Paul, Paul never recorded it, no third party appeared, and Peter claimed nonrecording defeated the transfer."
    variant_stem_one_sentence: "Naomi delivered a valid deed for an olive-press parcel to Lydia after a hymn-calligraphy commission, Lydia hid it in a Psalms hymnal without recording, no outsider appeared, and Naomi invoked the missing recorder stamp."
    dimensions_changed:
      - "asset/subject matter"
      - "transaction texture"
      - "specific storage fact"
      - "fact ordering and stem rhythm"
      - "cast"
      - "choice ordering"
      - "choice phrasing"
      - "setting/era/texture"
      - "call object"
    dimensions_skipped_with_reason:
      - dimension: "nonrecording fact"
        reason: "Legally load-bearing trigger."
      - dimension: "no third-party claimant"
        reason: "Legally necessary to avoid recording-act priority issue."

source_stack:
  - "Pasted BarMatrix row for Q19381."
  - "Existing C3 lessons and universal Cut → Clash → Call workflow."
  - "controlled_vocabularies.md."
  - "Lawyer-confirmation authorities only after student-access path."

student_access_contract:
  allowed_lessons:
    - "Lesson 1: TRUE and RESPONSIVE"
    - "Lesson 2: Cut → Clash → Call"
    - "Lesson 3: Standards vs Rules"
    - "Lesson 5: Falsity"
    - "Lesson 12: Anchor Deck"
    - "Lesson 14: Integration"
  allowed_gold_keys:
    - "GK-REAL_PROPERTY-RECORDING-VALIDITY-01"
  allowed_silver_keys:
    - "SK-REAL_PROPERTY-RECORDING-VALIDITY-01"
  prohibited_student_basis:
    - "Untaught recording-act doctrine beyond the Gold Key."
    - "Case citations."
    - "General real-property outline reasoning."

stem_parse:
  call_type: "ownership_result"
  legal_task: "Determine whether title passed between grantor and grantee."
  negative_stem: false
  adjacent_call_trap: "Recording priority against third parties."
  governing_issue: "Recording vs deed validity."
  parties:
    grantor: "Naomi"
    grantee: "Lydia"
  property: "olive-press parcel"

trigger_facts:
  - fact: "Naomi signed and handed Lydia a deed."
    access_label: "stem_visible"
    function: "delivery / grantor act"
  - fact: "The deed contained all required deed terms."
    access_label: "stem_visible"
    function: "valid-deed formalities supplied"
  - fact: "Lydia accepted it."
    access_label: "stem_visible"
    function: "acceptance supplied"
  - fact: "Lydia never recorded it."
    access_label: "stem_visible"
    function: "trap trigger"
  - fact: "No third party claims the parcel."
    access_label: "stem_visible"
    function: "keeps call between original parties"
  - fact: "Naomi challenges only the missing recorder stamp."
    access_label: "stem_visible"
    function: "isolates recording-vs-validity issue"

c3_routing:
  subject_fit: "Real Property = title source + validity/priority gate."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  method_class: "anchor_assisted"
  confidence: "ANCHOR_ASSISTED"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "C"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: "Calibration"

answer_array:
  geometry: "3-vs-1 recording-validity array"
  axis: "recording as validity condition vs recording as notice/priority protection"
  dominant_trap:
    choice: "A"
    basis: "predicted strongest misconception; no measured pick rates supplied"
  silver_key: "SK-REAL_PROPERTY-RECORDING-VALIDITY-01"

choice_walkthroughs:
  A:
    filter_broken: "NOT_TRUE"
    mold_code: "flat_misstatement"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "misstated_rule"
      - "common_student_myth"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "Recording-myth flat misstatement."
    c3_signal: "The choice makes nonrecording destroy the deed even though the stem supplies deed terms, delivery, acceptance, and no outsider."
    lawyer_confirmation: "Recording is not required for validity between grantor and grantee; authority in legal verification."
  B:
    filter_broken: "NOT_TRUE"
    mold_code: "fabricated_rule"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "sounds_lawyerly"
      - "misstated_rule"
      - "common_student_myth"
    method_class: "anchor_assisted"
    student_label: "Fabricated recording-stamp formality."
    c3_signal: "The choice invents a missing formality even though the stem says all required deed terms were present."
    lawyer_confirmation: "Recorder stamp is not a deed-validity formality for title passage between these parties."
  C:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "True and responsive residual."
    c3_signal: "It answers the exact call: ownership between grantor and grantee where no outsider appears."
    lawyer_confirmation: "A valid deed delivered and accepted passes title between grantor and grantee even if unrecorded."
  D:
    filter_broken: "NOT_TRUE"
    mold_code: "backwards"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "wrong_timing"
      - "misstated_rule"
      - "common_student_myth"
    method_class: "anchor_assisted"
    student_label: "Backwards timing condition."
    c3_signal: "The choice treats recording as the event that makes Lydia owner, reversing the title-passing sequence."
    lawyer_confirmation: "Title passed on valid delivery and acceptance, not on later recording, as between these parties."

residual_answer:
  choice: "C"
  text: "Lydia, because recording is not required for a valid deed to pass title between grantor and grantee."
  why_survives: "It is the only answer that keeps the call on validity between the original parties and uses the no-third-party fact correctly."

legal_leak_audit:
  student_accessible_claims:
    - claim: "The call is ownership between Naomi and Lydia."
      status: "passes"
      basis: "stem_visible"
    - claim: "No third party appears."
      status: "passes"
      basis: "stem_visible"
    - claim: "Three answers make recording decisive."
      status: "passes"
      basis: "answer_array"
    - claim: "Recording is not required for title passage between grantor and grantee."
      status: "passes only with Gold Key"
      basis: "GK-REAL_PROPERTY-RECORDING-VALIDITY-01"
  quarantined_lawyer_claims:
    - "Case/statutory authority for unrecorded-deed validity."
    - "Specific state recording-act variations."

gold_keys:
  - id: "GK-REAL_PROPERTY-RECORDING-VALIDITY-01"
    statement: "A valid deed delivered and accepted passes title between grantor and grantee even if unrecorded; recording protects notice and priority against outsiders."
    type: "distinction"
    unlocks: "Recording-vs-validity trap."
    trigger: "Valid deed + delivery + acceptance + no recording + no third-party claimant."
    tested_choice: "A"
    authority:
      - "Cornell Wex deed page."
      - "Muzzy v. Uttamchandani summary under ORS 93.640."
      - "California Civil Code § 1217 discussion."
    last_minute_review: true

silver_keys:
  - id: "SK-REAL_PROPERTY-RECORDING-VALIDITY-01"
    statement: "When three choices make missing recording decide ownership, first ask whether the stem has an outsider. No outsider means the array is testing validity between the original parties."
    type: "answer_array"
    navigates: "3-vs-1 recording trap."
    trigger: "All distractors point to nonrecording."
    tested_choice: "D"
    outline_code: "84040201"
    last_minute_review: true

remediation:
  card_id: "RP-ANCHOR-RECORDING-VALIDITY-01"
  title: "Recording vs Validity"
  signal: "Valid deed delivered and accepted, but not recorded."
  student_move: "Ask: original parties or outsider priority?"
  tiny_rule: "No outsider: recording is not required for title to pass between grantor and grantee."
  trap: "Treating the recorder’s office as the title-transfer event."
  confidence: "ANCHOR_ASSISTED"

distilled_core_question: "Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?"
review_truth: "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee."

case_study_output:
  final_student_script: "Valid deed. Delivered. Accepted. No outsider. Recording is a priority/notice move, not the validity move. Lydia owns."
  residual: "C"
  verdict: "ANCHOR_SOLVE"

quality_control:
  pass_available: true
  exactly_three_single_filter_distractors: true
  credited_answer_breaks_no_filter: true
  c3_residual_matches_key: true
  original_letters_outside_provenance: false
  gold_key_required_and_present: true
  silver_key_required_and_present: true
  no_new_clutter_issue: true

analytics_hooks:
  primary_trap: "recording_vs_validity"
  recovery_path: "ask original parties vs outsider"
  drill_family: "RP deed validity"
  outline_code: "84040201"
  component_routing:
    - "Gold Key recall"
    - "Answer-array 3-vs-1 recognition"
    - "CUT after anchor"
```

---

## B2) 17-section student case study

### 1. program_frame

This is a Real Property title-source question. Do not run a recording-act priority race unless the stem gives an outsider.

### 2. student_access_test

A student can see the call and the answer-array shape. A student cannot know, from structure alone, that recording is not required between grantor and grantee. That requires the Gold Key.

### 3. question_data

**Stem:** Naomi signed and delivered a deed to Lydia for an olive-press parcel. The deed had the required terms. Lydia accepted it. Lydia never recorded. No third party claims the parcel. Naomi says the missing recorder stamp defeats the deed.

**Call:** Who owns the parcel?

**Choices:** A, B, C, D as listed in the YAML.

### 4. distilled_core_question

Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?

### 5. call_and_prediction

The call is ownership between the original grantor and grantee. The adjacent trap is recording priority. Prediction after Gold Key: Lydia owns.

### 6. trigger_facts

| Trigger fact                                | Why it matters                            |
| ------------------------------------------- | ----------------------------------------- |
| Deed signed and handed over                 | Delivery / grantor transfer act.          |
| Required deed terms present                 | Validity gate supplied.                   |
| Lydia accepted                              | Acceptance supplied.                      |
| Never recorded                              | Trap fact.                                |
| No third party claims                       | Keeps this out of recording-act priority. |
| Naomi relies only on missing recorder stamp | Isolates recording vs validity.           |

### 7. governing_c3_lane

**Lane:** RULE + Gold Key.
**Phase:** CUT.
**Array:** Three choices make missing recording defeat title; one choice says recording is not required for validity between grantor and grantee.

### 8. choice_by_choice_walkthrough

#### Choice A

1. **Student-accessible C3 signal:** This choice makes “not recorded” equal “void.” That is a harsh recording-myth claim.
2. **Student label:** `flat_misstatement`, anchor-assisted.
3. **True/responsive version:** “Naomi may have a priority problem only if a protected third party appears.”
4. **Lawyer confirmation:** An unrecorded deed is not void between grantor and grantee merely because it was not recorded.

#### Choice B

1. **Student-accessible C3 signal:** This choice invents a recorder-stamp requirement even though the stem says the deed contained all required deed terms.
2. **Student label:** `fabricated_rule`, anchor-assisted.
3. **True/responsive version:** “A recorder’s stamp can matter for public notice after recording.”
4. **Lawyer confirmation:** A recorder’s stamp is not a required deed-validity formality for title passage between the original parties.

#### Choice C

1. **Student-accessible C3 signal:** This choice answers the exact call: ownership between Naomi and Lydia, with no outsider.
2. **Student label:** True and responsive residual.
3. **True/responsive version:** This is already the true and responsive version.
4. **Lawyer confirmation:** A valid deed delivered and accepted passes title between grantor and grantee even if unrecorded.

#### Choice D

1. **Student-accessible C3 signal:** This choice treats recording as the later event that makes Lydia owner.
2. **Student label:** `backwards`, anchor-assisted.
3. **True/responsive version:** “Lydia may need recording to protect against later protected outsiders.”
4. **Lawyer confirmation:** Recording is not a condition to title passing between the original parties.

### 9. residual_answer

**C survives.** It is the only choice that keeps the case where the stem puts it: title between grantor and grantee, not priority against a later claimant.

### 10. legal_leak_audit

Student-accessible moves: identify the call, identify no third party, see the 3-vs-1 recording pattern, apply the taught Gold Key.
Lawyer-only material: case citations, statutory variations, and recording-act categories.

**Drift audit:** The student explanation does not claim a recording rule is structurally visible without the Gold Key.

### 11. final_student_script

“Valid deed, delivered, accepted. No outsider. Recording is not the title-transfer event between these two. Cut the three recording-controls-title answers. Pick C.”

### 12. remediation_card

**Card:** RP-ANCHOR-RECORDING-VALIDITY-01
**Title:** Recording vs Validity
**Signal:** Valid deed delivered and accepted, but not recorded.
**Student move:** Ask: original parties or outsider priority?
**Tiny rule:** No outsider means recording is not required for title to pass between grantor and grantee.
**Trap:** Treating the recorder’s office as the owner-making event.
**Confidence:** ANCHOR_ASSISTED.

### Gold Key(s)

**GK-REAL_PROPERTY-RECORDING-VALIDITY-01**
A valid deed delivered and accepted passes title between grantor and grantee even if unrecorded; recording protects notice and priority against outsiders.

### Silver Key(s)

**SK-REAL_PROPERTY-RECORDING-VALIDITY-01**
When three choices make missing recording decide ownership, ask whether the stem has an outsider. No outsider means the array is testing validity between the original parties.

### 13. qa_checklist

| Check                                         | Result |
| --------------------------------------------- | ------ |
| Key breaks no filter                          | Pass   |
| Three distractors each break one filter       | Pass   |
| Residual equals post-shuffle key              | Pass   |
| Anchor required and supplied                  | Pass   |
| No third-party priority issue added           | Pass   |
| No church-property or First Amendment clutter | Pass   |

### 14. wrong_answer_recovery_paths

| Choice | Recovery path                                                                           |
| ------ | --------------------------------------------------------------------------------------- |
| A      | Do not turn missing recording into voidness. Ask original parties or outsider.          |
| B      | Do not invent a recorder-stamp formality. Use the stem’s valid-deed facts.              |
| D      | Do not delay title until recording. Delivery and acceptance already did the title work. |

### 15. outline_mastery_map

**Outline code:** 84040201
**Placement:** Real Property → Titles → Titles, Deeds, and Conveyancing → Conveyance by Deed → Requirements for valid deed.
**This item teaches:** Recording is separate from deed validity between grantor and grantee.

### 16. crossover_intersection_map

| Crossover                         | Shared C3 move                                                             |
| --------------------------------- | -------------------------------------------------------------------------- |
| Civil Procedure filing vs service | Correct event matters; adjacent procedural event is bait.                  |
| Recording acts                    | No outsider means no priority race.                                        |
| Contracts condition timing        | Do not invent a later condition when the operative event already occurred. |

### 17. review_truth

Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.

---

## B3) `c3_annotation`

```json
{
  "question_id": "19381_shepherd_olive_press_deed",
  "subject": "REAL_PROPERTY",
  "credited_answer": "C",
  "outline_code": "84040201",
  "distilled_core_question": "Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?",
  "review_truth": "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "C",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "ANCHOR_ASSISTED",
    "tension_axis": "recording as validity condition vs recording as notice/priority protection",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": null,
    "difficulty": "Calibration",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_TRUE",
        "mold": "flat_misstatement",
        "architecture": null,
        "card_ref": "GK-REAL_PROPERTY-RECORDING-VALIDITY-01",
        "explanation": "This choice states the recording myth in its harshest form: unrecorded equals void."
      },
      {
        "choice": "B",
        "filter_broken": "NOT_TRUE",
        "mold": "fabricated_rule",
        "architecture": null,
        "card_ref": "GK-REAL_PROPERTY-RECORDING-VALIDITY-01",
        "explanation": "This choice invents a recorder-stamp deed-validity requirement."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_TRUE",
        "mold": "backwards",
        "architecture": null,
        "card_ref": "GK-REAL_PROPERTY-RECORDING-VALIDITY-01",
        "explanation": "This choice reverses the timing by treating recording as the event that passes title."
      }
    ],
    "analyzer_notes": "drift_audit: Student-facing analysis uses the Gold Key for the deed-recording rule and does not pretend the rule is hard-structural. transformed_from: 19381. letter_map: A->A flat_misstatement; B->D backwards; C->B fabricated_rule; D->C correct_answer.",
    "gold_keys": [
      {
        "id": "GK-REAL_PROPERTY-RECORDING-VALIDITY-01",
        "statement": "A valid deed delivered and accepted passes title between grantor and grantee even if unrecorded; recording protects notice and priority against outsiders.",
        "type": "distinction",
        "unlocks": "Recording-vs-validity trap.",
        "trigger": "Valid deed + delivery + acceptance + no recording + no third-party claimant.",
        "tested_choice": "A",
        "authority": [
          "Cornell Wex deed page",
          "Muzzy v. Uttamchandani summary under ORS 93.640",
          "California Civil Code § 1217 discussion"
        ],
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-REAL_PROPERTY-RECORDING-VALIDITY-01",
        "statement": "When three choices make missing recording decide ownership, first ask whether the stem has an outsider. No outsider means the array is testing validity between the original parties.",
        "type": "answer_array",
        "navigates": "3-vs-1 recording trap.",
        "trigger": "All distractors point to nonrecording.",
        "tested_choice": "D",
        "outline_code": "84040201",
        "last_minute_review": true
      }
    ]
  }
}
```

---

## B4) `program_elements`

```json
{
  "question_id": "19381_shepherd_olive_press_deed",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040201",
  "distilled_core_question": "Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?",
  "review_truth": "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.",
  "tension": {
    "axis": "recording as validity condition vs recording as notice/priority protection",
    "splitting_fact": "No third party claims the parcel."
  },
  "traps": [
    {
      "choice": "A",
      "mold": "flat_misstatement",
      "architecture": null,
      "why_attractive": "This sells the harsh memory that missing a public filing kills a property transfer. The breaker is the Gold Key: recording protects priority, not validity between the original parties.",
      "focus_group_pct": 32,
      "pct_provenance": "predicted"
    },
    {
      "choice": "B",
      "mold": "fabricated_rule",
      "architecture": null,
      "why_attractive": "This sells a formalities reflex by turning the recorder’s stamp into another deed requirement. The breaker is that the stem already gives the deed-validity facts and the stamp belongs to recording.",
      "focus_group_pct": 18,
      "pct_provenance": "predicted"
    },
    {
      "choice": "D",
      "mold": "backwards",
      "architecture": null,
      "why_attractive": "This sells a timing compromise: Lydia will own later, after recording. The breaker is that title passed when the valid deed was delivered and accepted; no later recording step is needed between these parties.",
      "focus_group_pct": 16,
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "RP-ANCHOR-RECORDING-VALIDITY-01",
    "title": "Recording vs Validity",
    "signal": "Valid deed delivered and accepted, but not recorded.",
    "student_move": "Ask: original parties or outsider priority?",
    "tiny_rule": "No outsider: recording is not required for title to pass between grantor and grantee.",
    "trap": "Treating the recorder’s office as the title-transfer event.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "recording myths",
    "invented deed formalities",
    "validity vs priority confusion",
    "original parties vs third-party claimant"
  ]
}
```

---

## B5) `program_intelligence`

```json
{
  "question_id": "19381_shepherd_olive_press_deed",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040201",
  "distilled_core_question": "Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?",
  "review_truth": "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.",
  "wrong_answer_paths": [
    {
      "choice": "A",
      "filter_broken": "NOT_TRUE",
      "mold": "flat_misstatement",
      "why_a_student_picks_this": "The word void feels like a familiar property consequence for missing a formal filing.",
      "skipped_move": "Original parties vs outsider check.",
      "recovery_step": "Apply the Gold Key and ask whether a protected third party appears."
    },
    {
      "choice": "B",
      "filter_broken": "NOT_TRUE",
      "mold": "fabricated_rule",
      "why_a_student_picks_this": "The recorder’s stamp sounds official and formal, so it feels like a deed requirement.",
      "skipped_move": "Separate deed formalities from recording mechanics.",
      "recovery_step": "Use the stem: all required deed terms were already supplied."
    },
    {
      "choice": "D",
      "filter_broken": "NOT_TRUE",
      "mold": "backwards",
      "why_a_student_picks_this": "The answer offers a middle path by giving Lydia ownership later.",
      "skipped_move": "Check which event passes title between these parties.",
      "recovery_step": "Delivery and acceptance do the title-passing work; recording is not the timing gate here."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "anchor_recall",
      "target_skill": "Recording vs validity",
      "prompt": "A valid deed is delivered and accepted but not recorded. No third party appears. Who owns?",
      "answer": "The grantee owns; recording is not required between grantor and grantee."
    },
    {
      "drill_type": "answer_array",
      "target_skill": "3-vs-1 recording trap",
      "prompt": "Three choices give the grantor title because the deed was not recorded. One gives the grantee title because delivery and acceptance occurred. What is the array testing?",
      "answer": "Recording vs validity."
    },
    {
      "drill_type": "trigger_fact",
      "target_skill": "Outsider check",
      "prompt": "What fact would change this into a recording-act priority question?",
      "answer": "A later buyer, lender, creditor, or other protected third-party claimant."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "3-vs-1 array",
      "recording-myth cluster",
      "anchor-assisted CUT",
      "validity-priority gate"
    ],
    "misconception_tags": [
      "unrecorded means void",
      "recorder stamp required",
      "title passes only upon recording"
    ]
  },
  "component_routing": [
    "Lesson 1 TRUE and RESPONSIVE",
    "Lesson 2 Cut -> Clash -> Call",
    "Lesson 3 RULE anchor floor",
    "Lesson 5 flat misstatement / backwards",
    "Lesson 12 anchor deck",
    "Lesson 14 fast integration"
  ],
  "crossovers": [
    {
      "area": "Civil Procedure",
      "connection": "Filing vs service: correct legal event matters."
    },
    {
      "area": "Recording Acts",
      "connection": "Priority requires an outsider; no outsider keeps the question at validity."
    },
    {
      "area": "Contracts",
      "connection": "Do not invent a condition precedent after the operative transfer event has happened."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-REAL_PROPERTY-RECORDING-VALIDITY-01",
      "statement": "A valid deed delivered and accepted passes title between grantor and grantee even if unrecorded; recording protects notice and priority against outsiders.",
      "type": "distinction",
      "unlocks": "Recording-vs-validity trap.",
      "trigger": "Valid deed + delivery + acceptance + no recording + no third-party claimant.",
      "tested_choice": "A",
      "authority": [
        "Cornell Wex deed page",
        "Muzzy v. Uttamchandani summary under ORS 93.640",
        "California Civil Code § 1217 discussion"
      ],
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-REAL_PROPERTY-RECORDING-VALIDITY-01",
      "statement": "When three choices make missing recording decide ownership, first ask whether the stem has an outsider. No outsider means the array is testing validity between the original parties.",
      "type": "answer_array",
      "navigates": "3-vs-1 recording trap.",
      "trigger": "All distractors point to nonrecording.",
      "tested_choice": "D",
      "outline_code": "84040201",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Real Property > Titles > Titles, Deeds, and Conveyancing > Conveyance by Deed > Requirements for valid deed",
    "this_item_teaches": "Recording is separate from deed validity between grantor and grantee.",
    "fills": [
      "Deed delivery and acceptance gate",
      "Recording-vs-validity distinction",
      "No-third-party trigger discipline"
    ],
    "adjacent_to_master": [
      "Recording Acts > Bona fide purchaser",
      "Recording Acts > Types of notice",
      "Conveyance by Deed > Delivery and acceptance"
    ]
  }
}
```

[1]: https://www.law.cornell.edu/wex/deed?utm_source=chatgpt.com "deed | Wex | US Law | LII / Legal Information Institute"
[2]: https://wlo.willamette.edu/orappeals/2012/05/muzzy-v-uttamchandani.html?utm_source=chatgpt.com "Willamette Law Online - Oregon Court of Appeals Updates - Muzzy v. Uttamchandani | Willamette University College of Law"
[3]: https://underwood.law/blog/what-is-the-effect-of-an-unrecorded-deed-civ-code-1217?utm_source=chatgpt.com "What is the effect of an unrecorded deed? (Civ. Code 1217) | California Partition Law Blog"

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "19381_shepherd_olive_press_deed"
  question_id: "19381_shepherd_olive_press_deed"
  subject: "REAL_PROPERTY"
  topic: "Conveyance by Deed — Requirements for Valid Deed"
  subtopic: "B1"
  outline_code: "84040201"
  official_key: "C"
transform_provenance:
  transformed_from: "19381"
  variant_slug: "shepherd_olive_press_deed"
  original_key_letter: "D"
  new_key_letter: "C"
  letter_map: "- original_letter: \"A"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_SOLVE"
  confidence: "ANCHOR_ASSISTED"
  residual: "C"
distilled_core_question: "Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?"
review_truth: "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 19381_shepherd_olive_press_deed; source 19381.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject REAL_PROPERTY; topic Conveyance by Deed — Requirements for Valid Deed; subtopic B1.
4. **distilled_core_question:** Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?
5. **call_and_prediction:** Credited answer: C.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 84040201.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** C
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 84040201.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.
```

### 3. c3_annotation

```json
{
  "question_id": "19381_shepherd_olive_press_deed",
  "subject": "REAL_PROPERTY",
  "credited_answer": "C",
  "outline_code": "84040201",
  "distilled_core_question": "Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?",
  "review_truth": "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "C",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 19381; letter_map: - original_letter: \"A",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "19381_shepherd_olive_press_deed",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040201",
  "distilled_core_question": "Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?",
  "review_truth": "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-19381",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.",
    "trap": "See preserved traps when present.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "19381_shepherd_olive_press_deed",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040201",
  "distilled_core_question": "Grantor signed, delivered, and grantee accepted a valid deed, but the grantee never recorded it. No third party claims the land. Who owns it?",
  "review_truth": "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.",
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
    "this_item_teaches": "Recording protects against outsiders; it is not required for a valid deed to pass title between grantor and grantee.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
