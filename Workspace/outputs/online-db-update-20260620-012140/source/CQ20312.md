---
qid: "20312_loaves_fishes_retreat"
transformed_from: "20312"
subject: "REAL_PROPERTY"
topic: "Ownership"
subtopic: "Life estates; remainders; encumbrance payment allocation"
outline_code: "82010103"
key: "C"
original_key: "B"
letter_map: "- original_letter: \"A"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal."
---
## A) PASS-1 TRANSFORM REPORT

### 1. Final question

**BARMATRIX Q#: `20312_loaves_fishes_retreat`**
**Subject:** Real Property
**Transformed from:** `20312` 

Martha holds a life estate in a private lakeside parcel called the Loaves-and-Fishes Retreat, where families rent small cabins during nearby Bible-study weekends. Stephen holds the remainder. Before the life estate was created, the parcel was already subject to a recorded mortgage securing a loan on the parcel. The parcel’s reasonable rental value is greater than the total currently needed to cover both principal and interest on that secured obligation.

**Which statement correctly allocates the payment obligation, as between Martha and Stephen, for the obligation secured by the mortgage?**

### 2. Distilled Core Question

A life tenant is in possession. The property’s rental value can cover principal and interest on a mortgage. Who pays interest, and who pays principal?

### 3. Final answer choices

A. Martha must pay the principal, and Stephen must pay the interest.
B. Stephen must pay both principal and interest.
C. Martha must pay the interest, and Stephen must pay the principal.
D. Martha must pay both principal and interest.

### 5. Correct answer

**C** — original key letter: **B**.

### 6. Letter Map

| Original letter | New letter | Mechanic                                                                     | Substance | Pick rate                 |
| --------------- | ---------: | ---------------------------------------------------------------------------- | --------- | ------------------------- |
| A               |          D | `extreme_of_range` — life tenant’s interest duty over-extended to principal  | kept      | not supplied; `predicted` |
| B               |          C | `correct_answer`                                                             | kept      | not supplied; `predicted` |
| C               |          A | `backwards` — principal/interest allocation reversed                         | kept      | not supplied; `predicted` |
| D               |          B | `extreme_of_range` — remainderman’s principal duty over-extended to interest | kept      | not supplied; `predicted` |

### 7. Full right-answer explanation

**C is correct.** The answer array is a two-by-two allocation grid: two people, two payment components. **Silver Key:** do not pick the answer that feels fairest; first read the array as “who gets interest?” and “who gets principal?” **Gold Key:** for a mortgage or other encumbrance on land held in life estate, the life tenant pays the current-use cost — interest, up to the reasonable rental value — and the remainderman pays the long-term equity cost — principal.

Here, Martha is the life tenant in possession, and the reasonable rental value is high enough to cover the relevant payment burden. Stephen holds the remainder. So Martha pays interest, and Stephen pays principal.

### 8. Full wrong-answer explanations

**A.** This choice is attractive because it has a clean split and gives each party one burden. The breaker is the direction: **Gold Key:** principal belongs to the future-equity side, not the current-use side.

**B.** This choice is attractive because the remainderman will ultimately own the parcel, so loading the whole secured obligation onto Stephen feels tidy. The breaker is the over-extension: Stephen’s side is principal, not interest.

**D.** This choice is attractive because Martha is currently in possession and the parcel produces enough rental value to cover the whole payment. The breaker is the over-extension: possession explains the interest burden, not principal.

### 9. Full black-letter-law verification and legal reasoning for the right answer

The tested rule is unchanged: as between a life tenant and remainderman, the life tenant must pay interest on a prior mortgage or similar encumbrance, at least to the extent of income or rental value, while the life tenant is not obligated to pay principal; principal is charged to the future interest side. *Thompson v. Watkins* states that a life tenant owes the remaindermen a duty to pay interest on a mortgage encumbrance during the life estate, to the extent of income or rental value, and that the life tenant has no obligation to pay principal. New York Real Property Law § 269 also reflects the premise that mortgage or lien interest on life-estate property is the life tenant’s burden. ([Justia][1])

The transform does not change the legal issue, the answer substance, or the credited outcome. The original rule statement and official explanation identify the same split: life tenant pays interest up to reasonable rental value; remainderman pays principal. 

### 10. Why the variation preserves rigor and difficulty

The new version keeps the same rule, the same principal-versus-interest allocation, the same life-tenant/remainderman relationship, the same rental-value limiting fact, and the same 2×2 answer geometry. It raises memorability through a Christian-flavored private retreat setting without adding church-property, charitable-immunity, First Amendment, lease, tax, or trust issues.

### 11. C3 elimination walkthrough — CUT → CLASH → CALL

**Frame.** Real Property. Rule-driven. The answer array is an allocation grid.

**Initial CUT.** No clean structural cut. All four choices are grammatically plausible. A student cannot derive the principal/interest allocation from universal C3 alone.

**CALL / Anchor.** Apply the Gold Key: life tenant = interest; remainderman = principal.

**A.** Cut after anchor. It reverses the allocation.
**B.** Cut after anchor. It over-assigns both burdens to the remainderman.
**D.** Cut after anchor. It over-assigns both burdens to the life tenant.
**C.** Residual answer. It matches the anchor exactly.

### 12. Divergence Audit

| Recognition-Kill dimension  | Result                                                                                                            |
| --------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| Asset / subject matter      | Changed from abstract “realty” to a private lakeside cabin-retreat parcel.                                        |
| Transaction frame           | Skipped. The secured obligation / encumbrance frame is legally load-bearing.                                      |
| Specific facts              | Changed to a recorded mortgage on a named private parcel with rental cabins.                                      |
| Numbers                     | Skipped. Original supplied no numeric payment amount; adding numbers would create unnecessary arithmetic texture. |
| Fact ordering / stem rhythm | Changed from abstract rule prompt to story-first, then legal relationship, then call.                             |
| Cast size / roles           | Added Martha as life tenant and Stephen as remainderman; no non-load-bearing legal actor added.                   |
| Choice ordering             | Shuffled. New key is C.                                                                                           |
| Choice phrasing             | Rephrased using named parties while preserving legal substance.                                                   |
| Setting / era / texture     | Changed to a modern private Christian-themed rental-retreat parcel.                                               |
| Call wording                | Kept equivalent allocation-call wording for MBE rigor.                                                            |

**Original one-sentence stem summary:** An abstract life tenant and remainderman must allocate principal and interest on an encumbrance where rental value is sufficient.
**Variant one-sentence stem summary:** Martha runs a private lakeside Christian-themed cabin retreat subject to a mortgage, and Stephen’s future ownership interest triggers a principal-versus-interest allocation question.

Recognition test passed: the overlap is only the tested rule.

### 13. Review Truth

**Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal.**

### 14. The 5 variations considered

| Candidate                                  | Setting / cast                                                           | Preserved issue                                                 | Why memorable                                     | Legal risks                                          | Divergence score                                                                                                     |
| ------------------------------------------ | ------------------------------------------------------------------------ | --------------------------------------------------------------- | ------------------------------------------------- | ---------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- |
| **Recommended: Loaves-and-Fishes Retreat** | Martha life tenant; Stephen remainderman; private lakeside cabin parcel  | Life tenant / remainderman allocation of principal and interest | Christian imagery, private retreat, named parties | Low; private rental parcel avoids church-law issues  | **8/10** — kills abstractness, cast absence, setting absence, generic asset, rhythm, choice order, phrasing, texture |
| Mustard Seed Orchard                       | Ruth life tenant; Daniel remainderman; orchard leased for family picnics | Same allocation                                                 | Strong Christian phrase and land texture          | Slight risk of agricultural-use facts distracting    | 7/10                                                                                                                 |
| Upper Room Apartments                      | Lydia life tenant; Timothy remainderman; private apartment building      | Same allocation                                                 | Familiar Christian phrase; urban texture          | Apartment rentals could invite landlord-tenant noise | 6/10                                                                                                                 |
| Gospel Press Building                      | Paul life tenant; John remainderman; private print-shop realty           | Same allocation                                                 | Memorable Christian craft setting                 | Business equipment might distract from realty        | 6/10                                                                                                                 |
| Good Samaritan Fishing Camp                | Hannah life tenant; Barnabas remainderman; private fishing-camp parcel   | Same allocation                                                 | Distinct asset and fun setting                    | “Good Samaritan” phrase may imply tort flavor        | 7/10                                                                                                                 |

## B) PASS-2 FIVE BLOCKS

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "20312_loaves_fishes_retreat"
  transformed_from: "20312"
  subject: "REAL_PROPERTY"
  subject_display: "Real Property"
  topic: "Ownership"
  subtopic: "Life estates; remainders; encumbrance payment allocation"
  outline_code: "82010103"
  selection_percentages:
    A:
      value: null
      provenance: "predicted"
      note: "No original focus-group percentage supplied."
    B:
      value: null
      provenance: "predicted"
      note: "No original focus-group percentage supplied."
    C:
      value: null
      provenance: "predicted"
      note: "No original focus-group percentage supplied."
    D:
      value: null
      provenance: "predicted"
      note: "No original focus-group percentage supplied."
  official_key: "C"
  original_key_letter: "B"
  call: "Which statement correctly allocates the payment obligation, as between Martha and Stephen, for the obligation secured by the mortgage?"
  stem: "Martha holds a life estate in a private lakeside parcel called the Loaves-and-Fishes Retreat, where families rent small cabins during nearby Bible-study weekends. Stephen holds the remainder. Before the life estate was created, the parcel was already subject to a recorded mortgage securing a loan on the parcel. The parcel’s reasonable rental value is greater than the total currently needed to cover both principal and interest on that secured obligation."
  choices:
    A: "Martha must pay the principal, and Stephen must pay the interest."
    B: "Stephen must pay both principal and interest."
    C: "Martha must pay the interest, and Stephen must pay the principal."
    D: "Martha must pay both principal and interest."

transform_provenance:
  variant_slug: "loaves_fishes_retreat"
  transformed_from: "20312"
  original_key_letter: "B"
  new_key_letter: "C"
  letter_map:
    - original_letter: "A"
      new_letter: "D"
      mechanic: "extreme_of_range"
      substance: "kept"
      pick_rate:
        value: null
        provenance: "predicted"
    - original_letter: "B"
      new_letter: "C"
      mechanic: "correct_answer"
      substance: "kept"
      pick_rate:
        value: null
        provenance: "predicted"
    - original_letter: "C"
      new_letter: "A"
      mechanic: "backwards"
      substance: "kept"
      pick_rate:
        value: null
        provenance: "predicted"
    - original_letter: "D"
      new_letter: "B"
      mechanic: "extreme_of_range"
      substance: "kept"
      pick_rate:
        value: null
        provenance: "predicted"
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "An abstract life tenant and remainderman must allocate principal and interest on an encumbrance where rental value is sufficient."
    variant_stem_one_sentence: "Martha runs a private lakeside Christian-themed cabin retreat subject to a mortgage, and Stephen’s future ownership interest triggers a principal-versus-interest allocation question."
    dimensions_changed:
      - "asset/subject matter"
      - "specific facts"
      - "fact ordering and rhythm"
      - "cast size and roles"
      - "choice ordering"
      - "choice phrasing"
      - "setting/era/texture"
      - "call wording, within legal equivalence"
    dimensions_skipped_with_reason:
      - dimension: "transaction frame"
        reason: "The secured obligation / encumbrance frame is the tested rule trigger."
      - dimension: "numbers"
        reason: "No original numeric amount was supplied; adding figures would add noise without legal gain."

source_stack:
  - priority: 1
    source: "Pasted BarMatrix row for Q20312."
  - priority: 2
    source: "No existing item-specific C3 tags supplied."
  - priority: 3
    source: "Universal C3 lessons and controlled vocabularies."
  - priority: 4
    source: "Official legal explanation; lawyer confirmation only."
  - priority: 5
    source: "External legal authority: Thompson v. Watkins; N.Y. Real Property Law § 269."

student_access_contract:
  allowed_lessons:
    - "TRUE and RESPONSIVE"
    - "Cut → Clash → Call"
    - "Rules vs standards"
    - "Ear: overclaim"
    - "Ear: falsity"
    - "Matched pair / answer-array read"
    - "Calibration"
  permitted_gold_keys:
    - "GK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01"
  permitted_silver_keys:
    - "SK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01"
  controlling_test_result: "Pure anchor. A student cannot derive the principal/interest allocation from universal C3 alone."

stem_parse:
  subject_fit: "Real Property = estate classification + burden allocation."
  call_type: "rule allocation"
  legal_role: "judge/scholar"
  negative_stem: false
  adjacent_call_traps:
    - "Do not ask who is personally liable to the lender."
    - "Do not allocate by fairness or current possession alone."
  predicted_answer: "Martha pays interest; Stephen pays principal."

trigger_facts:
  - fact: "Martha holds a life estate."
    access_label: "student_visible"
    legal_function: "identifies current-use holder"
  - fact: "Stephen holds the remainder."
    access_label: "student_visible"
    legal_function: "identifies future-equity holder"
  - fact: "The parcel is subject to a recorded mortgage."
    access_label: "student_visible"
    legal_function: "triggers encumbrance payment allocation"
  - fact: "Reasonable rental value exceeds principal and interest."
    access_label: "student_visible"
    legal_function: "removes rental-value cap issue for the interest payment"

c3_routing:
  subject_fit: "Real Property = estate classification + burden allocation."
  governing_law_type: "RULE"
  deciding_phase: "CALL"
  method_class: "pure_anchor"
  confidence: "PURE_ANCHOR"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "C"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: "medium_high"
  tension_axis: "interest/current-use burden vs principal/future-equity burden"
  call_heuristic: "Gold Key anchor allocation"

answer_array:
  architecture: "2x2 allocation grid"
  rows:
    - "life tenant"
    - "remainderman"
  columns:
    - "principal"
    - "interest"
  silver_key: "SK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01"
  correct_cell_combination: "life tenant = interest; remainderman = principal"

choice_walkthroughs:
  A:
    text: "Martha must pay the principal, and Stephen must pay the interest."
    filter_broken: "NOT_TRUE"
    mold_code: "backwards"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "misstated_rule"
      - "wrong_party"
      - "wrong_remedy"
      - "bar_exam_bait"
    method_class: "pure_anchor"
    student_label: "swapped allocation"
    c3_signal: "After the Gold Key, the principal/interest allocation points the wrong way."
    lawyer_confirmation: "The correct allocation is life tenant interest and remainderman principal."
  B:
    text: "Stephen must pay both principal and interest."
    filter_broken: "NOT_TRUE"
    mold_code: "extreme_of_range"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "overbroad_rule"
      - "misstated_rule"
      - "wrong_party"
      - "common_student_myth"
    method_class: "pure_anchor"
    student_label: "future-owner pays too much"
    c3_signal: "After the Gold Key, this over-extends the remainderman’s principal burden to interest."
    lawyer_confirmation: "The remainderman bears principal as the future-equity burden, not interest."
  C:
    text: "Martha must pay the interest, and Stephen must pay the principal."
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "pure_anchor"
    student_label: "anchor match"
    c3_signal: "This matches the Gold Key allocation."
    lawyer_confirmation: "Life tenant pays interest to the extent of rental value; remainderman pays principal."
  D:
    text: "Martha must pay both principal and interest."
    filter_broken: "NOT_TRUE"
    mold_code: "extreme_of_range"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "overbroad_rule"
      - "misstated_rule"
      - "wrong_party"
      - "common_student_myth"
    method_class: "pure_anchor"
    student_label: "current-user pays too much"
    c3_signal: "After the Gold Key, this over-extends the life tenant’s interest burden to principal."
    lawyer_confirmation: "The life tenant bears interest, not principal, unless a creating instrument changes the allocation."

residual_answer:
  credited: "C"
  student_residual: "C"
  reason: "Only C assigns interest to the life tenant and principal to the remainderman."

legal_leak_audit:
  verdict: "clean_with_anchor"
  student_accessible_claims:
    - claim: "The answer array is a 2x2 allocation grid."
      access_basis: "visible answer structure"
    - claim: "No answer can be cut before the principal/interest anchor is supplied."
      access_basis: "controlling test"
    - claim: "C survives after the Gold Key."
      access_basis: "taught Gold Key"
  quarantined_lawyer_claims:
    - "External authority confirming the life tenant / remainderman payment rule."
  drift_audit: "No lawyer-only rule is presented as pure structure."

gold_keys:
  - id: "GK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01"
    statement: "For an existing mortgage or encumbrance on land held in life estate, the life tenant pays interest up to the reasonable rental value; the remainderman pays principal."
    type: "distinction"
    unlocks: "principal-vs-interest allocation traps"
    trigger: "life tenant + remainderman + mortgage/encumbrance + principal and interest"
    tested_choice: "A"
    authority: "Thompson v. Watkins, 285 N.C. 616 (1974); N.Y. Real Property Law § 269."
    last_minute_review: true

silver_keys:
  - id: "SK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01"
    statement: "When every choice assigns principal and interest between two estate holders, read the answers as a 2x2 allocation grid before using the anchor."
    type: "answer_array"
    navigates: "allocation-grid trap"
    trigger: "choices distribute principal and interest between life tenant and remainderman"
    tested_choice: "B"
    outline_code: "82010103"
    last_minute_review: true

remediation:
  card_id: "RP-REM-LIFE-ENCUMBRANCE-01"
  title: "Life tenant pays interest; remainderman pays principal"
  signal: "life tenant + remainderman + mortgage/encumbrance"
  student_move: "Name the two payment components before choosing."
  tiny_rule: "Interest is current-use cost; principal is future-equity cost."
  trap: "Choosing whoever seems more morally responsible for the whole mortgage."
  confidence: "PURE_ANCHOR"

distilled_core_question: "A life tenant is in possession. The property’s rental value can cover principal and interest on a mortgage. Who pays interest, and who pays principal?"
review_truth: "Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal."

case_study_output:
  final_student_script: "Grid first: interest or principal. Gold Key: life tenant pays interest; remainderman pays principal. Pick C."
  residual: "C"
  verdict: "ANCHOR_SOLVE"

quality_control:
  pass_available: true
  pass_reason: "One true-and-responsive residual matches the official key; three distractors each break NOT_TRUE by one mold."
  key_disagreement: false
  recognition_test: "passed"
  gold_key_required: true
  silver_key_required: true
  no_original_letters_outside_provenance: true

analytics_hooks:
  primary_skill: "anchor recall"
  secondary_skill: "answer-array grid reading"
  red_zone:
    - "fairness allocation"
    - "current possessor pays all"
    - "future owner pays all"
  drill_family:
    - "life estate burden allocation"
    - "2x2 allocation grid"
```

### 2. The 17-section student case study

## program_frame

This is a Real Property rule-allocation question. The stem gives two estate holders and two payment components. The answer set is not four policy choices. It is a grid.

## student_access_test

A student cannot solve this from universal C3 alone. The answer choices all look logical. This is an anchor item.

Access result: **pure_anchor**. Use the Gold Key, then cut.

## question_data

**Stem:** Martha has a life estate in a private lakeside retreat parcel. Stephen has the remainder. The parcel is subject to a recorded mortgage. Its reasonable rental value exceeds both principal and interest currently due.

**Call:** Which statement correctly allocates the payment obligation between Martha and Stephen?

**Choices:**
A. Martha principal; Stephen interest.
B. Stephen both.
C. Martha interest; Stephen principal.
D. Martha both.

**Credited answer:** C.

## distilled_core_question

A life tenant is in possession. The property’s rental value can cover principal and interest on a mortgage. Who pays interest, and who pays principal?

## call_and_prediction

The call asks for the rule allocating payment of a secured obligation between a life tenant and a remainderman.

Prediction after anchor: the life tenant pays interest; the remainderman pays principal.

## trigger_facts

| Fact                                      | Why it matters                |
| ----------------------------------------- | ----------------------------- |
| Martha is life tenant                     | Current-use holder            |
| Stephen is remainderman                   | Future-equity holder          |
| Recorded mortgage                         | Encumbrance trigger           |
| Rental value exceeds principal + interest | Interest cap is not the issue |

## governing_c3_lane

**Lane:** rule-driven Real Property anchor.

**Silver Key:** Read the array as a 2×2 grid.
**Gold Key:** Interest = current-use burden. Principal = future-equity burden.

## choice_by_choice_walkthrough

### A

1. **Student-accessible C3 signal:** The answer splits the burdens, but after the Gold Key it points them in reverse.
2. **Student label:** Swapped allocation.
3. **What a true/responsive version would look like:** Martha pays interest; Stephen pays principal.
4. **Lawyer confirmation:** The life tenant’s duty is interest, not principal; the remainderman is associated with principal. *Thompson v. Watkins* confirms the life tenant’s interest duty and lack of principal duty. ([Justia][1])

### B

1. **Student-accessible C3 signal:** This assigns both burdens to the future-interest holder.
2. **Student label:** Future-owner pays too much.
3. **What a true/responsive version would look like:** Stephen pays principal only; Martha pays interest.
4. **Lawyer confirmation:** The remainderman bears the principal side of the encumbrance allocation; interest is the life tenant’s current-use burden. ([Justia][1])

### C

1. **Student-accessible C3 signal:** This matches the Gold Key exactly.
2. **Student label:** Anchor match.
3. **What a true/responsive version would look like:** This is already true and responsive.
4. **Lawyer confirmation:** The official row gives the same allocation, and external authority supports the same life-tenant interest / remainderman principal split.  ([Justia][1])

### D

1. **Student-accessible C3 signal:** This assigns both burdens to the current possessor.
2. **Student label:** Current-user pays too much.
3. **What a true/responsive version would look like:** Martha pays interest only; Stephen pays principal.
4. **Lawyer confirmation:** The life tenant is not obligated to pay principal on the prior encumbrance unless a separate instrument changes the rule. ([Justia][1])

## residual_answer

C remains. It is the only answer that assigns interest to the life tenant and principal to the remainderman.

## legal_leak_audit

Student-accessible without the Gold Key: answer array is a grid.
Not student-accessible without the Gold Key: which side gets principal and which side gets interest.
Allowed student claim after Gold Key: C matches; A reverses; B and D over-assign.

Drift audit: no choice is called false on pure structure alone; all legal falsehoods are marked pure_anchor and confirmed only after the Gold Key.

## final_student_script

Two people, two costs. Grid it. Martha is the life tenant; Stephen is the remainderman. Gold Key: life tenant pays interest, remainderman pays principal. C.

## remediation_card

**Card:** RP-REM-LIFE-ENCUMBRANCE-01
**Signal:** life tenant + remainderman + mortgage/encumbrance + principal/interest.
**Student move:** Do not allocate by fairness. Allocate by type of burden.
**Tiny rule:** Interest is the current-use burden; principal is the future-equity burden.
**Trap:** Current possessor pays all, or future owner pays all.
**Confidence:** PURE_ANCHOR.

## Gold Key(s)

**GK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01**
For an existing mortgage or encumbrance on land held in life estate, the life tenant pays interest up to the reasonable rental value; the remainderman pays principal.
Type: `distinction`.
Trigger: life tenant + remainderman + mortgage/encumbrance + principal and interest.
Authority: *Thompson v. Watkins*; N.Y. Real Property Law § 269. ([Justia][1])

## Silver Key(s)

**SK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01**
When every choice assigns principal and interest between two estate holders, read the answers as a 2×2 allocation grid before using the anchor.
Type: `answer_array`.

## qa_checklist

| Check                                   | Result |
| --------------------------------------- | ------ |
| Rule unchanged                          | yes    |
| Credited outcome unchanged              | yes    |
| Answer array geometry preserved         | yes    |
| Choices shuffled                        | yes    |
| Gold Key required                       | yes    |
| Silver Key required                     | yes    |
| Three distractors each break one filter | yes    |
| Official key agreement                  | yes    |
| Bank validation                         | PASS   |

## wrong_answer_recovery_paths

**A:** Student saw a split and accepted balance. Recovery: ask whether the split is pointed the right way.
**B:** Student focused on future ownership. Recovery: separate principal from interest.
**D:** Student focused on current possession and rental value. Recovery: rental value explains interest, not principal.

## outline_mastery_map

**Outline code:** 82010103.
**Placement:** Real Property → Ownership → Nature and Ownership of Land → Present Possessory Interests in Land → Life estates.
**This item teaches:** burden allocation between life tenant and remainderman on a secured obligation.
**Adjacent mastery:** future interests, waste, mortgages, encumbrance consequences.

## crossover_intersection_map

| Crossover        | Why adjacent                                                            |
| ---------------- | ----------------------------------------------------------------------- |
| Mortgages        | The secured obligation is a mortgage/encumbrance.                       |
| Future interests | The remainderman’s principal burden tracks future equity.               |
| Waste            | Failure to preserve the property can threaten the future interest.      |
| Contracts        | Do not confuse internal allocation with personal liability on the note. |

## review_truth

Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal.

### 3. `c3_annotation`

```json
{
  "question_id": "20312_loaves_fishes_retreat",
  "subject": "REAL_PROPERTY",
  "credited_answer": "C",
  "outline_code": "82010103",
  "distilled_core_question": "A life tenant is in possession. The property’s rental value can cover principal and interest on a mortgage. Who pays interest, and who pays principal?",
  "review_truth": "Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "C",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CALL",
    "confidence": "PURE_ANCHOR",
    "tension_axis": "interest/current-use burden vs principal/future-equity burden",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "Gold Key anchor allocation",
    "difficulty": "medium_high",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_TRUE",
        "mold": "backwards",
        "architecture": null,
        "card_ref": "GK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01",
        "explanation": "The choice reverses the anchor allocation by putting principal on the life tenant and interest on the remainderman."
      },
      {
        "choice": "B",
        "filter_broken": "NOT_TRUE",
        "mold": "extreme_of_range",
        "architecture": null,
        "card_ref": "GK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01",
        "explanation": "The choice over-extends the remainderman's principal burden to interest."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_TRUE",
        "mold": "extreme_of_range",
        "architecture": null,
        "card_ref": "GK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01",
        "explanation": "The choice over-extends the life tenant's interest burden to principal."
      }
    ],
    "analyzer_notes": {
      "drift_audit": "All legal allocation claims are anchor-dependent; no lawyer-only rule is mislabeled as hard structure.",
      "transformed_from": "20312",
      "letter_map": "A→D; B→C; C→A; D→B",
      "pick_rate_note": "No original focus-group percentages supplied; all pick-rate fields are predicted/null, not measured.",
      "bank_validation": "PASS because C is true and responsive and A/B/D each break exactly one NOT_TRUE filter."
    },
    "gold_keys": [
      {
        "id": "GK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01",
        "statement": "For an existing mortgage or encumbrance on land held in life estate, the life tenant pays interest up to the reasonable rental value; the remainderman pays principal.",
        "type": "distinction",
        "unlocks": "principal-vs-interest allocation traps",
        "trigger": "life tenant + remainderman + mortgage/encumbrance + principal and interest",
        "tested_choice": "A",
        "authority": "Thompson v. Watkins, 285 N.C. 616 (1974); N.Y. Real Property Law § 269.",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01",
        "statement": "When every choice assigns principal and interest between two estate holders, read the answers as a 2x2 allocation grid before using the anchor.",
        "type": "answer_array",
        "navigates": "allocation-grid trap",
        "trigger": "choices distribute principal and interest between life tenant and remainderman",
        "tested_choice": "B",
        "outline_code": "82010103",
        "last_minute_review": true
      }
    ]
  }
}
```

### 4. `program_elements`

```json
{
  "question_id": "20312_loaves_fishes_retreat",
  "subject": "REAL_PROPERTY",
  "outline_code": "82010103",
  "distilled_core_question": "A life tenant is in possession. The property’s rental value can cover principal and interest on a mortgage. Who pays interest, and who pays principal?",
  "review_truth": "Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal.",
  "tension": {
    "axis": "current-use cost vs future-equity cost",
    "resolver": "Gold Key allocation"
  },
  "traps": [
    {
      "choice": "A",
      "mold": "backwards",
      "architecture": null,
      "why_attractive": "The student sees a clean split and likes that each party pays one component. The breaker is that the split is reversed under the Gold Key.",
      "focus_group_pct": null,
      "pct_provenance": "predicted"
    },
    {
      "choice": "B",
      "mold": "extreme_of_range",
      "architecture": null,
      "why_attractive": "The student focuses on Stephen ultimately owning the parcel and gives him the whole mortgage burden. The breaker is that future ownership maps to principal, not interest.",
      "focus_group_pct": null,
      "pct_provenance": "predicted"
    },
    {
      "choice": "D",
      "mold": "extreme_of_range",
      "architecture": null,
      "why_attractive": "The student focuses on Martha’s possession and the parcel’s rental value, then makes her pay everything. The breaker is that current possession maps to interest, not principal.",
      "focus_group_pct": null,
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "RP-REM-LIFE-ENCUMBRANCE-01",
    "title": "Life tenant pays interest; remainderman pays principal",
    "signal": "life tenant + remainderman + mortgage/encumbrance",
    "student_move": "Name the two payment components before choosing.",
    "tiny_rule": "Interest is current-use cost; principal is future-equity cost.",
    "trap": "Choosing whoever seems more morally responsible for the whole mortgage.",
    "confidence": "PURE_ANCHOR"
  },
  "red_zone_dimensions": [
    "fairness allocation",
    "current possessor pays all",
    "future owner pays all",
    "principal/interest reversal",
    "confusing internal allocation with lender liability"
  ]
}
```

### 5. `program_intelligence`

```json
{
  "question_id": "20312_loaves_fishes_retreat",
  "subject": "REAL_PROPERTY",
  "outline_code": "82010103",
  "distilled_core_question": "A life tenant is in possession. The property’s rental value can cover principal and interest on a mortgage. Who pays interest, and who pays principal?",
  "review_truth": "Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal.",
  "wrong_answer_paths": [
    {
      "choice": "A",
      "filter_broken": "NOT_TRUE",
      "mold": "backwards",
      "why_a_student_picks_this": "The split feels balanced and avoids making either party pay everything.",
      "skipped_move": "Student did not check direction of the principal/interest allocation.",
      "recovery_step": "Apply Gold Key: life tenant interest; remainderman principal."
    },
    {
      "choice": "B",
      "filter_broken": "NOT_TRUE",
      "mold": "extreme_of_range",
      "why_a_student_picks_this": "The student thinks the future owner should preserve the whole property value.",
      "skipped_move": "Student did not separate principal from interest.",
      "recovery_step": "Assign only principal to the future-equity holder."
    },
    {
      "choice": "D",
      "filter_broken": "NOT_TRUE",
      "mold": "extreme_of_range",
      "why_a_student_picks_this": "The student thinks the person in possession with enough rental value should pay the entire mortgage.",
      "skipped_move": "Student overused the rental-value fact.",
      "recovery_step": "Use rental value only for the life tenant’s interest burden."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "anchor_recall",
      "target_skill": "life estate encumbrance allocation",
      "prompt": "Life tenant in possession; remainderman waiting; mortgage has principal and interest due. Allocate the burdens.",
      "answer": "Life tenant pays interest up to rental value; remainderman pays principal."
    },
    {
      "drill_type": "answer_array",
      "target_skill": "2x2 allocation grid",
      "prompt": "Four choices assign two costs to two estate holders. What is the first move?",
      "answer": "Read it as a grid: identify each cost and each holder before applying the anchor."
    },
    {
      "drill_type": "wrong_answer_recovery",
      "target_skill": "avoid over-assigning burdens",
      "prompt": "Why is 'life tenant pays both principal and interest' tempting and why does it fail?",
      "answer": "Tempting because the life tenant is in possession; fails because possession maps to interest, not principal."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "2x2_allocation_grid",
      "pure_anchor",
      "principal_interest_split",
      "life_estate_burden"
    ],
    "misconception_tags": [
      "current_possessor_pays_all",
      "future_owner_pays_all",
      "balanced_split_without_direction",
      "rental_value_overread"
    ]
  },
  "component_routing": [
    "Gold Key deck: Real Property life estate encumbrance allocation",
    "Silver Key deck: answer-array grid reading",
    "Calibration: pure anchor, not hard structure"
  ],
  "crossovers": [
    {
      "subject": "REAL_PROPERTY",
      "connection": "Life estates and future interests"
    },
    {
      "subject": "REAL_PROPERTY",
      "connection": "Mortgages and encumbrances"
    },
    {
      "subject": "CONTRACTS",
      "connection": "Do not confuse internal allocation with personal liability on the note."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01",
      "statement": "For an existing mortgage or encumbrance on land held in life estate, the life tenant pays interest up to the reasonable rental value; the remainderman pays principal.",
      "type": "distinction",
      "unlocks": "principal-vs-interest allocation traps",
      "trigger": "life tenant + remainderman + mortgage/encumbrance + principal and interest",
      "tested_choice": "A",
      "authority": "Thompson v. Watkins, 285 N.C. 616 (1974); N.Y. Real Property Law § 269.",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-REAL_PROPERTY-LIFE-ENCUMBRANCE-01",
      "statement": "When every choice assigns principal and interest between two estate holders, read the answers as a 2x2 allocation grid before using the anchor.",
      "type": "answer_array",
      "navigates": "allocation-grid trap",
      "trigger": "choices distribute principal and interest between life tenant and remainderman",
      "tested_choice": "B",
      "outline_code": "82010103",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "Real Property > Ownership > Nature and Ownership of Land > Present Possessory Interests in Land > Life estates",
    "this_item_teaches": "How to allocate principal and interest on a mortgage between a life tenant and a remainderman.",
    "fills": [
      "Life tenant obligations",
      "Remainderman obligations",
      "Encumbrance burden allocation",
      "Principal versus interest distinction"
    ],
    "adjacent_to_master": [
      "Future interests",
      "Waste",
      "Mortgages",
      "Rights and duties of possessory estate holders"
    ]
  }
}
```

[1]: https://law.justia.com/cases/north-carolina/supreme-court/1974/80-1-7.html?utm_source=chatgpt.com "Thompson v. Watkins :: 1974 :: North Carolina Supreme Court Decisions :: North Carolina Case Law :: North Carolina Law :: U.S. Law :: Justia"

### 3. c3_annotation

```json
{
  "question_id": "20312_loaves_fishes_retreat",
  "subject": "REAL_PROPERTY",
  "credited_answer": "C",
  "outline_code": "82010103",
  "distilled_core_question": "A life tenant is in possession. The property’s rental value can cover principal and interest on a mortgage. Who pays interest, and who pays principal?",
  "review_truth": "Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "C",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "PURE_ANCHOR",
    "tension_axis": null,
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "repair_normalized",
    "difficulty": "UNKNOWN",
    "distractors": [],
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 20312; letter_map: - original_letter: \"A",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "20312_loaves_fishes_retreat",
  "subject": "REAL_PROPERTY",
  "outline_code": "82010103",
  "distilled_core_question": "A life tenant is in possession. The property’s rental value can cover principal and interest on a mortgage. Who pays interest, and who pays principal?",
  "review_truth": "Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-20312",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal.",
    "trap": "See preserved traps when present.",
    "confidence": "PURE_ANCHOR"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "20312_loaves_fishes_retreat",
  "subject": "REAL_PROPERTY",
  "outline_code": "82010103",
  "distilled_core_question": "A life tenant is in possession. The property’s rental value can cover principal and interest on a mortgage. Who pays interest, and who pays principal?",
  "review_truth": "Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal.",
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
    "placement": "82010103",
    "this_item_teaches": "Current-use burden goes to the life tenant: interest. Future-equity burden goes to the remainderman: principal.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
