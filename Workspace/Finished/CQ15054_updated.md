---
qid: "15054_sparrowfield_retreat"
transformed_from: "15054"
subject: "REAL_PROPERTY"
topic: "Titles"
subtopic: "Adverse Possession"
outline_code: "84040103"
key: "B"
original_key: "C"
letter_map: "- original_letter: \"B"
dominant_trap: "original_letter: \"A"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "Possession by a tenant is attributed to the person to whom the tenant pays rent, and post-death rent collection after a life estate can support adverse possession."
---
### 0. Frontmatter

```yaml
question_id: "15054_sparrowfield_retreat"
transformed_from: "15054"
subject: "REAL_PROPERTY"
subject_display: "Real Property"
topic: "Titles"
outline_code: "84040103"
outline_code_verified: true
outline_placement: "Titles, Deeds, and Conveyancing > Adverse Possession > Title acquired"
original_key_letter: "C"
new_key_letter: "B"
source_row_pick_rates:
  A: { value: 61, provenance: "inherited" }
  B: { value: 2, provenance: "inherited" }
  C: { value: 29, provenance: "inherited" }
  D: { value: 8, provenance: "inherited" }
dominant_trap:
  original_letter: "A"
  new_letter: "D"
  reason: "Highest measured wrong-answer selection at 61%; reversion-after-life-estate answer ignores later adverse possession."
difficulty: "not_supplied"
```

Source row: BarMatrix Q#15054 supplies the original Real Property/Titles life-estate, lease, death, rent-payment, adverse-possession period, pick rates, official key C, and official explanations.  The outline reference verifies `84040103` as `Real Property > Titles > Adverse Possession > Title acquired`. 

---

# PASS 1 — Divergent Creative Transform Report

## 1. Black-letter rule tested

A person can acquire title by adverse possession through possession carried out by a tenant when the tenant’s possession is attributable to that person. A life tenant’s possessory rights end at death. After that death, someone with no legal right who continues collecting rent from the occupant may be holding adversely to the true owner if the adverse-possession elements and statutory period are satisfied.

Legal verification: adverse possession generally requires actual, open and notorious, exclusive, hostile/adverse, continuous possession for the statutory period. Cornell Wex states adverse possession allows a trespasser in physical possession of land to acquire valid title if the state-specific requirements are met for the limitations period. ([Legal Information Institute][1]) Case authority also confirms the life-estate timing point: possession under a life tenant generally cannot become adverse to the remainderman until the life tenant dies. ([CaseMine][2]) A life tenant can lease property but not beyond the life estate term; after the life tenant dies, continued possession requires the person with the next possessory right’s consent or rent relationship. ([ATG Forum][3])

## 2. Invariant layer preserved

* **Rule:** adverse possession after a life tenant’s death; tenant’s possession can be attributed to the person collecting rent.
* **Issue:** who holds title in fee simple after the owner, the deceased life tenant’s heir, and the occupant all claim title.
* **Credited outcome:** the deceased life tenant’s heir owns in fee simple by adverse possession.
* **Dominant trap:** original A, now D — the owner had a reversion and the life tenant died, but that ignores adverse possession.
* **Distractor mechanics:**

  * Original A → new D: true reversion fact, not dispositive after adverse possession.
  * Original B → new A: false early-hostility claim based on the life tenant’s lease.
  * Original D → new C: occupant has physical possession, but rent payments prevent occupant hostility.
* **Array geometry:** 3-vs-1 residual. Three claimants: original owner, heir, occupant. Correct claimant is heir, but only for the post-death adverse-possession reason.
* **Call function:** court should determine title in fee simple.

## 3. Five Christian variations considered

|  # | Title                        | Setting                                      | Cast                            | Preserved issue                                                     | Why memorable                                                | Legal risks                                           | Divergence score                                                                                     |
| -: | ---------------------------- | -------------------------------------------- | ------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------ | ----------------------------------------------------- | ---------------------------------------------------------------------------------------------------- |
|  1 | Sparrowfield Retreat Cabin   | Private lakeside prayer-retreat cottage      | Martha, Lydia, Timothy, Stephen | Life estate ends; heir collects rent through occupant for >10 years | Bible-copying retreat cabin, rent under a cedar porch ledger | Avoid treating as church property; kept private owner | **9/10** — changes asset, setting, names, numbers, rhythm, texture, rent, title nickname, fact order |
|  2 | Galilee Beekeeping Meadow    | Private apiary meadow leased for honey sheds | Naomi, Ruth, Daniel, Barnabas   | Same                                                                | Honey jars and psalm labels are memorable                    | Meadow lease might distract into fixtures/profits     | 8/10 — strong asset shift, but land-use clutter risk                                                 |
|  3 | Damascus Bookbinding Loft    | Private converted warehouse loft             | Paul, Esther, John, Hannah      | Same                                                                | Scripture-copying workshop                                   | Urban loft may blur residential/lease facts           | 7/10                                                                                                 |
|  4 | Mount Carmel Orchard Cottage | Private orchard cottage                      | Peter, Mary, Timothy, Lydia     | Same                                                                | Fig orchard and retreat cabin                                | Orchard crop facts risk profits/license clutter       | 7/10                                                                                                 |
|  5 | Emmaus Harp Studio           | Private chapel-shaped music studio           | John, Martha, Stephen, Naomi    | Same                                                                | Worship-music practice studio                                | “Chapel-shaped” might imply religious entity          | 6/10                                                                                                 |

**Recommended version:** Variation 1, `sparrowfield_retreat`, because it kills the high-recognition elements while keeping the real-property posture private and legally clean.

## 4. Distractor policy audit

Measured pick rates were supplied, so rates inherit by mechanic. No swap performed.

| Original | Pick % | Mechanic                                              | Audit                                     | Swap? |
| -------- | -----: | ----------------------------------------------------- | ----------------------------------------- | ----- |
| A        |     61 | Reversion fact ignores adverse possession             | Dominant trap; must preserve              | No    |
| B        |      2 | Life tenant’s lease treated as adverse to owner       | Low pick, but clean false-timing mechanic | No    |
| C        |     29 | Correct answer                                        | Preserved                                 | No    |
| D        |      8 | Occupant’s physical possession ignores rent/hostility | Clean adverse-possession element trap     | No    |

Dominant trap: original A → new D.

## 5. Final locked variation

**Stem / Fact Pattern**

Martha owned Sparrowfield, a private lakeside cottage that she sometimes used for quiet Bible-study weekends. Eighteen years ago, Martha conveyed a life estate in Sparrowfield to Lydia. Sixteen years ago, after Lydia had taken possession, Lydia leased Sparrowfield to Stephen for a term of 18 years at a monthly rent of $740. Twelve years ago, Lydia died intestate, leaving Timothy as her sole heir. Stephen regularly paid rent to Lydia and, after Lydia’s death, to Timothy until last month. The period in which to acquire title by adverse possession in the jurisdiction is 10 years. In an appropriate action, Stephen, Martha, and Timothy each asserted ownership of Sparrowfield. The court should hold that title in fee simple is in

**Post-shuffle answer choices**

A. Timothy, because Lydia asserted a claim adverse to Martha when Lydia executed the lease to Stephen.
B. Timothy, because Stephen’s occupation was attributable to Timothy, and Lydia died 12 years ago.
C. Stephen, because of Stephen’s physical occupancy and because Stephen’s term ended with Lydia’s death.
D. Martha, because Martha held a reversion and Lydia has died.

**Correct answer:** B.
Original key letter: C.

## 6. Letter Map

| Original letter | New letter | Mechanic                                               | Substance | Pick rate | Provenance | Dominant trap |
| --------------- | ---------- | ------------------------------------------------------ | --------- | --------: | ---------- | ------------- |
| B               | A          | Life tenant’s lease treated as adverse to owner        | kept      |         2 | inherited  | no            |
| C               | B          | correct_answer                                         | kept      |        29 | inherited  | no            |
| D               | C          | Occupant physical possession ignores rent/hostility    | kept      |         8 | inherited  | no            |
| A               | D          | Reversion-after-death ignores later adverse possession | kept      |        61 | inherited  | yes           |

## 7. Right-answer explanation

B is correct. Lydia’s life estate ended when Lydia died. Timothy had no continuing possessory right from Lydia’s life estate alone, but Stephen continued occupying Sparrowfield and paying rent to Timothy for 12 years. Stephen’s possession was attributable to Timothy. Because the statutory period was 10 years, Timothy acquired title by adverse possession.

**Gold Key:** A tenant’s possession can count for the person to whom the tenant is paying rent. After a life tenant dies, the heir who keeps collecting rent is no longer protected by the life estate and can become an adverse possessor against the true owner.

## 8. Wrong-answer explanations

* **A is wrong.** Lydia’s lease during Lydia’s life estate was not adverse to Martha. Lydia had present possessory rights during life.
* **C is wrong.** Stephen had physical occupancy, but he paid rent to Timothy. That makes Stephen’s possession attributable to Timothy, not hostile for Stephen.
* **D is wrong.** Martha did have the reversion when Lydia died, but that is not the end of the sequence. Timothy’s later 12 years of adverse possession defeated Martha’s title.

## 9. Black-letter verification with authority

Adverse possession requires possession that is actual, open and notorious, exclusive, hostile/adverse, and continuous for the statutory period. The C3 master deck uses the same adverse-possession element set and warns that half-truth traps often omit hostile/adverse or exclusive.  Public legal authority states the same general doctrine: a possessor may acquire valid title through adverse possession after satisfying jurisdiction-specific requirements for the limitations period. ([Legal Information Institute][1]) The life-estate timing is also grounded: possession under a life tenant does not become adverse to the future-interest holder until the life tenant’s death. ([CaseMine][2])

## 10. Rigor / difficulty note

The difficulty is preserved or raised. The surface story is new, but the hard trap remains: students must not stop at “life estate ended, reversion returns.” They must continue the title timeline after death and attribute Stephen’s possession to Timothy.

## 11. C3 CUT → CLASH → CALL walkthrough

**CUT:**
A fails because it starts adverse possession too early. Lydia’s lease during her life estate was lawful, not adverse.
C fails because Stephen paid rent to Timothy. That breaks Stephen’s hostile-possession theory.
D is the dominant trap. It states a true title fact but stops before the post-death adverse-possession period.

**CLASH:**
The real fight is Martha’s reversion versus Timothy’s post-death adverse possession.

**CALL:**
Use the Gold Key. Possession through a tenant counts for the rent-collector. Timothy wins.

## 12. Divergence Audit

| Recognition-Kill item   | Result                                                                                                   |
| ----------------------- | -------------------------------------------------------------------------------------------------------- |
| Asset / subject matter  | Single-family residence → private lakeside Bible-study retreat cottage                                   |
| Transaction frame       | Life estate + lease preserved; skipped because legal structure is invariant                              |
| Specific facts          | Blackacre / landlord / son / tenant → Sparrowfield / Lydia / Timothy / Stephen                           |
| Numbers                 | 15/14/11 years and $500 → 18/16/12 years and $740; 10-year AP period preserved because rule line matters |
| Fact ordering           | Opened with private retreat setting, then conveyance, then lease, then death and rent stream             |
| Cast size / roles       | Same legal roles, all renamed with popular Bible names                                                   |
| Choice ordering         | Shuffled A–D; key moved C → B                                                                            |
| Choice phrasing         | Paraphrased while preserving legal substance                                                             |
| Setting / era / texture | Ordinary residence → lakeside Christian retreat texture                                                  |
| Call wording            | Preserved “title in fee simple is in” because changing it risks altering rigor                           |

**Original stem summary:** An owner conveyed a life estate in a residence, the life tenant leased it, died, and the life tenant’s son collected rent from the tenant long enough to claim adverse possession.

**Variant stem summary:** Martha’s private lakeside Bible-study cottage was held by Lydia for life, then Stephen kept paying rent to Timothy for 12 years after Lydia died.

Recognition test passed.

## 13. Distilled Core Question

When a life tenant dies, can the life tenant’s heir acquire title by adverse possession if the occupant keeps paying rent to that heir for longer than the statutory period?

## 14. Review Truth

Possession by a tenant is attributed to the person to whom the tenant pays rent, and post-death rent collection after a life estate can support adverse possession.

## 15. Five variations table

Included above in Section 3.

---

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "15054_sparrowfield_retreat"
  transformed_from: "15054"
  subject: "REAL_PROPERTY"
  subject_display: "Real Property"
  topic: "Titles"
  subtopic: "Adverse Possession"
  outline_code: "84040103"
  difficulty: "not_supplied"
  selection_percentages:
    A: { value: 2, provenance: "inherited" }
    B: { value: 29, provenance: "inherited" }
    C: { value: 8, provenance: "inherited" }
    D: { value: 61, provenance: "inherited" }
  official_key: "B"
  original_key_letter: "C"
  call: "The court should hold that title in fee simple is in"
  stem: "Martha owned Sparrowfield, a private lakeside cottage that she sometimes used for quiet Bible-study weekends. Eighteen years ago, Martha conveyed a life estate in Sparrowfield to Lydia. Sixteen years ago, after Lydia had taken possession, Lydia leased Sparrowfield to Stephen for a term of 18 years at a monthly rent of $740. Twelve years ago, Lydia died intestate, leaving Timothy as her sole heir. Stephen regularly paid rent to Lydia and, after Lydia's death, to Timothy until last month. The period in which to acquire title by adverse possession in the jurisdiction is 10 years. In an appropriate action, Stephen, Martha, and Timothy each asserted ownership of Sparrowfield. The court should hold that title in fee simple is in"
  choices:
    A: "Timothy, because Lydia asserted a claim adverse to Martha when Lydia executed the lease to Stephen."
    B: "Timothy, because Stephen's occupation was attributable to Timothy, and Lydia died 12 years ago."
    C: "Stephen, because of Stephen's physical occupancy and because Stephen's term ended with Lydia's death."
    D: "Martha, because Martha held a reversion and Lydia has died."

transform_provenance:
  transformed_from: "15054"
  variant_slug: "sparrowfield_retreat"
  original_key_letter: "C"
  new_key_letter: "B"
  letter_map:
    - original_letter: "B"
      new_letter: "A"
      mechanic: "life_tenant_lease_treated_as_adverse_to_owner"
      substance: "kept"
      pick_rate: { value: 2, provenance: "inherited" }
      dominant_trap: false
    - original_letter: "C"
      new_letter: "B"
      mechanic: "correct_answer"
      substance: "kept"
      pick_rate: { value: 29, provenance: "inherited" }
      dominant_trap: false
    - original_letter: "D"
      new_letter: "C"
      mechanic: "occupant_physical_possession_ignores_rent_and_hostility"
      substance: "kept"
      pick_rate: { value: 8, provenance: "inherited" }
      dominant_trap: false
    - original_letter: "A"
      new_letter: "D"
      mechanic: "reversion_after_death_ignores_later_adverse_possession"
      substance: "kept"
      pick_rate: { value: 61, provenance: "inherited" }
      dominant_trap: true
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "An owner conveyed a life estate in a residence, the life tenant leased it, died, and the life tenant's son collected rent from the tenant long enough to claim adverse possession."
    variant_stem_one_sentence: "Martha's private lakeside Bible-study cottage was held by Lydia for life, then Stephen kept paying rent to Timothy for 12 years after Lydia died."
    dimensions_changed:
      - "asset"
      - "setting"
      - "names"
      - "numbers"
      - "rent_amount"
      - "fact_rhythm"
      - "choice_ordering"
      - "choice_phrasing"
      - "texture"
    dimensions_skipped_with_reason:
      - dimension: "transaction_frame"
        reason: "Life estate plus lease must remain to preserve the tested rule."
      - dimension: "statutory_period"
        reason: "The 10-year period is the doctrinal line and was preserved."

source_stack:
  primary_row: "15054.md"
  controlled_vocabularies: "controlled_vocabularies.md"
  outline_codes: "OUTLINE_CODES_COMPLETE.md"
  c3_lessons:
    - "Lesson 1 TRUE and RESPONSIVE"
    - "Lesson 2 CUT CLASH CALL"
    - "Lesson 6 half-truth / missing element"
    - "Lesson 12 anchor deck"
    - "Lesson 14 workflow"
  authority_layer:
    - "Cornell Wex adverse possession"
    - "Busby v. Thompson"
    - "life-tenant lease authority"

student_access_contract:
  allowed_moves:
    - "TRUE and RESPONSIVE"
    - "CUT"
    - "CLASH"
    - "CALL"
    - "half-truth missing element"
    - "Real Property conveyance decoder"
    - "Gold Key for adverse possession through tenant"
    - "Silver Key for title timeline"
  controlling_test: "A smart 10-year-old with C3 lessons and the Gold Key can identify the student-facing defects."
  leak_rule: "No distractor is called false unless the falsehood is visible from grammar, overclaim, taught anchor, or stem relation."

stem_parse:
  legal_roles:
    original_owner: "Martha"
    life_tenant: "Lydia"
    occupant_tenant: "Stephen"
    heir_collecting_rent: "Timothy"
  timeline:
    - "18 years ago: Martha conveyed a life estate to Lydia."
    - "16 years ago: Lydia leased Sparrowfield to Stephen for 18 years."
    - "12 years ago: Lydia died intestate, leaving Timothy as sole heir."
    - "After death: Stephen paid rent to Timothy until last month."
    - "Statutory adverse-possession period: 10 years."
  call_type: "title_holder"
  negative_stem_inversion: false
  adjacent_call_trap: "Who had the reversion when the life tenant died."

trigger_facts:
  - fact: "Lydia held only a life estate."
    access_label: "Gold_Key"
    function: "Shows Lydia's right ended at death."
  - fact: "Lydia died 12 years ago."
    access_label: "student_visible"
    function: "Starts post-death adverse-possession clock."
  - fact: "Stephen paid rent to Timothy after Lydia's death."
    access_label: "Gold_Key"
    function: "Attributes Stephen's possession to Timothy."
  - fact: "10-year adverse-possession period."
    access_label: "student_visible"
    function: "Timothy's 12 years exceeds the period."

c3_routing:
  subject_fit: "Real Property = layered conveyance plus title timeline."
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
  difficulty: "not_supplied"

answer_array:
  geometry: "3_claimants_3_vs_1"
  claimants:
    A: "Timothy"
    B: "Timothy"
    C: "Stephen"
    D: "Martha"
  dominant_trap: "D"
  tension_axis: "Martha's reversion after life estate versus Timothy's later adverse possession through Stephen's rent-paying possession."
  residual: "B"

choice_walkthroughs:
  A:
    filter_broken: "NOT_TRUE"
    mold_code: "flat_misstatement"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "wrong_timing"
      - "misstated_rule"
      - "sounds_lawyerly"
    method_class: "anchor_assisted"
    student_label: "Starts the adverse clock too early."
    c3_signal: "The answer treats Lydia's lease during Lydia's life estate as adverse to Martha, but the life-estate frame means Lydia was allowed to possess and lease during life."
    lawyer_confirmation: "A life tenant's possession and lease are lawful during the life estate; adverse possession against the future holder begins only after the life tenant's death."
  B:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "anchor_assisted"
    student_label: "True and responsive."
    c3_signal: "This answer tracks the timeline after Lydia's death and attributes Stephen's rent-paying occupation to Timothy."
    lawyer_confirmation: "Timothy's post-death rent collection through Stephen's possession lasted 12 years, exceeding the 10-year adverse-possession period."
  C:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "half_right_answer"
      - "wrong_element"
      - "attractive_wrong_answer"
    method_class: "anchor_assisted"
    student_label: "Physical possession without hostility."
    c3_signal: "Stephen has the body-on-land fact, but the rent-payment fact points the occupation to Timothy."
    lawyer_confirmation: "Stephen's rent payments defeat Stephen's claim of hostile possession against Timothy."
  D:
    filter_broken: "NOT_RESPONSIVE"
    mold_code: "wrong_element"
    mold_family: "ISSUE_SENSE"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "legally_true_but_irrelevant"
      - "answer_to_different_question"
      - "bar_exam_bait"
    method_class: "anchor_assisted"
    student_label: "True first step, wrong endpoint."
    c3_signal: "Martha's reversion after Lydia died is only the first title event; the answer stops before Timothy's 12-year rent-collection period."
    lawyer_confirmation: "Martha's reversion was lost when Timothy satisfied adverse possession after Lydia's death."

residual_answer:
  credited_answer: "B"
  why_survives: "It is the only answer that accounts for the life estate ending, the tenant's rent payments to Timothy, and the 12-year period exceeding the 10-year adverse-possession period."

legal_leak_audit:
  student_accessible:
    - "A title timeline must keep moving after the life tenant dies."
    - "A half-right answer that gives one title event but ignores a later title-acquiring event is not responsive."
    - "Gold Key supplies tenant-attribution and post-life-estate adverse possession."
  lawyer_only_quarantined:
    - "Case authority for adverse possession against remaindermen after death of life tenant."
    - "Authority on life tenant's power to lease only for the life estate."
  drift_audit: "No lawyer-only doctrine is used to label a choice hard_structural."

gold_keys:
  - id: "GK-REAL_PROPERTY-ADVERSE-POSSESSION-THROUGH-TENANT-01"
    statement: "A tenant's possession is attributed to the person to whom the tenant pays rent. After a life tenant dies, an heir who keeps collecting rent may acquire title by adverse possession if the statutory period and possession elements are met."
    type: "rule"
    unlocks: "The difference between the heir's adverse possession and the occupant's non-hostile possession."
    trigger: "Life estate ends, but the occupant keeps paying rent to the life tenant's heir."
    tested_choice: "B"
    authority: "Adverse possession elements plus life-estate timing authority."
    last_minute_review: true

silver_keys:
  - id: "SK-REAL_PROPERTY-TITLE-TIMELINE-01"
    statement: "Do not stop the title movie at the death of the life tenant. Keep running the timeline through the statutory period and ask whose possession the occupant's rent payments represent."
    type: "clash"
    navigates: "Reversion trap versus later adverse possession."
    trigger: "A reversion answer competes with a post-death rent-collection answer."
    tested_choice: "D"
    outline_code: "84040103"
    last_minute_review: true

remediation:
  card_id: "RP-AP-RENT-ATTRIBUTION-01"
  title: "Rent Points Possession"
  signal: "Occupant keeps paying rent after a life estate ends."
  student_move: "Ask who gets credit for the occupant's possession."
  tiny_rule: "Rent paid to claimant usually makes the occupant's possession attributable to that claimant, not hostile for the occupant."
  trap: "Picking the reversion owner or the physical occupant without accounting for rent."
  confidence: "ANCHOR_ASSISTED"

distilled_core_question: "When a life tenant dies, can the life tenant's heir acquire title by adverse possession if the occupant keeps paying rent to that heir for longer than the statutory period?"
review_truth: "Possession by a tenant is attributed to the person to whom the tenant pays rent, and post-death rent collection after a life estate can support adverse possession."

case_study_output:
  final_student_script: "Title timeline. Lydia had life estate only. Lydia dies. Stephen pays Timothy for 12 years. Ten-year AP period. Stephen's possession counts for Timothy. Pick B."
  outline_mastery: "Adverse possession title acquired through attributed possession."

quality_control:
  pass_requirements_met: true
  exactly_three_single_filter_distractors: true
  key_consistency_checked: true
  json_blocks_parse_checked: true
  controlled_vocabulary_checked: true
  outline_code_verified: true
  recognition_test_passed: true

analytics_hooks:
  dominant_trap_choice: "D"
  dominant_trap_original: "A"
  likely_miss_reason: "Stops at reversion and fails to continue timeline through adverse possession."
  drill_family: "title_timeline_adverse_possession"
```

---

### 2. The 17-section student case study

## program_frame

Real Property title questions are title movies. Do not freeze the frame at the first correct title event. Here, the life estate ending is real, but the title movie keeps running for 12 more years.

## student_access_test

The clean C3 move is not pure structure. The item needs a Gold Key: rent-paying possession can be attributed to the rent-collector. Once that key is supplied, the answer array becomes teachable.

## question_data

**Stem:** Martha owned Sparrowfield, a private lakeside cottage used for quiet Bible-study weekends. Martha conveyed a life estate to Lydia. Lydia leased it to Stephen. Lydia died. Stephen then paid rent to Timothy for 12 years. The adverse-possession period is 10 years. Stephen, Martha, and Timothy each claim title.

**Call:** The court should hold title in fee simple is in whom?

**Choices:**
A. Timothy, because Lydia’s lease was adverse to Martha.
B. Timothy, because Stephen’s occupation was attributable to Timothy, and Lydia died 12 years ago.
C. Stephen, because he physically occupied the cottage and his lease ended at Lydia’s death.
D. Martha, because Martha held a reversion and Lydia has died.

## distilled_core_question

When a life tenant dies, can the life tenant’s heir acquire title by adverse possession if the occupant keeps paying rent to that heir for longer than the statutory period?

## call_and_prediction

**Call lock:** Who has fee simple title now?

**Prediction:** Timothy. Lydia’s life estate ended, but Stephen kept paying Timothy rent for 12 years. The statutory period is 10 years. The possession counts for Timothy.

## trigger_facts

| Fact                         | Function                               |
| ---------------------------- | -------------------------------------- |
| Lydia had a life estate      | Lydia’s own right ended at death       |
| Lydia died 12 years ago      | Post-death clock starts                |
| Stephen paid rent to Timothy | Stephen’s possession points to Timothy |
| AP period is 10 years        | Timothy’s 12 years clears the line     |

## governing_c3_lane

**Lane:** Real Property title timeline.
**FIT:** Real Property = layered conveyance plus title timeline.
**Deciding move:** anchor-assisted CUT.
**Gold Key:** Rent points possession.

## choice_by_choice_walkthrough

### A

1. **Student-accessible C3 signal:** The answer starts the adverse claim while Lydia was still alive and lawfully holding the life estate.
2. **Student label:** Wrong timing.
3. **True/responsive version:** Timothy acquired title because Stephen paid rent to Timothy for 12 years after Lydia died.
4. **Lawyer confirmation:** Lydia’s lease during Lydia’s life estate was not adverse to Martha. Possession adverse to Martha starts after Lydia’s possessory estate ends.

### B

1. **Student-accessible C3 signal:** This answer uses the whole timeline: Lydia died, Stephen paid Timothy, and 12 years beats 10 years.
2. **Student label:** True and responsive.
3. **True/responsive version:** This is already the true and responsive version.
4. **Lawyer confirmation:** The adverse-possession elements are satisfied through Stephen’s attributable possession for Timothy.

**Gold Key:** A tenant’s possession can count for the person to whom the tenant pays rent.

**Silver Key:** Do not stop the title movie at the death of the life tenant.

### C

1. **Student-accessible C3 signal:** Stephen has physical occupancy, but he paid rent to Timothy. Rent is the fact that blocks Stephen’s hostile-possession claim.
2. **Student label:** Wrong element.
3. **True/responsive version:** Stephen would be stronger if he had stayed without paying rent to Timothy.
4. **Lawyer confirmation:** Rent payments show Stephen was not occupying adversely to Timothy.

### D

1. **Student-accessible C3 signal:** This is the dominant trap. Martha’s reversion is a true first step, but it ignores 12 later years of adverse possession.
2. **Student label:** True fact, wrong endpoint.
3. **True/responsive version:** Martha would win if Timothy had not completed adverse possession after Lydia died.
4. **Lawyer confirmation:** Martha’s reversion was defeated by Timothy’s later adverse possession.

## residual_answer

Only B accounts for every load-bearing fact: life estate, death, rent to Timothy, 12 years, 10-year period.

## legal_leak_audit

Student-accessible: title timeline, rent attribution through Gold Key, wrong-element detection, reversion trap.
Lawyer-only: authority confirming adverse-possession timing after life tenant death and life tenant lease limits.
No distractor is labeled hard structural when its defect depends on the adverse-possession anchor.

Drift audit: authority was quarantined to lawyer confirmation; the student path uses C3 plus Gold Key only.

## final_student_script

Title movie. Martha gives Lydia a life estate. Lydia dies. Do not stop there. Stephen keeps paying Timothy for 12 years. Ten-year adverse-possession period. Rent makes Stephen’s possession count for Timothy. B.

## remediation_card

**RP-AP-RENT-ATTRIBUTION-01 — Rent Points Possession**

* **Signal:** Occupant keeps paying rent after a life estate ends.
* **Student move:** Ask who gets credit for the occupant’s possession.
* **Tiny rule:** Rent paid to claimant usually makes the occupant’s possession attributable to that claimant.
* **Trap:** Picking the reversion owner or physical occupant too early.

## Gold Key(s)

**GK-REAL_PROPERTY-ADVERSE-POSSESSION-THROUGH-TENANT-01**

A tenant’s possession is attributed to the person to whom the tenant pays rent. After a life tenant dies, an heir who keeps collecting rent may acquire title by adverse possession if the statutory period and possession elements are met.

## Silver Key(s)

**SK-REAL_PROPERTY-TITLE-TIMELINE-01**

Do not stop the title movie at the death of the life tenant. Keep running the timeline through the statutory period and ask whose possession the occupant’s rent payments represent.

## qa_checklist

* Correct answer stayed B post-shuffle.
* Original key C mapped to new B.
* Dominant trap original A mapped to new D.
* Pick rates inherited by mechanic.
* Outline code verified: `84040103`.
* PASS available: one true-and-responsive residual; three single-filter distractors.

## wrong_answer_recovery_paths

| Choice | Why student picks it                             | Missed move             | Recovery                                           |
| ------ | ------------------------------------------------ | ----------------------- | -------------------------------------------------- |
| A      | Lease sounds like ownership assertion            | Starts clock too early  | Separate life-estate period from post-death period |
| C      | Physical occupancy feels like adverse possession | Misses hostility/rent   | Ask whether occupant paid rent                     |
| D      | Reversion after death is familiar                | Stops timeline too soon | Continue the title movie through AP period         |

## outline_mastery_map

* **Placement:** `84040103`
* **This item teaches:** title acquired by adverse possession after life estate ends.
* **Fills:** adverse possession by attributed possession.
* **Adjacent:** life estates, reversions, landlord-tenant possession.

## crossover_intersection_map

* **Contracts crossover:** lease term can outlast the lessor’s estate on paper, but title rules control possession after the life estate ends.
* **Property crossover:** present estates plus adverse possession.
* **C3 crossover:** wrong-element trap from Lesson 6 and Issue-Sense.

## review_truth

Possession by a tenant is attributed to the person to whom the tenant pays rent, and post-death rent collection after a life estate can support adverse possession.

---

### 3. c3_annotation

```json
{
  "question_id": "15054_sparrowfield_retreat",
  "subject": "REAL_PROPERTY",
  "credited_answer": "B",
  "outline_code": "84040103",
  "distilled_core_question": "When a life tenant dies, can the life tenant's heir acquire title by adverse possession if the occupant keeps paying rent to that heir for longer than the statutory period?",
  "review_truth": "Possession by a tenant is attributed to the person to whom the tenant pays rent, and post-death rent collection after a life estate can support adverse possession.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "B",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "ANCHOR_ASSISTED",
    "tension_axis": "Martha's reversion after Lydia's death versus Timothy's later adverse possession through Stephen's rent-paying occupation.",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": null,
    "difficulty": "not_supplied",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_TRUE",
        "mold": "flat_misstatement",
        "architecture": null,
        "card_ref": "GK-REAL_PROPERTY-ADVERSE-POSSESSION-THROUGH-TENANT-01",
        "explanation": "This starts the adverse-possession claim too early by treating Lydia's lawful life-estate lease as adverse to Martha."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "wrong_element",
        "architecture": null,
        "card_ref": "GK-REAL_PROPERTY-ADVERSE-POSSESSION-THROUGH-TENANT-01",
        "explanation": "This proves Stephen's physical occupancy but misses hostility because Stephen paid rent to Timothy."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "wrong_element",
        "architecture": null,
        "card_ref": "SK-REAL_PROPERTY-TITLE-TIMELINE-01",
        "explanation": "This states the reversion step but ignores Timothy's later adverse possession."
      }
    ],
    "analyzer_notes": "drift_audit: student path uses C3 timeline plus Gold Key; legal authority quarantined. transformed_from: 15054. letter_map: original B->new A; original C->new B; original D->new C; original A->new D. outline_code 84040103 verified verbatim. Dominant trap is new D inherited from original A at 61%."
  },
  "gold_keys": [
    {
      "id": "GK-REAL_PROPERTY-ADVERSE-POSSESSION-THROUGH-TENANT-01",
      "statement": "A tenant's possession is attributed to the person to whom the tenant pays rent. After a life tenant dies, an heir who keeps collecting rent may acquire title by adverse possession if the statutory period and possession elements are met.",
      "type": "rule",
      "unlocks": "The difference between the heir's adverse possession and the occupant's non-hostile possession.",
      "trigger": "Life estate ends, but the occupant keeps paying rent to the life tenant's heir.",
      "tested_choice": "B",
      "authority": "Adverse possession elements plus life-estate timing authority.",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-REAL_PROPERTY-TITLE-TIMELINE-01",
      "statement": "Do not stop the title movie at the death of the life tenant. Keep running the timeline through the statutory period and ask whose possession the occupant's rent payments represent.",
      "type": "clash",
      "navigates": "Reversion trap versus later adverse possession.",
      "trigger": "A reversion answer competes with a post-death rent-collection answer.",
      "tested_choice": "D",
      "outline_code": "84040103",
      "last_minute_review": true
    }
  ]
}
```

---

### 4. program_elements

```json
{
  "question_id": "15054_sparrowfield_retreat",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040103",
  "distilled_core_question": "When a life tenant dies, can the life tenant's heir acquire title by adverse possession if the occupant keeps paying rent to that heir for longer than the statutory period?",
  "review_truth": "Possession by a tenant is attributed to the person to whom the tenant pays rent, and post-death rent collection after a life estate can support adverse possession.",
  "tension": {
    "axis": "reversion_after_life_estate_vs_later_adverse_possession",
    "resolving_fact": "Stephen paid rent to Timothy for 12 years after Lydia died."
  },
  "traps": [
    {
      "choice": "A",
      "mold": "flat_misstatement",
      "architecture": null,
      "why_attractive": "The student sees Lydia leasing the land and treats a long lease as an ownership challenge. The breaker is timing: Lydia had lawful possession during her life estate, so the hostile period does not start there.",
      "focus_group_pct": 2,
      "pct_provenance": "inherited"
    },
    {
      "choice": "C",
      "mold": "wrong_element",
      "architecture": null,
      "why_attractive": "The student equates physical occupancy with adverse possession. The breaker is rent: Stephen's payments to Timothy make Stephen's possession attributable to Timothy, not hostile for Stephen.",
      "focus_group_pct": 8,
      "pct_provenance": "inherited"
    },
    {
      "choice": "D",
      "mold": "wrong_element",
      "architecture": null,
      "why_attractive": "The student remembers that a reversion follows a life estate and stops there. The breaker is the later 12-year rent-collection period, which creates title by adverse possession.",
      "focus_group_pct": 61,
      "pct_provenance": "inherited"
    }
  ],
  "remediation_card": {
    "card_id": "RP-AP-RENT-ATTRIBUTION-01",
    "title": "Rent Points Possession",
    "signal": "Occupant keeps paying rent after a life estate ends.",
    "student_move": "Ask who gets credit for the occupant's possession.",
    "tiny_rule": "Rent paid to claimant usually makes the occupant's possession attributable to that claimant, not hostile for the occupant.",
    "trap": "Picking the reversion owner or physical occupant without accounting for rent.",
    "confidence": "ANCHOR_ASSISTED"
  },
  "red_zone_dimensions": [
    "life_estate_timeline",
    "adverse_possession_elements",
    "hostility",
    "attributed_possession",
    "dominant_reversion_trap"
  ]
}
```

---

### 5. program_intelligence

```json
{
  "question_id": "15054_sparrowfield_retreat",
  "subject": "REAL_PROPERTY",
  "outline_code": "84040103",
  "distilled_core_question": "When a life tenant dies, can the life tenant's heir acquire title by adverse possession if the occupant keeps paying rent to that heir for longer than the statutory period?",
  "review_truth": "Possession by a tenant is attributed to the person to whom the tenant pays rent, and post-death rent collection after a life estate can support adverse possession.",
  "wrong_answer_paths": [
    {
      "choice": "A",
      "filter_broken": "NOT_TRUE",
      "mold": "flat_misstatement",
      "why_a_student_picks_this": "The student treats any long lease by the life tenant as hostile to the original owner.",
      "skipped_move": "Separate lawful life-estate possession from post-death adverse possession.",
      "recovery_step": "Ask whether the person making the lease had lawful possession at that time."
    },
    {
      "choice": "C",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "wrong_element",
      "why_a_student_picks_this": "The student overvalues physical occupancy and ignores the rent stream.",
      "skipped_move": "Check hostility and attribution.",
      "recovery_step": "If the occupant pays rent, possession usually points to the rent-collector."
    },
    {
      "choice": "D",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "wrong_element",
      "why_a_student_picks_this": "The student correctly sees the reversion but stops the timeline too early.",
      "skipped_move": "Continue the title movie after the life tenant dies.",
      "recovery_step": "Run every later possession fact through the statutory period."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "trigger_spotter",
      "target_skill": "Identify post-death AP clock",
      "prompt": "Life tenant dies. Occupant keeps paying the heir for 11 years. AP period is 10 years. Who gets AP credit?",
      "answer": "The heir collecting rent gets credit for the occupant's possession."
    },
    {
      "drill_type": "wrong_answer_eliminator",
      "target_skill": "Cut reversion trap",
      "prompt": "Choice says original owner wins because the owner had a reversion and the life tenant died. Name the missing later event.",
      "answer": "Later adverse possession after the life tenant's death."
    },
    {
      "drill_type": "trap_trainer",
      "target_skill": "Hostility through rent",
      "prompt": "Occupant claims AP but paid monthly rent to claimant for the entire period. What element is the problem?",
      "answer": "Hostile/adverse possession by the occupant."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "dominant_reversion_trap",
      "timeline_stop_error",
      "rent_attribution_miss"
    ],
    "misconception_tags": [
      "life_estate_death_ends_analysis",
      "physical_possession_equals_adverse_possession",
      "lease_equals_hostility"
    ]
  },
  "component_routing": [
    "MBE Tension Matrix",
    "MBE Trap Matrix",
    "MBE Pattern Lab",
    "MBE Rescue Matrix"
  ],
  "crossovers": [
    {
      "area": "Landlord-Tenant",
      "connection": "Lease possession can be attributed to the rent-collector."
    },
    {
      "area": "Future Interests",
      "connection": "Life estate ending creates reversion, but later AP can defeat it."
    },
    {
      "area": "C3 Issue-Sense",
      "connection": "A true title fact can be nonresponsive if it ignores the later dispositive fact."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-REAL_PROPERTY-ADVERSE-POSSESSION-THROUGH-TENANT-01",
      "statement": "A tenant's possession is attributed to the person to whom the tenant pays rent. After a life tenant dies, an heir who keeps collecting rent may acquire title by adverse possession if the statutory period and possession elements are met.",
      "type": "rule",
      "unlocks": "The difference between the heir's adverse possession and the occupant's non-hostile possession.",
      "trigger": "Life estate ends, but the occupant keeps paying rent to the life tenant's heir.",
      "tested_choice": "B",
      "authority": "Adverse possession elements plus life-estate timing authority.",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-REAL_PROPERTY-TITLE-TIMELINE-01",
      "statement": "Do not stop the title movie at the death of the life tenant. Keep running the timeline through the statutory period and ask whose possession the occupant's rent payments represent.",
      "type": "clash",
      "navigates": "Reversion trap versus later adverse possession.",
      "trigger": "A reversion answer competes with a post-death rent-collection answer.",
      "tested_choice": "D",
      "outline_code": "84040103",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Titles, Deeds, and Conveyancing > Adverse Possession > Title acquired",
    "this_item_teaches": "Title can be acquired by adverse possession through possession attributed from a rent-paying occupant.",
    "fills": [
      "adverse possession title acquired",
      "hostility",
      "continuity",
      "attributed possession"
    ],
    "adjacent_to_master": [
      "life estates",
      "reversions",
      "landlord-tenant lease possession",
      "future interests"
    ]
  }
}
```

[1]: https://www.law.cornell.edu/wex/adverse_possession?utm_source=chatgpt.com "adverse possession | Wex | LII / Legal Information Institute"
[2]: https://www.casemine.com/judgement/us/59148e67add7b04934553594?utm_source=chatgpt.com "BUSBY v. THOMPSON | No. 85-47 | Ark. | Judgment | Law"
[3]: https://www.atgf.com/tools-publications/pubs/until-death-do-us-part-life-estates?utm_source=chatgpt.com "Life Estates | Attorneys' Title Guaranty Fund, Inc."
