---
qid: "21869_tiny_house_hymn_sheet"
transformed_from: "21869"
subject: "CRIMINAL"
topic: "Fourth Amendment"
subtopic: "Arrest warrants and home entry"
outline_code: "75070201"
key: "D"
original_key: "B"
letter_map: "- original_letter: \"A"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "An arrest warrant is not a search warrant for someone else’s home."
---
# A) PASS-1 TRANSFORM REPORT

## 1. Final question — revised stem + call

**Source row:** QID 21869, Criminal Procedure / Fourth Amendment, tested rule: arrest warrant for a suspect does not by itself authorize entry into a third party’s home without a search warrant or valid exception. The source row gives official key **B** and states the arrest warrant did not authorize warrantless third-party-home entry absent consent or exigency. 

**Final Christian variation — “Tiny-House Hymn-Sheet Night”**

At Lydia’s tiny house, a private psalm-singing rehearsal has turned into a hymn-sheet stapling contest. Police, holding an arrest warrant for Timothy, get a tip that Timothy is helping there. They have no search warrant for Lydia’s home, no consent, and no emergency. They enter the tiny house and arrest Timothy in the prayer nook.

**Call:** Was the entry lawful?

## 2. Distilled Core Question

Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?

## 3. Final answer choices — post-shuffle

A. Yes, because the tip gave officers reasonable suspicion that Timothy was inside.
B. Yes, because an arrest warrant travels with the suspect into any private home.
C. No, but only because Timothy was seized in the prayer nook rather than at the front door.
D. No, because officers needed a search warrant for Lydia’s home or a valid exception.

## 5. Correct answer

**D**. Original key letter: **B**.

## 6. Letter Map

| Original letter | New letter | Mechanic                                                  | Substance | Pick rate       |
| --------------- | ---------: | --------------------------------------------------------- | --------- | --------------- |
| A               |          B | `tiered_absolute` / arrest-warrant-follows-any-home trap  | kept      | 32% `predicted` |
| B               |          D | `correct_answer`                                          | kept      | 41% `predicted` |
| C               |          A | `flat_misstatement` / reasonable-suspicion threshold trap | kept      | 18% `predicted` |
| D               |          C | `wrong_element` / room-location trap                      | kept      | 9% `predicted`  |

No measured focus-group percentages were supplied in the source row. All percentages are prediction labels, not measured data.

## 7. Full right-answer explanation

**D is correct.** The entry was into Lydia’s home, not Timothy’s. **Gold Key:** an arrest warrant authorizes seizure of the named person; it does not itself authorize officers to enter and search a third party’s home for that person. The officers needed a search warrant for Lydia’s home or a valid exception such as consent or exigency. **Silver Key:** resolve the door before the room. The question asks about crossing Lydia’s threshold, so the prayer-nook detail comes too late to supply entry authority.

## 8. Full wrong-answer explanations

**A.** The choice sells the idea that a specific tip moves the police close enough to act. The breaker is threshold mismatch: reasonable suspicion is not the home-entry authority needed for a third party’s private dwelling.

**B.** The choice sells a portable-warrant story: once police have a warrant for Timothy, the warrant supposedly follows him everywhere. **Gold Key:** person warrant is not place warrant; “any private home” is the overbroad move that the third-party-home rule defeats.

**C.** The choice sells a concrete fact after entry: the prayer nook sounds like a meaningful location detail. **Silver Key:** when the call asks whether entry was lawful, an interior-room fact is late; the threshold problem exists before the prayer nook.

## 9. Black-letter verification and legal reasoning

The rule and credited outcome are unchanged from Q21869: police had an arrest warrant for the suspect, entered a third party’s home without a search warrant, consent, or exigency, and the entry was unlawful. The governing authority is **Steagald v. United States**, which held that a third-party-home search for the subject of an arrest warrant violated the Fourth Amendment absent consent or exigent circumstances; the Court emphasized that the arrest warrant protected the suspect’s seizure interest but did not protect the third party’s home-privacy interest. ([Justia Law][1]) **Payton v. New York** supplies the adjacent rule: an arrest warrant may authorize entry into the suspect’s own dwelling when there is reason to believe the suspect is within, but the home threshold remains a firm Fourth Amendment line. ([Justia Law][2])

## 10. Rigor / difficulty preservation

The new item keeps the same rule, same call function, same four mechanics, same two-yes/two-no geometry, and same dominant trap. Difficulty is preserved because the attractive wrong answer still uses the intuitive “arrest warrant follows the person” myth, while another trap lowers the threshold to reasonable suspicion.

## 11. C3 elimination walkthrough — CUT → CLASH → CALL

**CUT A:** “Reasonable suspicion” is a lower-threshold authority claim. Gold Key cuts it: third-party home entry requires a search warrant or valid exception.

**CUT B:** “Any private home” is the overbroad portability claim. Gold Key cuts it: an arrest warrant for Timothy does not become a search warrant for Lydia’s home.

**CUT C:** This answers the wrong point in time. The call asks whether officers could enter Lydia’s home; “prayer nook rather than front door” is an interior-location issue after entry.

**Residual:** D is true and responsive. No CLASH or CALL needed.

## 12. Divergence Audit

| Recognition-Kill dimension   | Result                                                                                                                                                     |
| ---------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Asset / subject matter       | Friend’s apartment → Lydia’s tiny house with hymn sheets and prayer nook.                                                                                  |
| Transaction / activity frame | Visiting a friend → private psalm-singing rehearsal and hymn-sheet stapling contest.                                                                       |
| Specific facts               | Tip now places Timothy at a private Christian home gathering; arrest occurs in a prayer nook.                                                              |
| Numbers                      | No operative numbers in original; no new legally operative number added.                                                                                   |
| Fact ordering / rhythm       | Setting comes first; warrant/tip/search-warrant facts are rearranged.                                                                                      |
| Cast size / roles            | Victor + unnamed friend → Timothy + Lydia + private rehearsal context.                                                                                     |
| Choice ordering              | Original B moved to new D; full map emitted.                                                                                                               |
| Choice phrasing              | All choices paraphrased while retaining legal substance.                                                                                                   |
| Setting / era / texture      | Generic apartment → vivid tiny-house private Christian rehearsal.                                                                                          |
| Call wording                 | “Was the entry into the friend’s apartment lawful?” → “Was the entry lawful?” Function unchanged.                                                          |
| Skipped dimensions           | No added church property, pledge, religious discrimination, or First Amendment fact; skipped because those would create collateral constitutional clutter. |

**Original stem summary:** Police used an arrest warrant to enter a friend’s apartment and arrest Victor inside without a search warrant or exception.
**Variant stem summary:** Police used an arrest warrant to enter Lydia’s tiny house during a private psalm-singing rehearsal and arrest Timothy in a prayer nook without a search warrant or exception.

Recognition test passes: the shared content is the legal rule only.

## 13. Review Truth

An arrest warrant is not a search warrant for someone else’s home.

## 14. Five variations considered

|  # | Title                                | Setting / cast                                           | Preserved issue                   | Why memorable                               | Legal risks                                 | Divergence score    |
| -: | ------------------------------------ | -------------------------------------------------------- | --------------------------------- | ------------------------------------------- | ------------------------------------------- | ------------------- |
|  1 | **Tiny-House Hymn-Sheet Night**      | Lydia’s tiny house; Timothy at private psalm rehearsal   | Arrest warrant + third-party home | Tiny house, hymn-sheet contest, prayer nook | Low; private home, no church-property issue | **9/10 — selected** |
|  2 | Nativity Storage Garage Apartment    | Mary’s garage apartment; Peter organizing nativity props | Same                              | Strong Christmas texture                    | “Garage” could blur home vs storage         | 8/10                |
|  3 | Psalm Banner Quilting Bee            | Ruth’s row house; Daniel sewing banners                  | Same                              | Visual, home-based, private                 | Slight risk of over-clutter                 | 8/10                |
|  4 | Resurrection Rolls Recipe Night      | Martha’s condo; Stephen baking rolls                     | Same                              | Food-memory hook                            | Kitchen detail may distract but safe        | 8/10                |
|  5 | Backyard Guesthouse Puppet Rehearsal | Naomi’s guesthouse; Barnabas with puppet props           | Same                              | High divergence                             | Guesthouse might raise occupancy nuance     | 7/10                |

Selected version wins because it maximizes surface divergence while staying a clean private-dwelling entry question.

# B) PASS-2 FIVE BLOCKS

## B1. Question YAML

```yaml
barmatrix_row:
  qid: "21869_tiny_house_hymn_sheet"
  transformed_from: "21869"
  internal_id: "CR-333"
  subject: "CRIMINAL"
  subject_display: "Criminal Procedure"
  topic: "Fourth Amendment"
  subtopic: "Arrest warrants and home entry"
  outline_code: "75070201"
  selection_percentages:
    A:
      value: 18
      provenance: "predicted"
    B:
      value: 32
      provenance: "predicted"
    C:
      value: 9
      provenance: "predicted"
    D:
      value: 41
      provenance: "predicted"
  official_key: "D"
  original_key_letter: "B"
  call: "Was the entry lawful?"
  stem: "At Lydia’s tiny house, a private psalm-singing rehearsal has turned into a hymn-sheet stapling contest. Police, holding an arrest warrant for Timothy, get a tip that Timothy is helping there. They have no search warrant for Lydia’s home, no consent, and no emergency. They enter the tiny house and arrest Timothy in the prayer nook."
  choices:
    A: "Yes, because the tip gave officers reasonable suspicion that Timothy was inside."
    B: "Yes, because an arrest warrant travels with the suspect into any private home."
    C: "No, but only because Timothy was seized in the prayer nook rather than at the front door."
    D: "No, because officers needed a search warrant for Lydia’s home or a valid exception."

transform_provenance:
  transformed_from: "21869"
  variant_slug: "tiny_house_hymn_sheet"
  original_key_letter: "B"
  new_key_letter: "D"
  letter_map:
    - original_letter: "A"
      new_letter: "B"
      mechanic: "tiered_absolute"
      substance: "kept"
      pick_rate:
        value: 32
        provenance: "predicted"
    - original_letter: "B"
      new_letter: "D"
      mechanic: "correct_answer"
      substance: "kept"
      pick_rate:
        value: 41
        provenance: "predicted"
    - original_letter: "C"
      new_letter: "A"
      mechanic: "flat_misstatement"
      substance: "kept"
      pick_rate:
        value: 18
        provenance: "predicted"
    - original_letter: "D"
      new_letter: "C"
      mechanic: "wrong_element"
      substance: "kept"
      pick_rate:
        value: 9
        provenance: "predicted"
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "Police used an arrest warrant to enter a friend’s apartment and arrest Victor inside without a search warrant or exception."
    variant_stem_one_sentence: "Police used an arrest warrant to enter Lydia’s tiny house during a private psalm-singing rehearsal and arrest Timothy in a prayer nook without a search warrant or exception."
    dimensions_changed:
      - "asset_subject_matter"
      - "activity_frame"
      - "specific_facts"
      - "fact_ordering_and_rhythm"
      - "cast_size_roles"
      - "choice_ordering"
      - "choice_phrasing"
      - "setting_era_texture"
      - "call_wording"
    dimensions_skipped_with_reason:
      - dimension: "legally_operative_numbers"
        reason: "No operative number existed in the source row; adding one would create clutter."
      - dimension: "church_property"
        reason: "Skipped to avoid First Amendment or church-property collateral issues."

source_stack:
  - "Pasted BarMatrix row Q21869."
  - "Controlled vocabularies file for controlled fields."
  - "C3 universal lessons: True/Responsive, Cut-Clash-Call, Overclaim, Falsity, Issue-Sense, Bait Architecture, Anchor Deck, Calibration."
  - "Official explanation, quarantined to lawyer_confirmation."
  - "Steagald / Payton authority, lawyer-confirmation only."

student_access_contract:
  allowed_lessons:
    - "Lesson 1: TRUE and RESPONSIVE"
    - "Lesson 2: CUT -> CLASH -> CALL"
    - "Lesson 4: Overclaim"
    - "Lesson 5: Falsity"
    - "Lesson 7: Predict before you peek"
    - "Lesson 8: Not-responsive molds"
    - "Lesson 11: Bait architecture"
    - "Lesson 12: Anchor Deck"
    - "Lesson 14: Full workflow"
  allowed_anchors:
    - "CRIM-06 Fourth Amendment warrant requirement and exceptions"
    - "GK-CRIM-THIRD-PARTY-HOME-01"
  access_limit: "Students may use the Gold Key to distinguish a person warrant from a place warrant, but may not import untaught Fourth Amendment doctrine beyond that tiny anchor."

stem_parse:
  call_type: "positive"
  negative_stem_inversion: false
  adjacent_call_trap: "Whether police could arrest Timothy once inside, rather than whether they could enter Lydia’s home."
  role: "court"
  legal_issue: "Fourth Amendment home entry with arrest warrant for suspect in third party's home."
  governing_rule_question: "Did officers need a search warrant for the third party's home or a valid exception?"

trigger_facts:
  - fact: "Police held an arrest warrant for Timothy."
    access_label: "Gold_Key_trigger"
    role: "tempts arrest-warrant portability"
  - fact: "Timothy was at Lydia’s tiny house."
    access_label: "Gold_Key_trigger"
    role: "third-party home"
  - fact: "Police had no search warrant for Lydia’s home."
    access_label: "Gold_Key_trigger"
    role: "missing place warrant"
  - fact: "No consent and no emergency."
    access_label: "Gold_Key_trigger"
    role: "no valid exception stated"
  - fact: "Timothy was arrested in the prayer nook."
    access_label: "C3_visible"
    role: "room-location distractor; not threshold authority"

c3_routing:
  subject_fit: "Criminal Procedure = constitutional threshold authority + remedy/frame discipline."
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
  difficulty: "medium-hard"
  call_heuristic: null

answer_array:
  geometry: "2x2 yes/no authority-source array"
  yes_choices:
    - "A"
    - "B"
  no_choices:
    - "C"
    - "D"
  silver_key_signal: "Two yes answers supply insufficient authority; one no answer gives a late interior-room reason; the correct no answer answers the threshold entry call."

choice_walkthroughs:
  A:
    filter_broken: "NOT_TRUE"
    mold_code: "flat_misstatement"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "wrong_standard"
      - "misstated_rule"
      - "sounds_lawyerly"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "Lower-threshold authority trap"
    c3_signal: "The answer uses a suspicion standard to justify crossing a home threshold."
    lawyer_confirmation: "Reasonable suspicion that the suspect is inside does not substitute for a search warrant or exception for a third party's home."
  B:
    filter_broken: "NOT_TRUE"
    mold_code: "tiered_absolute"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "overbroad_rule"
      - "common_student_myth"
      - "sounds_lawyerly"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "Any-home arrest-warrant overclaim"
    c3_signal: "The phrase 'any private home' is the overclaim; the Gold Key tells the student why the scope is too broad."
    lawyer_confirmation: "An arrest warrant for Timothy does not authorize entry into Lydia's home absent a search warrant or valid exception."
  C:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "answer_to_different_question"
      - "wrong_timing"
      - "legally_true_but_irrelevant"
      - "half_right_answer"
    method_class: "hard_structural"
    student_label: "Interior-room distractor"
    c3_signal: "The choice answers where Timothy was seized after entry, not whether officers could cross Lydia's threshold."
    lawyer_confirmation: "The legal defect is the entry into the third party's home, not the prayer-nook location."
  D:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "Gold-Key residual"
    c3_signal: "This is the only choice that answers the threshold-entry call with the missing search warrant or exception."
    lawyer_confirmation: "This states the Steagald rule."

residual_answer:
  choice: "D"
  explanation: "D alone is true and responsive after the Gold Key cuts A and B and Issue-Sense cuts C."

legal_leak_audit:
  C3_visible:
    - "C is not responsive because it answers a room-location issue after the entry."
    - "B contains an overclaim signal: 'any private home.'"
  anchor_required:
    - "A requires the Gold Key to know reasonable suspicion is not enough."
    - "B requires the Gold Key to know an arrest warrant does not travel into third-party homes."
    - "D requires the Gold Key to affirm the rule."
  lawyer_only_quarantined:
    - "Steagald and Payton authority appear only in lawyer_confirmation / authority fields."
  drift_audit: "No student-facing explanation asserts lawyer-only doctrine without naming the Gold Key."

gold_keys:
  - id: "GK-CRIM-THIRD-PARTY-HOME-01"
    statement: "An arrest warrant lets police seize the named suspect; it does not by itself authorize entry into someone else’s home. For a third party’s home, look for a search warrant for that home, consent, or exigency."
    type: "distinction"
    unlocks: "arrest-warrant-follows-suspect trap"
    trigger: "arrest warrant + suspect located in a third party's home"
    tested_choice: "B"
    authority: "Steagald v. United States, 451 U.S. 204 (1981); Payton v. New York, 445 U.S. 573 (1980)"
    last_minute_review: true

silver_keys:
  - id: "SK-CRIM-ENTRY-FIRST-01"
    statement: "When the call asks whether entry into a home was lawful, decide the door before the room. A bedroom, prayer nook, or living room fact cannot supply authority to cross the threshold."
    type: "cut"
    navigates: "interior-room distractor"
    trigger: "answer turns on where the suspect was found after entry"
    tested_choice: "C"
    outline_code: "75070201"
    last_minute_review: true

remediation:
  card_id: "CRIM-REM-THIRD-PARTY-HOME-01"
  title: "Person warrant vs place warrant"
  signal: "Arrest warrant for suspect + suspect inside someone else's home."
  student_move: "Ask whose home is being entered."
  tiny_rule: "Own home may be Payton; third-party home needs Steagald search warrant or exception."
  trap: "Arrest-warrant portability."
  confidence: "ANCHOR_ASSISTED"

distilled_core_question: "Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?"
review_truth: "An arrest warrant is not a search warrant for someone else’s home."

case_study_output:
  final_student_script: "Door first. This is Lydia’s home, not Timothy’s. No search warrant, no consent, no emergency. Cut the any-home answer, cut reasonable suspicion, cut the prayer-nook answer. Pick D."
  residual: "D"

quality_control:
  pass_requirements:
    true_responsive_residual: true
    exactly_three_single_filter_distractors: true
    official_key_preserved_after_shuffle: true
    no_uncontrolled_vocab_values: true
    no_first_amendment_clutter: true
    legal_authority_quarantined: true
  notes:
    - "All pick rates are predicted because no original percentages were supplied."
    - "No distractor swap performed."

analytics_hooks:
  component_routing:
    - "Lesson 4: tiered_absolute"
    - "Lesson 5: flat_misstatement"
    - "Lesson 8: wrong_element"
    - "Lesson 12: Gold Key anchor"
    - "Lesson 14: CUT path"
  trap_tags:
    - "arrest_warrant_portability"
    - "reasonable_suspicion_threshold_lure"
    - "room_scope_after_entry_lure"
  drill_seed: "Arrest warrant for suspect; suspect in third party home; no search warrant or exception."
```

## B2. Student case study — 17 sections

## program_frame

This is a Fourth Amendment threshold-authority question. The answer turns on whether the officers had authority to enter **Lydia’s home**, not whether Timothy could be arrested once found.

## student_access_test

A student can structurally cut **C** without new doctrine: it answers the wrong moment. The student needs the Gold Key to cut **A** and **B** and to select **D**. That makes the item **ANCHOR_SOLVE**, not a hard-structural solve.

## question_data

**Question ID:** 21869_tiny_house_hymn_sheet
**Subject:** CRIMINAL
**Topic:** Fourth Amendment
**Call:** Was the entry lawful?
**Credited answer:** D
**Post-shuffle choices:** A, B, C, D as shown above.

## distilled_core_question

Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?

## call_and_prediction

Call: was the entry into the home lawful?

Prediction: No. The home belongs to Lydia. The warrant names Timothy. No search warrant, consent, or emergency appears.

## trigger_facts

| Fact                               | Why it matters                              |
| ---------------------------------- | ------------------------------------------- |
| Arrest warrant for Timothy         | Tempts the “person warrant travels” answer. |
| Lydia’s tiny house                 | Third-party home trigger.                   |
| No search warrant for Lydia’s home | Missing place warrant.                      |
| No consent / no emergency          | No exception.                               |
| Prayer nook                        | Late interior-location bait.                |

## governing_c3_lane

**Lane:** Anchor-assisted CUT.
**Subject FIT:** Criminal Procedure = constitutional threshold authority + frame discipline.
**Gold Key needed:** person warrant vs place warrant.

## choice_by_choice_walkthrough

### A

1. **Student-accessible C3 signal:** The answer lowers the threshold from home-entry authority to suspicion that Timothy is inside.
2. **Student label:** Lower-threshold authority trap.
3. **True/responsive version:** “Yes, if officers had a search warrant for Lydia’s home or a valid exception.”
4. **Lawyer confirmation:** Reasonable suspicion does not authorize warrantless third-party-home entry.

### B

1. **Student-accessible C3 signal:** “Any private home” is the overclaim sound.
2. **Student label:** Any-home warrant overclaim.
3. **True/responsive version:** “An arrest warrant may authorize entry into the suspect’s own home when the suspect lives there and is believed inside.”
4. **Lawyer confirmation:** Steagald blocks using an arrest warrant alone to enter a third party’s home.

### C

1. **Student-accessible C3 signal:** The prayer nook is after-entry geography. The call asks about entry.
2. **Student label:** Interior-room distractor.
3. **True/responsive version:** “No, because the officers lacked authority to enter Lydia’s home in the first place.”
4. **Lawyer confirmation:** The defect exists at the threshold; room-by-room scope is not the basis.

### D

1. **Student-accessible C3 signal:** It matches the predicted answer: no search warrant or exception for Lydia’s home.
2. **Student label:** Gold-Key residual.
3. **True/responsive version:** This is the true and responsive version.
4. **Lawyer confirmation:** This states the Steagald rule.

## residual_answer

**D remains.** It is the only answer that addresses the threshold entry into the third party’s home.

## legal_leak_audit

No student-facing path says “Steagald” as the first-pass reason. The student path says: door first, third-party home, no search warrant or exception. Doctrine names stay in lawyer confirmation.

**Drift audit:** A and B are anchor-assisted, C is hard structural, D is anchor-assisted residual; no lawyer-only proposition is mislabeled as pure structure.

## final_student_script

Door first. This is Lydia’s home, not Timothy’s. No search warrant. No consent. No emergency. Cut reasonable suspicion. Cut “any private home.” Cut prayer nook because it is after entry. Pick D.

## remediation_card

**CRIM-REM-THIRD-PARTY-HOME-01 — Person warrant vs place warrant**

Signal: arrest warrant for one person + police enter someone else’s home.
Student move: ask whose home is crossed.
Tiny rule: third-party home needs search warrant or valid exception.
Trap: arrest warrant portability.
Confidence: ANCHOR_ASSISTED.

## Gold Key(s)

**GK-CRIM-THIRD-PARTY-HOME-01**
An arrest warrant lets police seize the named suspect; it does not by itself authorize entry into someone else’s home. For a third party’s home, look for a search warrant for that home, consent, or exigency.

Type: `distinction`
Trigger: arrest warrant + suspect in third party’s home.
Tested choice: B.

## Silver Key(s)

**SK-CRIM-ENTRY-FIRST-01**
When the call asks whether entry into a home was lawful, decide the door before the room. A bedroom, prayer nook, or living room fact cannot supply authority to cross the threshold.

Type: `cut`
Trigger: answer turns on where the suspect was found after entry.
Tested choice: C.

## qa_checklist

| Check                                        | Result |
| -------------------------------------------- | ------ |
| Rule unchanged                               | Pass   |
| Key substance unchanged                      | Pass   |
| Three distractors each break one filter      | Pass   |
| Credited answer breaks no filter             | Pass   |
| No First Amendment / church-property clutter | Pass   |
| Legal authority quarantined                  | Pass   |
| Post-shuffle key consistent                  | Pass   |

## wrong_answer_recovery_paths

| Choice | Why a student picks it             | Recovery                                                            |
| ------ | ---------------------------------- | ------------------------------------------------------------------- |
| A      | Tip feels like enough certainty.   | Replace “how sure are they?” with “what authority lets them enter?” |
| B      | Arrest warrant feels portable.     | Use Gold Key: person warrant is not place warrant.                  |
| C      | Prayer nook is concrete and vivid. | Use Silver Key: door before room.                                   |

## outline_mastery_map

**Placement:** 75070201 — Criminal Procedure / Fourth Amendment / Searches and Seizures / Warrant requirement.
**This item teaches:** arrest warrant for suspect vs search warrant for third-party home.
**Fills:** Steagald home-entry anchor.
**Adjacent to master:** Payton own-home arrest warrant rule; exigent circumstances; consent.

## crossover_intersection_map

| Crossover                                 | Use                                                                  |
| ----------------------------------------- | -------------------------------------------------------------------- |
| Civil Procedure threshold logic           | Threshold before later details.                                      |
| Evidence purpose discipline               | Ask what the fact is doing; prayer nook is not doing threshold work. |
| Constitutional Law home-privacy threshold | Home entry gets special warrant scrutiny.                            |

## review_truth

An arrest warrant is not a search warrant for someone else’s home.

## B3. c3_annotation

```json
{
  "question_id": "21869_tiny_house_hymn_sheet",
  "subject": "CRIMINAL",
  "credited_answer": "D",
  "outline_code": "75070201",
  "distilled_core_question": "Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?",
  "review_truth": "An arrest warrant is not a search warrant for someone else’s home.",
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
    "difficulty": "medium-hard",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_TRUE",
        "mold": "flat_misstatement",
        "architecture": null,
        "card_ref": "GK-CRIM-THIRD-PARTY-HOME-01",
        "explanation": "The choice uses reasonable suspicion as the authority for entering a third party's home. The Gold Key requires a search warrant for that home or a valid exception."
      },
      {
        "choice": "B",
        "filter_broken": "NOT_TRUE",
        "mold": "tiered_absolute",
        "architecture": null,
        "card_ref": "GK-CRIM-THIRD-PARTY-HOME-01",
        "explanation": "The phrase 'any private home' overextends the arrest warrant. The Gold Key separates a person warrant from a place warrant."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "wrong_element",
        "architecture": null,
        "card_ref": "SK-CRIM-ENTRY-FIRST-01",
        "explanation": "The prayer-nook fact concerns where Timothy was found after entry. The call asks whether entry was lawful."
      }
    ],
    "analyzer_notes": "drift_audit: authority quarantined; A/B/D anchor-assisted, C hard structural; transformed_from: 21869; letter_map: A->B, B->D, C->A, D->C",
    "gold_keys": [
      {
        "id": "GK-CRIM-THIRD-PARTY-HOME-01",
        "statement": "An arrest warrant lets police seize the named suspect; it does not by itself authorize entry into someone else’s home. For a third party’s home, look for a search warrant for that home, consent, or exigency.",
        "type": "distinction",
        "unlocks": "arrest-warrant-follows-suspect trap",
        "trigger": "arrest warrant + suspect located in a third party's home",
        "tested_choice": "B",
        "authority": "Steagald v. United States, 451 U.S. 204 (1981); Payton v. New York, 445 U.S. 573 (1980)",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CRIM-ENTRY-FIRST-01",
        "statement": "When the call asks whether entry into a home was lawful, decide the door before the room. A bedroom, prayer nook, or living room fact cannot supply authority to cross the threshold.",
        "type": "cut",
        "navigates": "interior-room distractor",
        "trigger": "answer turns on where the suspect was found after entry",
        "tested_choice": "C",
        "outline_code": "75070201",
        "last_minute_review": true
      }
    ]
  }
}
```

## B4. program_elements

```json
{
  "question_id": "21869_tiny_house_hymn_sheet",
  "subject": "CRIMINAL",
  "outline_code": "75070201",
  "distilled_core_question": "Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?",
  "review_truth": "An arrest warrant is not a search warrant for someone else’s home.",
  "tension": null,
  "traps": [
    {
      "choice": "A",
      "mold": "flat_misstatement",
      "architecture": null,
      "why_attractive": "The tip makes the police seem specifically focused rather than fishing. The breaker is that suspicion level is not the authority needed to enter a third party’s home.",
      "focus_group_pct": 18,
      "pct_provenance": "predicted"
    },
    {
      "choice": "B",
      "mold": "tiered_absolute",
      "architecture": null,
      "why_attractive": "The answer treats an arrest warrant as portable authority that follows Timothy wherever he goes. The breaker is the Gold Key: a person warrant does not become a place warrant for Lydia’s home.",
      "focus_group_pct": 32,
      "pct_provenance": "predicted"
    },
    {
      "choice": "C",
      "mold": "wrong_element",
      "architecture": null,
      "why_attractive": "The prayer nook is a vivid concrete fact, so it feels legally operative. The breaker is the Silver Key: entry authority is decided at the door, not by the room where the arrest happens.",
      "focus_group_pct": 9,
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "CRIM-REM-THIRD-PARTY-HOME-01",
    "title": "Person warrant vs place warrant",
    "signal": "Arrest warrant for suspect + suspect inside someone else's home.",
    "student_move": "Ask whose home the police entered.",
    "tiny_rule": "Third-party home requires a search warrant for that home or a valid exception.",
    "trap": "Arrest warrant portability.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "arrest_warrant_portability",
    "reasonable_suspicion_threshold_lure",
    "interior_room_scope_lure",
    "third_party_home_privacy"
  ]
}
```

## B5. program_intelligence

```json
{
  "question_id": "21869_tiny_house_hymn_sheet",
  "subject": "CRIMINAL",
  "outline_code": "75070201",
  "distilled_core_question": "Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?",
  "review_truth": "An arrest warrant is not a search warrant for someone else’s home.",
  "wrong_answer_paths": [
    {
      "choice": "A",
      "filter_broken": "NOT_TRUE",
      "mold": "flat_misstatement",
      "why_a_student_picks_this": "The student treats a specific tip as enough to make entry reasonable.",
      "skipped_move": "Gold Key threshold check.",
      "recovery_step": "Ask whether the answer supplies a warrant or valid exception for the home entered."
    },
    {
      "choice": "B",
      "filter_broken": "NOT_TRUE",
      "mold": "tiered_absolute",
      "why_a_student_picks_this": "The student overgeneralizes the arrest warrant and hears 'warrant' as enough.",
      "skipped_move": "Person-warrant versus place-warrant distinction.",
      "recovery_step": "Mark 'any private home' as the overclaim and apply the Gold Key."
    },
    {
      "choice": "C",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "wrong_element",
      "why_a_student_picks_this": "The student grabs the prayer-nook detail because it is concrete.",
      "skipped_move": "Call lock: entry, not room location.",
      "recovery_step": "Resolve the door before the room."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "anchor_recall",
      "target_skill": "Gold Key recall",
      "prompt": "Police have an arrest warrant for Paul and enter Ruth’s home to find him without a search warrant, consent, or exigency. Lawful entry?",
      "answer": "No. Third-party home requires a search warrant or valid exception."
    },
    {
      "drill_type": "cut",
      "target_skill": "Overclaim detection",
      "prompt": "Cut: 'Yes, because an arrest warrant follows the suspect into any home.'",
      "answer": "tiered_absolute; arrest warrant does not authorize entry into any third-party home."
    },
    {
      "drill_type": "issue_sense",
      "target_skill": "Wrong element / wrong timing",
      "prompt": "Call asks whether entry into Naomi’s home was lawful. Choice says no only because suspect was found in the pantry.",
      "answer": "NOT_RESPONSIVE; room fact comes after entry."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "third_party_home_entry",
      "arrest_warrant_vs_search_warrant",
      "threshold_authority",
      "gold_key_required"
    ],
    "misconception_tags": [
      "warrant_is_warrant",
      "reasonable_suspicion_suffices",
      "interior_location_controls"
    ]
  },
  "component_routing": [
    "Lesson 1: TRUE and RESPONSIVE",
    "Lesson 2: CUT",
    "Lesson 4: tiered_absolute",
    "Lesson 5: flat_misstatement",
    "Lesson 8: wrong_element",
    "Lesson 12: Anchor Deck",
    "Lesson 14: Full workflow"
  ],
  "crossovers": [
    {
      "subject": "CIVIL_PROCEDURE",
      "connection": "Threshold before later details."
    },
    {
      "subject": "CONSTITUTIONAL_LAW",
      "connection": "Home-entry privacy threshold."
    },
    {
      "subject": "EVIDENCE",
      "connection": "Do not let vivid facts do work unless they answer the call."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-CRIM-THIRD-PARTY-HOME-01",
      "statement": "An arrest warrant lets police seize the named suspect; it does not by itself authorize entry into someone else’s home. For a third party’s home, look for a search warrant for that home, consent, or exigency.",
      "type": "distinction",
      "unlocks": "arrest-warrant-follows-suspect trap",
      "trigger": "arrest warrant + suspect located in a third party's home",
      "tested_choice": "B",
      "authority": "Steagald v. United States, 451 U.S. 204 (1981); Payton v. New York, 445 U.S. 573 (1980)",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIM-ENTRY-FIRST-01",
      "statement": "When the call asks whether entry into a home was lawful, decide the door before the room. A bedroom, prayer nook, or living room fact cannot supply authority to cross the threshold.",
      "type": "cut",
      "navigates": "interior-room distractor",
      "trigger": "answer turns on where the suspect was found after entry",
      "tested_choice": "C",
      "outline_code": "75070201",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Criminal Procedure > Fourth Amendment > Searches and Seizures > Warrant requirement",
    "this_item_teaches": "Arrest warrant for suspect versus search warrant for third-party home.",
    "fills": [
      "Steagald third-party-home entry anchor",
      "Payton own-home contrast"
    ],
    "adjacent_to_master": [
      "consent exception",
      "exigent circumstances",
      "public-place arrest",
      "suspect's own residence entry"
    ]
  }
}
```

[1]: https://supreme.justia.com/cases/federal/us/451/204/?utm_source=chatgpt.com " Steagald v. United States | 451 U.S. 204 (1981) | Justia U.S. Supreme Court Center"
[2]: https://supreme.justia.com/cases/federal/us/445/573/?utm_source=chatgpt.com " Payton v. New York | 445 U.S. 573 (1980) | Justia U.S. Supreme Court Center"

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "21869_tiny_house_hymn_sheet"
  question_id: "21869_tiny_house_hymn_sheet"
  subject: "CRIMINAL"
  topic: "Fourth Amendment"
  subtopic: "Arrest warrants and home entry"
  outline_code: "75070201"
  official_key: "D"
transform_provenance:
  transformed_from: "21869"
  variant_slug: "tiny_house_hymn_sheet"
  original_key_letter: "B"
  new_key_letter: "D"
  letter_map: "- original_letter: \"A"
c3_routing:
  bank_validation_verdict: "PASS"
  case_study_verdict: "ANCHOR_SOLVE"
  confidence: "ANCHOR_ASSISTED"
  residual: "D"
distilled_core_question: "Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?"
review_truth: "An arrest warrant is not a search warrant for someone else’s home."
```

### 2. The 17-section student case study

```
1. **program_frame:** Question 21869_tiny_house_hymn_sheet; source 21869.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic Fourth Amendment; subtopic Arrest warrants and home entry.
4. **distilled_core_question:** Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?
5. **call_and_prediction:** Credited answer: D.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 75070201.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** D
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** An arrest warrant is not a search warrant for someone else’s home.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 75070201.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** An arrest warrant is not a search warrant for someone else’s home.
```

### 3. c3_annotation

```json
{
  "question_id": "21869_tiny_house_hymn_sheet",
  "subject": "CRIMINAL",
  "credited_answer": "D",
  "outline_code": "75070201",
  "distilled_core_question": "Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?",
  "review_truth": "An arrest warrant is not a search warrant for someone else’s home.",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 21869; letter_map: - original_letter: \"A",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "21869_tiny_house_hymn_sheet",
  "subject": "CRIMINAL",
  "outline_code": "75070201",
  "distilled_core_question": "Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?",
  "review_truth": "An arrest warrant is not a search warrant for someone else’s home.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-21869",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "An arrest warrant is not a search warrant for someone else’s home.",
    "trap": "See preserved traps when present.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "21869_tiny_house_hymn_sheet",
  "subject": "CRIMINAL",
  "outline_code": "75070201",
  "distilled_core_question": "Police have an arrest warrant for a suspect but enter someone else’s home to arrest him without a search warrant, consent, or exigency. Was the entry lawful?",
  "review_truth": "An arrest warrant is not a search warrant for someone else’s home.",
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
    "placement": "75070201",
    "this_item_teaches": "An arrest warrant is not a search warrant for someone else’s home.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
