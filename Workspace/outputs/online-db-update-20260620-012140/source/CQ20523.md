---
qid: "20523_easter_stage_guaranty"
transformed_from: "20523"
subject: "CONTRACTS"
topic: "Statute of Frauds"
subtopic: "D"
outline_code: "54030400"
key: "B"
original_key: "D"
letter_map: "- original_letter: \"A"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party."
---
## A) PASS-1 TRANSFORM REPORT

### 1. Final question — revised stem + call

After Peter failed to pay a private event-supply company for the portable stage and speakers used at a ticketed Easter concert at his bookstore café, the company sued Ruth. Before the rental, Ruth had orally told the company that she would pay Peter’s $18,400 rental bill if Peter did not. That evening, Ruth signed a note to Lydia, Peter’s concert scheduler, stating: “I told Galilee Gear Rentals I would cover Peter’s $18,400 stage-and-speaker rental if Peter does not pay it.” Ruth argues that the signed note cannot satisfy the Statute of Frauds because it was sent to Lydia, not to Galilee Gear Rentals.

Can Ruth’s signed note potentially satisfy the suretyship writing requirement?

### 2. Distilled Core Question

A surety signs a note to someone other than the creditor admitting she promised to pay another person’s debt if that person defaults. Can that note potentially satisfy the Statute of Frauds?

### 3. Final answer choices

A. No, because a guaranty memorandum must always be signed by both Peter and Ruth.
B. Yes, because a signed memorandum by Ruth, the party to be charged, can satisfy the writing requirement even when sent to someone other than the supplier, if it sufficiently identifies the promise and parties.
C. No, because a suretyship memorandum must be sent or addressed to the creditor seeking to enforce it.
D. Yes, but only if Peter also signed Ruth’s note.

### 4. Correct answer

**B** — source key **D**. The source row for Q20523 tests common-law Statute of Frauds memorandum sufficiency for a suretyship promise, with the official answer keyed to the principle that a signed memorandum by the party to be charged can suffice even when addressed to a third person. 

### 5. Letter Map

| Source letter | New letter | Mechanic                                         | Substance | Pick % / provenance |
| ------------- | ---------: | ------------------------------------------------ | --------- | ------------------: |
| A             |          C | creditor-addressee fabricated requirement        | kept      |       32% predicted |
| B             |          A | both-signatures overclaim / fabricated formality | kept      |       18% predicted |
| C             |          D | debtor-signature fabricated requirement          | kept      |       14% predicted |
| D             |          B | correct_answer                                   | kept      |       36% predicted |

Measured pick rates were not supplied in the pasted row, so all emitted percentages are predicted, not inherited.

### 6. Full right-answer explanation

**B is correct.** Ruth is the person being sued on the suretyship promise. The note is signed by Ruth, identifies the supplier, identifies Peter’s debt, states the amount, and states Ruth’s promise to cover the debt if Peter fails to pay. **Gold Key:** for a common-law Statute of Frauds memorandum, the key question is whether the writing is signed by the party to be charged and sufficiently identifies the promise and parties; it need not be addressed to the enforcing creditor. **Silver Key:** three choices add extra formalities; the answer array is asking whether the addressee and extra signatures are required.

### 7. Full wrong-answer explanations

**A.** This choice is attractive because a guaranty involves both the debtor and the guarantor, so “both must sign” sounds safer. The breaker is the extra formality: Ruth is the party being charged in the lawsuit, and Peter’s signature is not required to enforce Ruth’s promise against Ruth.

**C.** This choice is attractive because it mirrors Ruth’s own objection: the note went to Lydia, not to Galilee Gear Rentals. **Gold Key:** the addressee is not the test; a signed memorandum can satisfy the writing requirement even when it was not sent or addressed to the creditor.

**D.** This choice is attractive because it keeps the “yes” outcome but adds Peter’s signature as a condition. The breaker is the same extra-signature trap: Peter’s signature would matter only if Peter were the party being charged on the promise being enforced.

### 8. Black-letter-law verification and right-answer legal reasoning

The tested rule and outcome are unchanged from the source item. Suretyship promises fall within the traditional Statute of Frauds category for a promise to answer for another person’s debt, and the writing must be signed by the party to be charged. ([Open Casebook][1]) Restatement (Second) of Contracts § 131 states that a Statute of Frauds contract is enforceable if evidenced by “any writing” signed by or on behalf of the party to be charged, where the writing reasonably identifies the subject matter, indicates that a contract was made or offered, and states the essential terms with reasonable certainty. ([Open Casebook][1]) Restatement § 133 also supports the answer because, except for marriage-consideration contracts, a signed writing need not have been made formally as a contract memorandum. ([Open Casebook][1]) The ALI identifies Restatement (Second) of Contracts as an authoritative common-law contracts source, and its first volume covers the Statute of Frauds. ([American Law Institute][2])

### 9. Why the variation preserves original rigor/difficulty

The legal issue is unchanged: whether a signed memorandum by the surety can satisfy the Statute of Frauds even though it was addressed to a third person. The dominant trap survives: the objecting party focuses on the memorandum’s audience instead of the signer and content. The new surface story kills recognition by moving from a family business bank loan to a private Easter concert equipment-rental invoice.

### 10. C3 elimination walkthrough — CUT → CLASH → CALL

**CUT A.** “Must always be signed by both” adds an absolute extra formality. With the Gold Key in hand, cut as **NOT_TRUE / tiered_absolute**.

**CUT C.** “Must be sent or addressed to the creditor” adds the exact audience requirement the tested rule rejects. With the Gold Key in hand, cut as **NOT_TRUE / fabricated_rule**.

**CUT D.** “Only if Peter also signed” adds a debtor-signature condition. With the Gold Key in hand, cut as **NOT_TRUE / fabricated_rule**.

**Residual.** B remains true and responsive. No CLASH or CALL is needed after the Gold-Key CUT.

### 11. Divergence Audit

| Recognition-Kill dimension | Result                                                                                                                                                  |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Asset / subject matter     | Bank business loan → portable stage and speaker rental for a ticketed Easter concert.                                                                   |
| Transaction frame          | Commercial loan guaranty → equipment-rental invoice guaranty.                                                                                           |
| Specific facts             | Letter to debtor-son → signed note to concert scheduler.                                                                                                |
| Numbers                    | $30,000 → $18,400.                                                                                                                                      |
| Fact ordering / rhythm     | Source begins with oral promise; variation opens with lawsuit after the unpaid rental, then backfills promise and note.                                 |
| Cast size / roles          | Mother/son/bank → concert backer/event debtor/scheduler/private supplier.                                                                               |
| Choice ordering            | Shuffled; source key moved to B.                                                                                                                        |
| Choice phrasing            | Rephrased while preserving all legal mechanics.                                                                                                         |
| Setting / era / texture    | Business debt at a bank → Christian bookstore café Easter concert with private commercial supplier.                                                     |
| Call wording               | “Is potentially sufficient” → “Can potentially satisfy”; legal function unchanged.                                                                      |
| Skipped dimension          | None materially skipped; black-letter terms “Statute of Frauds,” “suretyship,” “party to be charged,” and “writing requirement” retained for MBE rigor. |

**Source stem summary:** A mother guaranteed her son’s bank business loan, signed a letter to him admitting the guaranty, and argued the bank could not use it because it was addressed to him.
**Variant stem summary:** A concert backer guaranteed a stage-rental bill for a ticketed Easter bookstore concert, signed a note to the scheduler admitting the guaranty, and argued the vendor could not use it because it was sent to the scheduler.

### 12. Review Truth

The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party.

### 13. The 5 variations considered

|  # | Title                                       | Setting                                      | Cast                                      | Preserved issue                                 | Why memorable                                           | Legal risks                                                    | Divergence score                                                          |
| -: | ------------------------------------------- | -------------------------------------------- | ----------------------------------------- | ----------------------------------------------- | ------------------------------------------------------- | -------------------------------------------------------------- | ------------------------------------------------------------------------- |
|  1 | **The Easter Stage Guaranty** — recommended | Private Christian bookstore café concert     | Ruth, Peter, Lydia, Galilee Gear Rentals  | Third-person-addressed signed surety memorandum | Easter concert + rental gear + signed note to scheduler | Low; private commercial supplier avoids church-property issues | **9/10** — kills asset, transaction frame, number, rhythm, roles, setting |
|  2 | The Fish-Fry Freezer Invoice                | Private Christian fish-fry fundraiser vendor | Daniel, Martha, Stephen, vendor           | Same                                            | Freezer truck for a loaves-and-fishes-themed dinner     | Moderate; fundraiser language risks donation/pledge clutter    | 8/10                                                                      |
|  3 | The Scripture Mural Scaffold Bill           | Private calligraphy studio event             | Esther, Timothy, Hannah, scaffold company | Same                                            | Giant verse mural and scaffold invoice                  | Low; service invoice clean                                     | 8/10                                                                      |
|  4 | The Bible Trivia App Server Charge          | Private Christian trivia app launch          | Paul, Lydia, Barnabas, hosting company    | Same                                            | App crash and hosting bill                              | Low; tech invoice clean, less visual                           | 7/10                                                                      |
|  5 | The Homeschool Robot Tournament Rental      | Private homeschool tournament                | Mary, Stephen, Ruth, equipment company    | Same                                            | Robot arena rental and trophy fog machine               | Moderate; homeschool / youth facts add clutter risk            | 7/10                                                                      |

**Step 1 — tested rule:** common-law Statute of Frauds memorandum sufficiency for suretyship.
**Step 2 — invariant layer:** outcome, call, party-to-be-charged rule, addressee trap, extra-signature traps preserved.
**Step 3 — variations:** five Christian-themed candidates generated above.
**Step 4 — distractor policy:** no swap; all distractor mechanics are sound and inherited.
**Step 5 — final version:** Easter Stage Guaranty wins maximum surface divergence with low clutter risk.
**Step 6 — shuffle/audit:** source key moved to B; Letter Map above is source of truth.

---

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "20523_easter_stage_guaranty"
  transformed_from: "20523"
  internal_id: "contracts_defenses_questions_batch_001_D_statute_of_frauds_core::r8::DEF-SOF-007::easter_stage_guaranty"
  subject: "CONTRACTS"
  subject_display: "Contracts"
  topic: "Statute of Frauds"
  subtopic: "D"
  outline_code: "54030400"
  difficulty: "Trap Repair"
  selection_percentages:
    A:
      value: 18
      provenance: "predicted"
    B:
      value: 36
      provenance: "predicted"
    C:
      value: 32
      provenance: "predicted"
    D:
      value: 14
      provenance: "predicted"
  official_key: "B"
  original_key_letter: "D"
  call: "Can Ruth’s signed note potentially satisfy the suretyship writing requirement?"
  stem: "After Peter failed to pay a private event-supply company for the portable stage and speakers used at a ticketed Easter concert at his bookstore café, the company sued Ruth. Before the rental, Ruth had orally told the company that she would pay Peter’s $18,400 rental bill if Peter did not. That evening, Ruth signed a note to Lydia, Peter’s concert scheduler, stating: “I told Galilee Gear Rentals I would cover Peter’s $18,400 stage-and-speaker rental if Peter does not pay it.” Ruth argues that the signed note cannot satisfy the Statute of Frauds because it was sent to Lydia, not to Galilee Gear Rentals."
  choices:
    A: "No, because a guaranty memorandum must always be signed by both Peter and Ruth."
    B: "Yes, because a signed memorandum by Ruth, the party to be charged, can satisfy the writing requirement even when sent to someone other than the supplier, if it sufficiently identifies the promise and parties."
    C: "No, because a suretyship memorandum must be sent or addressed to the creditor seeking to enforce it."
    D: "Yes, but only if Peter also signed Ruth’s note."

transform_provenance:
  transformed_from: "20523"
  variant_slug: "easter_stage_guaranty"
  original_key_letter: "D"
  new_key_letter: "B"
  pick_rate_note: "Measured source pick rates were not supplied; all percentages are predicted for the transformed item."
  letter_map:
    - original_letter: "A"
      new_letter: "C"
      mechanic: "creditor-addressee fabricated requirement"
      substance: "kept"
      pick_rate:
        value: 32
        provenance: "predicted"
    - original_letter: "B"
      new_letter: "A"
      mechanic: "both-signatures overclaim / fabricated formality"
      substance: "kept"
      pick_rate:
        value: 18
        provenance: "predicted"
    - original_letter: "C"
      new_letter: "D"
      mechanic: "debtor-signature fabricated requirement"
      substance: "kept"
      pick_rate:
        value: 14
        provenance: "predicted"
    - original_letter: "D"
      new_letter: "B"
      mechanic: "correct_answer"
      substance: "kept"
      pick_rate:
        value: 36
        provenance: "predicted"
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "A mother guaranteed her son’s bank business loan, signed a letter to him admitting the guaranty, and argued the bank could not use it because it was addressed to him."
    variant_stem_one_sentence: "A concert backer guaranteed a stage-rental bill for a ticketed Easter bookstore concert, signed a note to the scheduler admitting the guaranty, and argued the vendor could not use it because it was sent to the scheduler."
    dimensions_changed:
      - "asset_subject_matter"
      - "transaction_frame"
      - "specific_facts"
      - "numbers"
      - "fact_ordering_and_stem_rhythm"
      - "cast_size_roles"
      - "choice_ordering"
      - "choice_phrasing"
      - "setting_era_texture"
      - "call_wording"
    dimensions_skipped_with_reason:
      - dimension: "core black-letter phrasing"
        reason: "Retained Statute of Frauds, suretyship, writing requirement, and party-to-be-charged wording to preserve MBE rigor."

source_stack:
  - priority: 1
    source: "pasted BarMatrix row"
    use: "QID, subject, topic, subtopic, stem, call, choices, key, official explanations"
  - priority: 2
    source: "existing C3 tags"
    use: "none supplied"
  - priority: 3
    source: "C3 lessons and controlled vocabularies"
    use: "method, controlled fields, verdicts, molds, keys"
  - priority: 4
    source: "official explanation"
    use: "lawyer confirmation only"
  - priority: 5
    source: "Restatement (Second) of Contracts §§ 131, 133"
    use: "lawyer-confirmation authority only"

student_access_contract:
  allowed_without_gold_key:
    - "TRUE and RESPONSIVE frame"
    - "CUT → CLASH → CALL workflow"
    - "overclaim detection"
    - "fabricated-rule detection"
    - "answer-array grouping"
  gold_key_required: true
  gold_key_reason: "The addressee rule and party-to-be-charged signature rule are not derivable from grammar alone."
  pre_gold_key_status: "anchor_gap"
  post_gold_key_status: "anchor_assisted"
  controlling_test_result: "A student can cut the distractors only after the emitted Gold Key teaches that addressee and debtor signature are not required."

stem_parse:
  subject_fit: "Contracts = enforceability defense + formal writing prerequisite."
  call_type: "legal sufficiency of writing"
  role: "court ruling on enforceability defense"
  negative_stem: false
  adjacent_call_traps:
    - "whether Ruth made the oral promise"
    - "whether Peter owes the rental debt"
    - "whether Lydia received the note"
  predicted_answer_before_choices: "The note is potentially sufficient if Ruth is the party to be charged and the signed note identifies the surety promise and parties."

trigger_facts:
  - fact: "Ruth orally told the supplier she would pay Peter’s bill if Peter did not."
    access_label: "stem_visible"
    legal_role: "suretyship promise"
  - fact: "Ruth signed the note."
    access_label: "stem_visible"
    legal_role: "party-to-be-charged signature"
  - fact: "The note identifies Galilee Gear Rentals, Peter, the $18,400 rental, and Ruth’s promise."
    access_label: "stem_visible"
    legal_role: "essential promise and parties"
  - fact: "The note was sent to Lydia rather than to Galilee Gear Rentals."
    access_label: "stem_visible"
    legal_role: "dominant addressee trap"
  - fact: "Galilee Gear Rentals sued Ruth."
    access_label: "stem_visible"
    legal_role: "Ruth is the party to be charged"

c3_routing:
  subject_fit: "Contracts = enforceability defense + formal writing prerequisite."
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
  difficulty: "Trap Repair"
  tension_axis: "extra formalities versus party-to-be-charged memorandum"
  call_heuristic: null

answer_array:
  geometry: "3-vs-1 extra-formality array"
  preserved_geometry: true
  silver_key_surface: "Three distractors add extra formalities; the credited answer states the sufficiency path."
  choices:
    A:
      role: "extra-signature overclaim"
      conclusion: "No"
      added_formality: "both debtor and guarantor must always sign"
    B:
      role: "credited residual"
      conclusion: "Yes"
      sufficiency_path: "signed by party to be charged; identifies promise and parties"
    C:
      role: "dominant addressee trap"
      conclusion: "No"
      added_formality: "must be sent or addressed to creditor"
    D:
      role: "debtor-signature trap"
      conclusion: "Yes, conditional"
      added_formality: "debtor must also sign"

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
    method_class: "anchor_assisted"
    student_label: "extra-signature overclaim"
    c3_signal: "The word 'always' plus 'both Peter and Ruth' adds a formality beyond the call’s party-to-be-charged fact."
    lawyer_confirmation: "A common-law Statute of Frauds memorandum must be signed by the party to be charged; Peter’s signature is not required to enforce Ruth’s promise against Ruth."
  B:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "true and responsive residual"
    c3_signal: "This choice answers the exact call: Ruth signed a memorandum that identifies the promise and parties; it does not add an addressee or debtor-signature requirement."
    lawyer_confirmation: "This matches Restatement (Second) of Contracts § 131 and the official key substance."
  C:
    filter_broken: "NOT_TRUE"
    mold_code: "fabricated_rule"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "common_student_myth"
      - "answer_to_different_question"
      - "sounds_lawyerly"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "creditor-addressee fabricated requirement"
    c3_signal: "This is the stem’s bait objection: it treats the recipient of the note as a required formality."
    lawyer_confirmation: "The writing need not be addressed to the enforcing creditor if it is signed by the party to be charged and sufficiently identifies the promise and parties."
  D:
    filter_broken: "NOT_TRUE"
    mold_code: "fabricated_rule"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "wrong_party"
      - "common_student_myth"
      - "sounds_lawyerly"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "debtor-signature fabricated requirement"
    c3_signal: "This choice keeps the yes outcome but adds Peter’s signature as a condition."
    lawyer_confirmation: "Peter is not the party being charged on Ruth’s suretyship promise; his signature is not required for the memorandum to charge Ruth."

residual_answer:
  choice: "B"
  why_survives: "It is true and responsive after the Gold Key: Ruth’s signed note, although sent to Lydia, can potentially satisfy the memorandum requirement because it identifies the promise, parties, and amount."
  final_confidence: "ANCHOR_ASSISTED"

legal_leak_audit:
  overall: "anchor-dependent but contained"
  leak_risk: "High if the answer is presented as pure structure; low if the Gold Key is explicitly taught."
  student_accessible_claims:
    - "Three distractors add extra formalities."
    - "The credited answer matches the call and trigger facts."
  lawyer_only_claims:
    - "A memorandum need not be addressed to the enforcing creditor."
    - "Only the party to be charged must sign for enforcement against that party."
  drift_audit: "No choice is called legally false without the Gold Key; authority remains in lawyer_confirmation."

gold_keys:
  - id: "GK-CONTRACTS-SURETY-MEMO-THIRD-PERSON-01"
    statement: "For a common-law Statute of Frauds memorandum, the writing need not be addressed or delivered to the enforcing party. Ask whether it is signed by the party to be charged and whether it identifies the promise, parties, and essential terms."
    type: "distinction"
    unlocks: "creditor-addressee trap and extra-signature traps"
    trigger: "signed note admits a guaranty but was sent to someone other than the creditor"
    tested_choice: "C"
    authority: "Restatement (Second) of Contracts §§ 131, 133; lawyer-confirmation only"
    last_minute_review: true

silver_keys:
  - id: "SK-CONTRACTS-SURETY-MEMO-ARRAY-01"
    statement: "When three answers add formalities and one answer tracks the signer-plus-content path, group the formalities first. Then cut the addressee and extra-signature conditions as the same trap family."
    type: "answer_array"
    navigates: "3-vs-1 extra-formality answer array"
    trigger: "choices say must be addressed, must always be signed by both, or only if debtor signed"
    tested_choice: "C"
    outline_code: "54030400"
    last_minute_review: true

remediation:
  card_id: "CONTRACTS-ANCHOR-SOF-MEMO-ADDRESSEE-01"
  title: "SOF memorandum: signer beats addressee"
  signal: "A signed writing admits a guaranty but was sent to someone other than the enforcing creditor."
  student_move: "Map who is being sued; then ask whether that person signed a writing identifying the promise."
  tiny_rule: "The memorandum need not be addressed to the enforcing party."
  trap: "extra formality"
  confidence: "ANCHOR_ASSISTED"

distilled_core_question: "A surety signs a note to someone other than the creditor admitting she promised to pay another person’s debt if that person defaults. Can that note potentially satisfy the Statute of Frauds?"
review_truth: "The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party."

case_study_output:
  final_student_script: "Call: can the note satisfy the suretyship writing requirement? Ruth is the party being sued, Ruth signed it, and it names the supplier, Peter, the bill, and Ruth’s promise. Cut the choices adding extra formalities. Pick B."
  residual: "B"
  recovery_paths:
    - "If drawn to C, separate addressee from signature."
    - "If drawn to A or D, separate the debtor from the party being charged."

quality_control:
  pass_available: true
  exactly_three_distractors: true
  each_distractor_single_filter: true
  credited_answer_breaks_no_filter: true
  residual_equals_key: true
  no_fork: true
  gold_key_present: true
  silver_key_present: true
  no_measured_pick_rates_claimed: true
  recognition_test_passed: true
  source_letters_confined_to_provenance: true

analytics_hooks:
  component_routing:
    - "Lesson 1 TRUE_AND_RESPONSIVE"
    - "Lesson 4 overclaim"
    - "Lesson 12 anchor rule"
    - "Gold Key: surety memo addressee"
    - "Silver Key: extra-formality answer array"
  trap_tags:
    forensic_tags:
      - "extra_formality"
      - "addressee_trap"
      - "wrong_party_signature"
    misconception_tags:
      - "memo_must_go_to_creditor"
      - "debtor_must_sign_guaranty"
      - "both_parties_must_sign"
  red_zone_dimensions:
    - "party_to_be_charged"
    - "memo_addressee"
    - "signature_role_mapping"
```

### 2. The 17-section student case study

## program_frame

This is a Contracts / Statute of Frauds item. It is not a full SOF outline. It is a formal-writing trap.

The job is narrow: decide whether Ruth’s signed note can potentially satisfy the suretyship writing requirement even though it was sent to Lydia instead of the supplier.

## student_access_test

Without the Gold Key, the key legal move is not student-accessible. The C3-visible part is the answer array: three choices add extra formalities; one choice uses the signer-plus-content path.

With the Gold Key, the item becomes solvable at the CUT.

## question_data

**Question ID:** 20523_easter_stage_guaranty
**Subject:** Contracts
**Topic:** Statute of Frauds
**Outline code:** 54030400
**Credited answer:** B
**Verdict:** ANCHOR_SOLVE
**Bank validation:** PASS

## distilled_core_question

A surety signs a note to someone other than the creditor admitting she promised to pay another person’s debt if that person defaults. Can that note potentially satisfy the Statute of Frauds?

## call_and_prediction

**Call:** Can Ruth’s signed note potentially satisfy the suretyship writing requirement?

**Prediction:** Yes, if Ruth is the person being charged and the note identifies the promise and parties. The note going to Lydia should not control once the Gold Key is known.

## trigger_facts

| Fact                                                       | Why it matters                   |
| ---------------------------------------------------------- | -------------------------------- |
| Ruth promised to pay Peter’s rental bill if Peter did not. | Suretyship posture.              |
| Ruth signed the note.                                      | Party-to-be-charged signature.   |
| The note names the supplier, Peter, amount, and promise.   | Content sufficiency.             |
| The note went to Lydia, not the supplier.                  | Dominant trap.                   |
| Supplier sues Ruth.                                        | Ruth is the party being charged. |

## governing_c3_lane

**Lane:** Rule-driven Contracts anchor.

**Move:** CUT after Gold Key.

**Gold Key lane:** signer and content, not addressee.

**Silver Key lane:** group the answer array as extra-formality traps.

## choice_by_choice_walkthrough

### A

1. **Student-accessible C3 signal:** “Must always be signed by both” is an absolute and adds a formality.
2. **Student label:** extra-signature overclaim.
3. **True/responsive version:** “No, if Ruth did not sign any writing identifying the promise.”
4. **Lawyer confirmation:** The party being charged is Ruth. Peter’s signature is not required to enforce Ruth’s promise against Ruth.

### B

1. **Student-accessible C3 signal:** This choice answers the call and uses the trigger facts: Ruth signed; the note identifies the promise and parties; the note’s recipient is not treated as decisive.
2. **Student label:** true and responsive residual.
3. **True/responsive version:** This is already the true/responsive version.
4. **Lawyer confirmation:** Restatement § 131 requires a writing signed by or on behalf of the party to be charged that reasonably identifies the subject matter, indicates the contract, and states essential terms; § 133 supports use of a signed writing not formally made as a contract memorandum. ([Open Casebook][1])

### C

1. **Student-accessible C3 signal:** This choice repeats Ruth’s objection and makes the addressee decisive.
2. **Student label:** creditor-addressee fabricated requirement.
3. **True/responsive version:** “No, if the note did not identify the promise or was not signed by Ruth.”
4. **Lawyer confirmation:** A memorandum need not be addressed to the enforcing creditor. The central requirements are signature by the party to be charged and adequate identification of the promise and parties.

### D

1. **Student-accessible C3 signal:** This choice keeps “yes” but adds Peter’s signature as a condition.
2. **Student label:** debtor-signature fabricated requirement.
3. **True/responsive version:** “Yes, if Ruth signed a sufficient memorandum; Peter’s signature is not required for enforcement against Ruth.”
4. **Lawyer confirmation:** Peter is the debtor, not the party being charged on Ruth’s guaranty promise.

## residual_answer

B survives. It matches the call, the trigger facts, and the Gold Key.

## legal_leak_audit

The student path cannot say “the addressee does not matter” as a pure structural claim. That is doctrine. The case study must teach it as a Gold Key.

The structural move is still useful: all three distractors add a formal condition not present in the credited answer. The Gold Key supplies the doctrinal permission to cut those added conditions.

Drift audit: No student-facing choice is called legally false without the Gold Key; the Restatement authority remains in lawyer confirmation.

## final_student_script

Call first: can Ruth’s signed note satisfy the suretyship writing requirement? Ruth is the party being sued. Ruth signed the note. The note names the supplier, Peter, the bill, and Ruth’s promise. CUT the addressee requirement and the extra-signature requirements. B survives.

## remediation_card

**Card ID:** CONTRACTS-ANCHOR-SOF-MEMO-ADDRESSEE-01
**Title:** SOF memorandum: signer beats addressee
**Signal:** Signed note admits a guaranty but was sent to someone other than the creditor.
**Student move:** Map who is being sued. Ask whether that person signed a writing identifying the promise.
**Tiny rule:** The writing need not be addressed to the enforcing party.
**Trap:** Extra formality.
**Confidence:** ANCHOR_ASSISTED.

## Gold Key(s)

**GK-CONTRACTS-SURETY-MEMO-THIRD-PERSON-01**
For a common-law Statute of Frauds memorandum, the writing need not be addressed or delivered to the enforcing party. Ask whether it is signed by the party to be charged and whether it identifies the promise, parties, and essential terms.

## Silver Key(s)

**SK-CONTRACTS-SURETY-MEMO-ARRAY-01**
When three answers add formalities and one answer tracks the signer-plus-content path, group the formalities first. Then cut the addressee and extra-signature conditions as the same trap family.

## qa_checklist

| Check                                   | Result |
| --------------------------------------- | ------ |
| Credited answer true and responsive     | Pass   |
| Three distractors each break one filter | Pass   |
| C3 residual matches key                 | Pass   |
| Gold Key emitted                        | Pass   |
| Silver Key emitted                      | Pass   |
| No fork                                 | Pass   |
| No measured pick rates claimed          | Pass   |
| Recognition-kill audit completed        | Pass   |

## wrong_answer_recovery_paths

**A recovery:** Do not make “guaranty” mean every involved person must sign. Ask who is being sued.

**C recovery:** Do not let the note’s recipient control. Ask whether the signed writing identifies the promise.

**D recovery:** Do not accept a compromise answer that adds the debtor’s signature. The party being charged is the signature target.

## outline_mastery_map

**Placement:** Contracts → Defenses to Formation or Enforcement → Statute of Frauds → 54030400.

**This item teaches:** memorandum sufficiency for a suretyship promise.

**Fills:** the gap between “SOF requires a writing” and “what writing counts.”

**Adjacent to master:** suretyship category, party to be charged, essential terms, multiple writings.

## crossover_intersection_map

| Crossover                         | Link                                                                                        |
| --------------------------------- | ------------------------------------------------------------------------------------------- |
| Contracts / Real Property         | Both can test whether a writing is sufficient, not whether every possible formality exists. |
| C3 overclaim                      | “Always,” “must,” and “only if” often signal extra conditions.                              |
| C3 wrong-party mapping            | Signature requirement tracks the party being charged, not the person benefited.             |
| Civil Procedure threshold analogy | Identify the actor the rule operates on before judging the merits.                          |

## review_truth

The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party.

### 3. `c3_annotation`

```json
{
  "question_id": "20523_easter_stage_guaranty",
  "subject": "CONTRACTS",
  "credited_answer": "B",
  "outline_code": "54030400",
  "distilled_core_question": "A surety signs a note to someone other than the creditor admitting she promised to pay another person’s debt if that person defaults. Can that note potentially satisfy the Statute of Frauds?",
  "review_truth": "The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "B",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "ANCHOR_ASSISTED",
    "tension_axis": "extra formalities versus party-to-be-charged memorandum",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": null,
    "difficulty": "Trap Repair",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_TRUE",
        "mold": "tiered_absolute",
        "architecture": null,
        "card_ref": "GK-CONTRACTS-SURETY-MEMO-THIRD-PERSON-01",
        "explanation": "The choice adds an always-both-sign requirement. The Gold Key cuts the extra signature condition."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_TRUE",
        "mold": "fabricated_rule",
        "architecture": null,
        "card_ref": "GK-CONTRACTS-SURETY-MEMO-THIRD-PERSON-01",
        "explanation": "The choice makes addressee identity decisive. The Gold Key cuts the creditor-addressee requirement."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_TRUE",
        "mold": "fabricated_rule",
        "architecture": null,
        "card_ref": "GK-CONTRACTS-SURETY-MEMO-THIRD-PERSON-01",
        "explanation": "The choice adds Peter’s signature as a condition. The Gold Key cuts the debtor-signature requirement."
      }
    ],
    "analyzer_notes": {
      "drift_audit": "No legal falsehood is asserted as pure structure; all three cuts require the emitted Gold Key.",
      "transformed_from": "20523",
      "letter_map": "A->C creditor-addressee fabricated requirement; B->A both-signatures overclaim; C->D debtor-signature fabricated requirement; D->B correct_answer",
      "pick_rate_note": "No measured source pick rates supplied; all percentages predicted.",
      "variant_slug": "easter_stage_guaranty"
    },
    "gold_keys": [
      {
        "id": "GK-CONTRACTS-SURETY-MEMO-THIRD-PERSON-01",
        "statement": "For a common-law Statute of Frauds memorandum, the writing need not be addressed or delivered to the enforcing party. Ask whether it is signed by the party to be charged and whether it identifies the promise, parties, and essential terms.",
        "type": "distinction",
        "unlocks": "creditor-addressee trap and extra-signature traps",
        "trigger": "signed note admits a guaranty but was sent to someone other than the creditor",
        "tested_choice": "C",
        "authority": "Restatement (Second) of Contracts §§ 131, 133; lawyer-confirmation only",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CONTRACTS-SURETY-MEMO-ARRAY-01",
        "statement": "When three answers add formalities and one answer tracks the signer-plus-content path, group the formalities first. Then cut the addressee and extra-signature conditions as the same trap family.",
        "type": "answer_array",
        "navigates": "3-vs-1 extra-formality answer array",
        "trigger": "choices say must be addressed, must always be signed by both, or only if debtor signed",
        "tested_choice": "C",
        "outline_code": "54030400",
        "last_minute_review": true
      }
    ]
  }
}
```

### 4. `program_elements`

```json
{
  "question_id": "20523_easter_stage_guaranty",
  "subject": "CONTRACTS",
  "outline_code": "54030400",
  "distilled_core_question": "A surety signs a note to someone other than the creditor admitting she promised to pay another person’s debt if that person defaults. Can that note potentially satisfy the Statute of Frauds?",
  "review_truth": "The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party.",
  "tension": {
    "axis": "extra formalities versus party-to-be-charged memorandum",
    "resolved_by": "Gold Key"
  },
  "traps": [
    {
      "choice": "A",
      "mold": "tiered_absolute",
      "architecture": null,
      "why_attractive": "It feels safer because a guaranty involves both the debtor and the guarantor. The breaker is that the suit charges Ruth, so Peter’s signature is an added formality.",
      "focus_group_pct": 18,
      "pct_provenance": "predicted"
    },
    {
      "choice": "C",
      "mold": "fabricated_rule",
      "architecture": null,
      "why_attractive": "It mirrors Ruth’s stated objection that the note went to Lydia instead of the supplier. The breaker is that addressee identity is not the memorandum-sufficiency test.",
      "focus_group_pct": 32,
      "pct_provenance": "predicted"
    },
    {
      "choice": "D",
      "mold": "fabricated_rule",
      "architecture": null,
      "why_attractive": "It sounds like a careful yes answer because it adds Peter’s signature as a safeguard. The breaker is that Peter is not the party being charged on Ruth’s promise.",
      "focus_group_pct": 14,
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "CONTRACTS-ANCHOR-SOF-MEMO-ADDRESSEE-01",
    "title": "SOF memorandum: signer beats addressee",
    "signal": "A signed writing admits a guaranty but was sent to someone other than the enforcing creditor.",
    "student_move": "Map who is being sued; then ask whether that person signed a writing identifying the promise.",
    "tiny_rule": "The memorandum need not be addressed to the enforcing party.",
    "trap": "extra formality",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "party_to_be_charged",
    "memo_addressee",
    "debtor_signature",
    "suretyship_formality",
    "predicted_pick_rates_only"
  ]
}
```

### 5. `program_intelligence`

```json
{
  "question_id": "20523_easter_stage_guaranty",
  "subject": "CONTRACTS",
  "outline_code": "54030400",
  "distilled_core_question": "A surety signs a note to someone other than the creditor admitting she promised to pay another person’s debt if that person defaults. Can that note potentially satisfy the Statute of Frauds?",
  "review_truth": "The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party.",
  "wrong_answer_paths": [
    {
      "choice": "A",
      "filter_broken": "NOT_TRUE",
      "mold": "tiered_absolute",
      "why_a_student_picks_this": "The student treats a guaranty as a two-signature document because both the debtor and guarantor are named in the facts.",
      "skipped_move": "Map the party being charged before checking signatures.",
      "recovery_step": "Ask whose promise the supplier is enforcing."
    },
    {
      "choice": "C",
      "filter_broken": "NOT_TRUE",
      "mold": "fabricated_rule",
      "why_a_student_picks_this": "The student adopts Ruth’s own argument and makes the note’s recipient decisive.",
      "skipped_move": "Separate addressee from memorandum sufficiency.",
      "recovery_step": "Apply the Gold Key: signer and content, not addressee."
    },
    {
      "choice": "D",
      "filter_broken": "NOT_TRUE",
      "mold": "fabricated_rule",
      "why_a_student_picks_this": "The student wants the yes answer but adds a debtor-signature safeguard.",
      "skipped_move": "Keep the signature requirement attached to the party to be charged.",
      "recovery_step": "Peter’s signature is not required to charge Ruth."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "Gold Key recall",
      "target_skill": "SOF memorandum sufficiency",
      "prompt": "A guarantor signs a note to the debtor admitting the guaranty. The creditor sues. Does the note fail solely because it was addressed to the debtor?",
      "answer": "No. Addressee is not the test; signer and content are."
    },
    {
      "drill_type": "CUT",
      "target_skill": "extra-formality detection",
      "prompt": "Cut the answer: 'No, because both the debtor and guarantor must always sign the guaranty memorandum.'",
      "answer": "CUT as tiered_absolute after the Gold Key; the party being charged must sign."
    },
    {
      "drill_type": "answer_array",
      "target_skill": "formalities grouping",
      "prompt": "Choices add creditor-addressing, both-signature, and debtor-signature requirements. What is the shared trap?",
      "answer": "Extra formalities beyond the party-to-be-charged signed memorandum."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "extra_formality",
      "addressee_trap",
      "wrong_party_signature",
      "guaranty_memorandum",
      "3_vs_1_array"
    ],
    "misconception_tags": [
      "memo_must_go_to_creditor",
      "debtor_must_sign_guaranty",
      "both_parties_must_sign",
      "recipient_controls_sof",
      "formalism_over_content"
    ]
  },
  "component_routing": [
    "Lesson 1 TRUE_AND_RESPONSIVE",
    "Lesson 4 EAR_OVERCLAIM",
    "Lesson 12 Anchor Deck",
    "Gold Key: surety memorandum addressee",
    "Silver Key: extra-formality answer array"
  ],
  "crossovers": [
    {
      "area": "Real Property",
      "connection": "SOF writing sufficiency can also appear in land-contract settings."
    },
    {
      "area": "Civil Procedure",
      "connection": "Party mapping resembles threshold actor mapping: identify who the rule operates on first."
    },
    {
      "area": "Evidence",
      "connection": "The trap resembles offered-purpose confusion: a true fact about where a writing went is not necessarily the legal test."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-CONTRACTS-SURETY-MEMO-THIRD-PERSON-01",
      "statement": "For a common-law Statute of Frauds memorandum, the writing need not be addressed or delivered to the enforcing party. Ask whether it is signed by the party to be charged and whether it identifies the promise, parties, and essential terms.",
      "type": "distinction",
      "unlocks": "creditor-addressee trap and extra-signature traps",
      "trigger": "signed note admits a guaranty but was sent to someone other than the creditor",
      "tested_choice": "C",
      "authority": "Restatement (Second) of Contracts §§ 131, 133; lawyer-confirmation only",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CONTRACTS-SURETY-MEMO-ARRAY-01",
      "statement": "When three answers add formalities and one answer tracks the signer-plus-content path, group the formalities first. Then cut the addressee and extra-signature conditions as the same trap family.",
      "type": "answer_array",
      "navigates": "3-vs-1 extra-formality answer array",
      "trigger": "choices say must be addressed, must always be signed by both, or only if debtor signed",
      "tested_choice": "C",
      "outline_code": "54030400",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Contracts > Defenses to Formation or Enforcement > Statute of Frauds > 54030400",
    "this_item_teaches": "A signed memorandum can satisfy the SOF even when sent to a third person, if signed by the party to be charged and sufficient in content.",
    "fills": [
      "party_to_be_charged",
      "memorandum_sufficiency",
      "suretyship_writing",
      "third_person_addressee"
    ],
    "adjacent_to_master": [
      "SOF categories",
      "suretyship main-purpose exception",
      "multiple writings",
      "signature authentication"
    ]
  }
}
```

[1]: https://opencasebook.org/casebooks/11720-bruckner-howard-law-contracts-2024/as-printable-html/9/?utm_source=chatgpt.com "Bruckner (Howard Law) Contracts 2024: Statute of Frauds "
[2]: https://www.ali.org/publications/restatement-law-second/contracts?utm_source=chatgpt.com "Contracts | The American Law Institute"

### 3. c3_annotation

```json
{
  "question_id": "20523_easter_stage_guaranty",
  "subject": "CONTRACTS",
  "credited_answer": "B",
  "outline_code": "54030400",
  "distilled_core_question": "A surety signs a note to someone other than the creditor admitting she promised to pay another person’s debt if that person defaults. Can that note potentially satisfy the Statute of Frauds?",
  "review_truth": "The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party.",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 20523; letter_map: - original_letter: \"A",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "20523_easter_stage_guaranty",
  "subject": "CONTRACTS",
  "outline_code": "54030400",
  "distilled_core_question": "A surety signs a note to someone other than the creditor admitting she promised to pay another person’s debt if that person defaults. Can that note potentially satisfy the Statute of Frauds?",
  "review_truth": "The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-20523",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party.",
    "trap": "See preserved traps when present.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "20523_easter_stage_guaranty",
  "subject": "CONTRACTS",
  "outline_code": "54030400",
  "distilled_core_question": "A surety signs a note to someone other than the creditor admitting she promised to pay another person’s debt if that person defaults. Can that note potentially satisfy the Statute of Frauds?",
  "review_truth": "The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party.",
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
    "placement": "54030400",
    "this_item_teaches": "The Statute of Frauds memorandum test looks to the signer and content, not whether the writing was addressed to the enforcing party.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
