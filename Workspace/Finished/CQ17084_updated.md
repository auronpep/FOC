---
qid: "17084_five_loaves_bank_records"
transformed_from: "17084"
subject: "CRIMINAL"
topic: "Fourth Amendment"
subtopic: "Constitutional Protection of Accused Persons"
outline_code: "75070200"
key: "B"
original_key: "C"
letter_map: "- original_letter: \"A"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them."
---
# A) PASS-1 TRANSFORM REPORT

Source row used: BARMATRIX Q#17084, Criminal Procedure / Fourth Amendment, with correct answer C under the bank-records third-party doctrine. 

## 1. Final question — revised stem + call

Esther runs a private business called **Five Loaves Puzzle Nights**, selling Christian-themed escape-room tickets and devotion journals. Federal agents suspected Esther of wire fraud after several customers complained that their “Holy Land mystery weekend” tickets were never honored.

Without obtaining a warrant or subpoena, agents contacted Esther’s bank and requested copies of her business checking-account statements, deposit slips, and canceled checks for the past 14 months. The bank complied. The records showed deposits matching the customer payments under investigation. Esther moves to suppress the bank records, arguing that the government violated her Fourth Amendment rights.

**Call:** Should the court grant the motion to suppress?

## 2. Distilled Core Question

Agents got a suspect’s bank records from the bank without a warrant or subpoena. The suspect moves to suppress under the Fourth Amendment. Should suppression be granted?

## 3. Final answer choices — post-shuffle

**A.** Yes, because the agents needed a subpoena before obtaining the records from the bank.
**B.** No, because Esther voluntarily conveyed the account information to the bank, so the Fourth Amendment does not protect the bank’s own records under the third-party doctrine.
**C.** No, because bank records are categorically removed from Fourth Amendment coverage by statute.
**D.** Yes, because Esther had a reasonable expectation that her business-bank records would remain private.

## 4. Correct answer

**B**. Original key: **C**.

## 5. Letter Map

| Original letter | New letter | Mechanic                                       | Substance | Pick % | Provenance |
| --------------- | ---------: | ---------------------------------------------- | --------- | -----: | ---------- |
| A               |          D | privacy-expectation trap / `flat_misstatement` | kept      |     31 | predicted  |
| B               |          A | subpoena-required trap / `fabricated_rule`     | kept      |     24 | predicted  |
| C               |          B | `correct_answer`                               | kept      |     38 | predicted  |
| D               |          C | statutory-source trap / `flat_misstatement`    | kept      |      7 | predicted  |

## 6. Full right-answer explanation

**B is correct.** Esther’s motion should be denied because the records were the bank’s business records and reflected information Esther voluntarily conveyed to the bank in ordinary banking transactions.

**Gold Key:** Bank-record third-party doctrine. When a person voluntarily conveys financial information to a bank, the person assumes the risk that the bank will disclose that information to the government. No Fourth Amendment warrant requirement attaches to those bank records.

**Silver Key:** On a suppression call, start with the threshold question: does this defendant have a Fourth Amendment interest in the records? If the answer is no, subpoena and warrant language is bait.

## 7. Full wrong-answer explanations

**A.** This choice sells a formal-process instinct: agents got records without a subpoena, so the search feels procedurally defective. The breaker is the Gold Key: no Fourth Amendment interest in the bank’s own records means the missing subpoena does not make this a Fourth Amendment suppression win.

**C.** This choice sells the correct result with the wrong source. The breaker is that the rule is not “bank records are excluded by statute”; the operative ground is the constitutional third-party doctrine.

**D.** This choice sells the strongest privacy intuition. The breaker is the Gold Key: under the bank-record version of the third-party doctrine, the privacy expectation is not one the Fourth Amendment recognizes once the information has been voluntarily conveyed to the bank.

## 8. Full black-letter-law verification and legal reasoning

The tested rule is unchanged from the original: under **United States v. Miller**, bank records such as checks, deposit slips, statements, and similar records are treated as the bank’s business records, not the depositor’s private papers. The depositor has no legitimate Fourth Amendment expectation of privacy in information voluntarily conveyed to the bank in ordinary commercial banking activity. **Smith v. Maryland** states the broader third-party-doctrine principle: a person assumes the risk that information voluntarily conveyed to a third party will be revealed to the government. ([Justia Law][1])

The credited outcome is unchanged. The motion to suppress is denied because Esther has no Fourth Amendment interest in the bank records. **Carpenter** narrowed the third-party doctrine for historical cell-site location information, but it expressly discussed Miller’s bank-record rule as the traditional bank-record example; this item remains a Miller bank-record item, not a Carpenter location-tracking item. ([Justia Law][2])

## 9. Why the variation preserves rigor/difficulty

The Christian surface changed: private puzzle-night business, ticket complaints, devotion-journal business texture, and a new fraud frame. The legal engine did not change. The array still tests bank records, third-party disclosure, suppression, subpoena bait, privacy-expectation bait, and wrong-source statutory bait.

## 10. C3 elimination walkthrough — CUT → CLASH → CALL

**CUT A:** `fabricated_rule`. It says subpoena first. The Gold Key says the Fourth Amendment suppression question fails before subpoena process matters.
**CUT C:** `flat_misstatement`. It reaches the right “no suppression” result through a nonexistent statutory exclusion frame.
**CUT D:** `flat_misstatement`. It asserts a recognized Fourth Amendment privacy expectation where the Gold Key says the expectation is not recognized for bank records.
**Residual:** B.
**CLASH:** Not needed.
**CALL:** Not needed. The item is anchor-solved at CUT.

## 11. Divergence Audit

| Recognition-Kill dimension | Result                                                                                                                          |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| Asset / subject matter     | Changed from personal tax-fraud banking trail to private Christian escape-room tickets and devotion-journal business records.   |
| Transaction frame          | Changed from reported-income mismatch to customer-payment wire-fraud investigation.                                             |
| Specific facts             | Changed from large cash deposits inconsistent with reported income to deposits matching unhonored ticket payments.              |
| Numbers                    | Changed from two years to 14 months. No legal threshold moved.                                                                  |
| Fact ordering / rhythm     | New stem opens with Esther’s business and customer complaints before the government-records request.                            |
| Cast size / roles          | Added customers as non-load-bearing background; Esther remains the movant.                                                      |
| Choice ordering            | Shuffled. Correct answer moved to B.                                                                                            |
| Choice phrasing            | Paraphrased while preserving legal substance.                                                                                   |
| Setting / era / texture    | Changed to a private Christian-themed entertainment/business setting.                                                           |
| Call wording               | Kept functionally identical: suppression motion. Skipped broader rewording because suppression posture is legally load-bearing. |

**Original one-sentence summary:** Agents investigating tax fraud obtained a defendant’s bank records without a warrant or subpoena, and the defendant moved to suppress.
**Variant one-sentence summary:** Agents investigating a private Christian puzzle-night ticket scheme obtained Esther’s business-bank records from her bank, and Esther moved to suppress.
**Recognition test:** Passed. The shared content is the rule only: bank records obtained from a bank and a Fourth Amendment suppression call.

## 12. Review Truth

Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.

## 13. The 5 variations considered

|  # | Title                             | Setting / cast                                        | Preserved issue                                                                     | Why memorable                               | Legal risks                                                                    | Divergence score                                                                     |
| -: | --------------------------------- | ----------------------------------------------------- | ----------------------------------------------------------------------------------- | ------------------------------------------- | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
|  1 | Five Loaves Puzzle Nights         | Esther runs a private Christian escape-room business. | Bank records obtained without warrant/subpoena; suppression under Fourth Amendment. | Fun, visual, and far from tax-bank framing. | Must keep it private business, not church activity.                            | 9/10: kills asset, transaction, fact rhythm, numbers, cast texture. **Recommended.** |
|  2 | Lydia’s Hymnbook Pop-Up           | Lydia sells hymnbook covers at festivals.             | Same.                                                                               | Strong Christian texture.                   | Could feel like ordinary retail tax receipts, closer to original income facts. | 7/10.                                                                                |
|  3 | Peter’s Pilgrim Map Shop          | Peter sells devotional travel maps.                   | Same.                                                                               | Distinct product and travel texture.        | Travel-map facts could invite location-data confusion if not controlled.       | 7/10.                                                                                |
|  4 | Ruth’s Olivewood Nativity Imports | Ruth imports olivewood nativity sets.                 | Same.                                                                               | Strong asset divergence.                    | Import facts could invite customs/search-border issues.                        | 6/10.                                                                                |
|  5 | Barnabas’s Scripture-Memory App   | Barnabas runs a paid app.                             | Same.                                                                               | Modern Christian texture.                   | Digital records could trigger Carpenter/data-platform issues.                  | 5/10.                                                                                |

**Why the recommended version won:** It maximizes surface divergence while preserving a clean Miller bank-records issue and avoiding church, donation, First Amendment, RFPA, or digital-location clutter.

---

# B) PASS-2 FIVE BLOCKS

## 1. Question YAML

```yaml
barmatrix_row:
  qid: "17084_five_loaves_bank_records"
  internal_id: "CR-130"
  subject: "CRIMINAL"
  subject_display: "Criminal Procedure"
  topic: "Fourth Amendment"
  subtopic: "Constitutional Protection of Accused Persons"
  outline_code: "75070200"
  selection_percentages:
    A:
      value: 24
      provenance: "predicted"
    B:
      value: 38
      provenance: "predicted"
    C:
      value: 7
      provenance: "predicted"
    D:
      value: 31
      provenance: "predicted"
  official_key: "B"
  call: "Should the court grant the motion to suppress?"
  stem: "Esther runs a private business called Five Loaves Puzzle Nights, selling Christian-themed escape-room tickets and devotion journals. Federal agents suspected Esther of wire fraud after several customers complained that their Holy Land mystery weekend tickets were never honored. Without obtaining a warrant or subpoena, agents contacted Esther's bank and requested copies of her business checking-account statements, deposit slips, and canceled checks for the past 14 months. The bank complied. The records showed deposits matching the customer payments under investigation. Esther moves to suppress the bank records, arguing that the government violated her Fourth Amendment rights."
  choices:
    A: "Yes, because the agents needed a subpoena before obtaining the records from the bank."
    B: "No, because Esther voluntarily conveyed the account information to the bank, so the Fourth Amendment does not protect the bank's own records under the third-party doctrine."
    C: "No, because bank records are categorically removed from Fourth Amendment coverage by statute."
    D: "Yes, because Esther had a reasonable expectation that her business-bank records would remain private."

transform_provenance:
  transformed_from: "17084"
  variant_slug: "five_loaves_bank_records"
  original_key_letter: "C"
  new_key_letter: "B"
  letter_map:
    - original_letter: "A"
      new_letter: "D"
      mechanic: "privacy-expectation trap / flat_misstatement"
      substance: "kept"
      pick_rate:
        value: 31
        provenance: "predicted"
    - original_letter: "B"
      new_letter: "A"
      mechanic: "subpoena-required trap / fabricated_rule"
      substance: "kept"
      pick_rate:
        value: 24
        provenance: "predicted"
    - original_letter: "C"
      new_letter: "B"
      mechanic: "correct_answer"
      substance: "kept"
      pick_rate:
        value: 38
        provenance: "predicted"
    - original_letter: "D"
      new_letter: "C"
      mechanic: "statutory-source trap / flat_misstatement"
      substance: "kept"
      pick_rate:
        value: 7
        provenance: "predicted"
  swap:
    performed: false
    replaced_original_letter: null
    reason: null
  divergence_summary:
    original_stem_one_sentence: "Agents investigating tax fraud obtained a defendant's bank records without a warrant or subpoena, and the defendant moved to suppress."
    variant_stem_one_sentence: "Agents investigating a private Christian puzzle-night ticket scheme obtained Esther's business-bank records from her bank, and Esther moved to suppress."
    dimensions_changed:
      - "asset/subject matter"
      - "transaction frame"
      - "specific facts"
      - "numbers"
      - "fact ordering and rhythm"
      - "cast/roles"
      - "choice ordering"
      - "choice phrasing"
      - "setting/texture"
    dimensions_skipped_with_reason:
      - dimension: "call function"
        reason: "Suppression posture is legally load-bearing and must remain unchanged."

source_stack:
  - priority: 1
    source: "BarMatrix row for QID 17084"
    use: "Stem, call, choices, official key, explanations, rule reference."
  - priority: 2
    source: "Existing C3 tags"
    use: "No item-specific tags supplied; no hypothesis adopted."
  - priority: 3
    source: "C3 method and controlled vocabularies"
    use: "CUT/CLASH/CALL, controlled filters, molds, method classes, verdicts."
  - priority: 4
    source: "Official legal explanation"
    use: "Lawyer confirmation only."
  - priority: 5
    source: "Primary authority"
    use: "United States v. Miller; Smith v. Maryland; Carpenter boundary check."

student_access_contract:
  allowed_components:
    - "TRUE and RESPONSIVE"
    - "CUT -> CLASH -> CALL"
    - "Ear: fabricated_rule"
    - "Ear: flat_misstatement"
    - "Bait Architecture: violation_vs_remedy"
    - "Gold Key: bank-record third-party doctrine"
    - "Silver Key: suppression threshold first"
  anchor_status: "pure_anchor"
  controlling_test_result: "A student can solve only after the bank-record third-party Gold Key is supplied."
  legal_leak_boundary: "Do not infer the third-party doctrine from structure alone."

stem_parse:
  legal_task: "Decide suppression motion."
  moving_party: "Esther"
  government_action: "Agents requested bank records from Esther's bank without warrant or subpoena."
  record_holder: "Bank"
  record_type: "Business checking statements, deposit slips, canceled checks."
  asserted_right: "Fourth Amendment"
  negative_stem_inversion: false
  adjacent_call_traps:
    - "Was statutory or subpoena process required?"
    - "Did Esther subjectively expect privacy?"
    - "Is there a statutory exclusion from Fourth Amendment coverage?"

trigger_facts:
  - fact: "The records were held by the bank."
    access_label: "stem_visible"
    c3_role: "Gold Key trigger"
  - fact: "The records reflected account information Esther conveyed to the bank."
    access_label: "stem_visible"
    c3_role: "Gold Key trigger"
  - fact: "The motion is a Fourth Amendment suppression motion."
    access_label: "stem_visible"
    c3_role: "call lock"
  - fact: "No warrant or subpoena was obtained."
    access_label: "stem_visible"
    c3_role: "bait fact for A"

c3_routing:
  subject_fit: "Criminal Procedure = constitutional protection threshold + remedy posture."
  governing_law_type: "RULE"
  deciding_phase: "CUT"
  method_class: "pure_anchor"
  confidence: "PURE_ANCHOR"
  case_study_verdict: "ANCHOR_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "B"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: "medium-hard anchor"
  tension_axis: "Fourth Amendment protected interest in bank records vs no protected interest under third-party doctrine"
  call_heuristic: "threshold before remedy"

answer_array:
  geometry: "2x2"
  rows:
    - "Grant suppression: A and D"
    - "Deny suppression: B and C"
  columns:
    - "Process/privacy rationale"
    - "Source-of-rule rationale"
  silver_key_signal: "Do not pick the formal process answer until the Fourth Amendment interest exists."
  residual_answer: "B"

choice_walkthroughs:
  A:
    filter_broken: "NOT_TRUE"
    mold_code: "fabricated_rule"
    mold_family: "EAR_OVERCLAIM"
    bait_architecture_code: "violation_vs_remedy"
    wrong_answer_architecture_tags:
      - "sounds_lawyerly"
      - "wrong_procedural_posture"
      - "answer_to_different_question"
      - "bar_exam_bait"
    method_class: "pure_anchor"
    student_label: "Subpoena-process bait"
    c3_signal: "The choice makes subpoena process the reason for suppression before establishing a Fourth Amendment interest."
    lawyer_confirmation: "Under Miller, the defendant lacks a Fourth Amendment interest in bank records held by the bank; statutory process questions do not create a Fourth Amendment suppression remedy on these facts."
  B:
    filter_broken: null
    mold_code: null
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "correct_answer"
    method_class: "pure_anchor"
    student_label: "Gold Key residual"
    c3_signal: "It matches the bank-record third-party Gold Key and answers the suppression call."
    lawyer_confirmation: "Miller and Smith support denial of suppression because the records were bank business records containing information voluntarily conveyed to the bank."
  C:
    filter_broken: "NOT_TRUE"
    mold_code: "flat_misstatement"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags:
      - "misstated_rule"
      - "sounds_lawyerly"
      - "wrong_standard"
      - "bar_exam_bait"
    method_class: "pure_anchor"
    student_label: "Right result, wrong source"
    c3_signal: "The answer denies suppression but points to a statutory exclusion that is not the Gold Key."
    lawyer_confirmation: "The governing source is the constitutional third-party doctrine, not a statute categorically excluding financial records from Fourth Amendment coverage."
  D:
    filter_broken: "NOT_TRUE"
    mold_code: "flat_misstatement"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: null
    wrong_answer_architecture_tags:
      - "attractive_wrong_answer"
      - "common_student_myth"
      - "misstated_rule"
      - "bar_exam_bait"
    method_class: "pure_anchor"
    student_label: "Privacy-intuition trap"
    c3_signal: "The Gold Key reverses the intuitive privacy claim for bank records held by a bank."
    lawyer_confirmation: "Miller rejects a legitimate Fourth Amendment expectation of privacy in bank records voluntarily conveyed to the bank in ordinary banking activity."

residual_answer:
  choice: "B"
  reason: "Only B states the bank-record third-party doctrine and directly answers the suppression call."
  break_count: 3
  all_distractors_single_filter: true

legal_leak_audit:
  student_accessible_without_anchor:
    A: false
    B: false
    C: false
    D: false
  anchor_required: true
  anchor_supplied: true
  drift_risk: "High if Miller doctrine is described as a structural inference."
  quarantine_rule: "All doctrine remains in Gold Key and lawyer_confirmation."
  drift_audit: "No choice is called false without the Gold Key or lawyer-confirmation basis."

gold_keys:
  - id: "GK-CRIMINAL-BANK-THIRD-PARTY-01"
    statement: "Bank account records are the bank's business records. A customer generally has no Fourth Amendment privacy interest in information voluntarily conveyed to the bank in ordinary transactions."
    type: "constitutional_principle"
    unlocks: "Privacy-expectation, subpoena-required, and statutory-source traps."
    trigger: "Government obtains checks, deposit slips, account statements, or bank records from the bank."
    tested_choice: "D"
    authority: "United States v. Miller, 425 U.S. 435 (1976); Smith v. Maryland, 442 U.S. 735 (1979)."
    last_minute_review: true

silver_keys:
  - id: "SK-CRIMINAL-SUPPRESSION-THRESHOLD-01"
    statement: "On a suppression call, first ask whether this defendant has a Fourth Amendment interest in the record. If no protected interest exists, warrant and subpoena phrasing is bait."
    type: "call_focus"
    navigates: "Subpoena-process trap before protected-interest threshold."
    trigger: "The call asks whether to suppress records obtained from someone else."
    tested_choice: "A"
    outline_code: "75070200"
    last_minute_review: true

remediation:
  card_id: "CRIM-REM-BANK-THIRD-PARTY-01"
  title: "Bank records: interest first, process second"
  signal: "Agents obtain account records from a bank."
  student_move: "Ask whether the defendant has a Fourth Amendment interest before arguing warrant, subpoena, or suppression."
  tiny_rule: "Miller bank records are bank business records; no Fourth Amendment suppression right belongs to the depositor."
  trap: "Treating personal finance privacy as Fourth Amendment privacy."
  confidence: "PURE_ANCHOR"

distilled_core_question: "Agents got a suspect's bank records from the bank without a warrant or subpoena. The suspect moves to suppress under the Fourth Amendment. Should suppression be granted?"
review_truth: "Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them."

case_study_output:
  final_student_script: "Suppression call. Bank held the records. Gold Key: Miller bank records are third-party bank business records. Cut subpoena-required, statutory-exclusion, and privacy-expectation traps. Pick B."
  verdict_line: "ANCHOR_SOLVE by Gold Key at CUT."

quality_control:
  invariant_rule_preserved: true
  credited_outcome_unmoved: true
  dominant_trap_preserved: true
  no_clutter_issue_added: true
  christian_skin_compliant: true
  recognition_test_passed: true
  key_consistency: "B across all blocks"
  pass_available: true

analytics_hooks:
  tested_anchor: "bank-record third-party doctrine"
  expected_miss_cluster:
    - "privacy intuition"
    - "subpoena process"
    - "right result wrong source"
  recommended_drills:
    - "Fourth Amendment protected-interest threshold"
    - "third-party doctrine business-records drill"
    - "suppression call: violation vs remedy"
```

## 2. Student case study — 17 sections

## program_frame

This is an anchor-solve Fourth Amendment suppression item. The student cannot derive the rule from answer shape alone. The Gold Key supplies the deciding rule.

## student_access_test

Could a smart 10-year-old with only C3 and the Gold Key solve it?

**Yes, with the Gold Key.** Without it, the privacy and subpoena answers are not student-accessibly false.

## question_data

**Subject:** Criminal Procedure
**Topic:** Fourth Amendment
**Call:** Should the court grant the motion to suppress?
**Credited answer:** B
**Posture:** Suppression motion.

## distilled_core_question

Agents got a suspect’s bank records from the bank without a warrant or subpoena. The suspect moves to suppress under the Fourth Amendment. Should suppression be granted?

## call_and_prediction

The call is not “did agents follow ideal process?” It is “does this defendant get Fourth Amendment suppression?”

Prediction after Gold Key: deny suppression. Bank records held by the bank are not protected Fourth Amendment records of the depositor.

## trigger_facts

| Fact                                          | Why it matters                                        |
| --------------------------------------------- | ----------------------------------------------------- |
| The records were bank records.                | Triggers Miller bank-record Gold Key.                 |
| The bank held and produced them.              | Third-party record holder.                            |
| Esther used the account in ordinary business. | Voluntary conveyance to the bank.                     |
| The remedy sought is suppression.             | Threshold: protected Fourth Amendment interest first. |

## governing_c3_lane

**Lane:** Pure anchor at CUT.
**Subject FIT:** Criminal Procedure = constitutional threshold + remedy posture.
**Gold Key:** bank-record third-party doctrine.
**Silver Key:** interest first, process second.

## choice_by_choice_walkthrough

### A

1. **Student-accessible C3 signal:** It makes the missing subpoena the decisive reason before proving a Fourth Amendment interest.
2. **Student label:** Subpoena-process bait.
3. **True/responsive version:** “Yes, if the defendant had a Fourth Amendment interest and the method of acquisition violated a suppression-triggering rule.”
4. **Lawyer confirmation:** Miller blocks the Fourth Amendment claim because the records belong to the bank for Fourth Amendment purposes.

### B

1. **Student-accessible C3 signal:** It matches the Gold Key and answers the suppression call.
2. **Student label:** Gold Key residual.
3. **True/responsive version:** This is already true and responsive.
4. **Lawyer confirmation:** Miller and Smith support denial of suppression because the information was voluntarily conveyed to the bank.

### C

1. **Student-accessible C3 signal:** It reaches “no suppression” but gives the wrong source.
2. **Student label:** Right result, wrong source.
3. **True/responsive version:** “No, because the bank-record third-party doctrine leaves Esther without a Fourth Amendment interest.”
4. **Lawyer confirmation:** The governing basis is constitutional third-party doctrine, not a statute categorically removing bank records from Fourth Amendment coverage.

### D

1. **Student-accessible C3 signal:** It follows privacy intuition, but the Gold Key removes that intuition for bank records.
2. **Student label:** Privacy-intuition trap.
3. **True/responsive version:** “Yes, if the records were Esther’s protected papers or effects rather than bank business records.”
4. **Lawyer confirmation:** Miller rejects a legitimate expectation of privacy in bank records voluntarily conveyed to a bank.

## residual_answer

B survives. It is the only answer that both denies suppression and uses the correct Fourth Amendment reason.

## legal_leak_audit

A, C, and D are not hard-structural falsehoods without the Gold Key. The student explanation must not pretend the third-party doctrine is visible from grammar alone.

Drift audit: All falsehood claims depend on the supplied Gold Key or lawyer-confirmation layer; no lawyer-only doctrine is disguised as pure structure.

## final_student_script

“Suppression call. First ask whether Esther has a Fourth Amendment interest in the bank records. Gold Key: bank records voluntarily conveyed to a bank are third-party business records. That kills subpoena-required, statute-source, and privacy-expectation traps. The residual is B.”

## remediation_card

**Card:** CRIM-REM-BANK-THIRD-PARTY-01
**Signal:** Account statements, deposit slips, canceled checks, bank records.
**Move:** Interest first. Process second.
**Tiny rule:** Bank records held by the bank are not protected Fourth Amendment records of the depositor.
**Trap:** Personal financial privacy feels like Fourth Amendment privacy.

## Gold Key(s)

**GK-CRIMINAL-BANK-THIRD-PARTY-01**
Bank account records are the bank’s business records. A customer generally has no Fourth Amendment privacy interest in information voluntarily conveyed to the bank in ordinary transactions.

## Silver Key(s)

**SK-CRIMINAL-SUPPRESSION-THRESHOLD-01**
On a suppression call, first ask whether this defendant has a Fourth Amendment interest in the record. If no protected interest exists, warrant and subpoena phrasing is bait.

## qa_checklist

| Check                                   | Result |
| --------------------------------------- | ------ |
| Correct answer breaks no filter         | Pass   |
| Three distractors each break one filter | Pass   |
| Key agrees with official                | Pass   |
| Anchor required and supplied            | Pass   |
| No recognition drift                    | Pass   |
| No Christian clutter issue              | Pass   |

## wrong_answer_recovery_paths

| Choice | Miss path                                                   | Recovery                                |
| ------ | ----------------------------------------------------------- | --------------------------------------- |
| A      | Student sees “no subpoena” and stops.                       | Ask protected-interest threshold first. |
| C      | Student likes the no-suppression result and ignores source. | Demand the correct source of the rule.  |
| D      | Student trusts privacy intuition.                           | Recall Miller bank-record Gold Key.     |

## outline_mastery_map

**Placement:** 75070200 — Fourth Amendment > Searches and Seizures.
**This item teaches:** protected-interest threshold for third-party bank records.
**Adjacent mastery:** Smith pen registers, Carpenter CSLI boundary, subpoena vs warrant vs suppression.

## crossover_intersection_map

| Crossover                       | Why it matters                                                               |
| ------------------------------- | ---------------------------------------------------------------------------- |
| Evidence / suppression          | No protected Fourth Amendment interest means no suppression.                 |
| Civil process / subpoena        | A subpoena issue is not automatically a Fourth Amendment suppression issue.  |
| Privacy law / financial records | Statutory privacy frameworks do not define the Fourth Amendment answer here. |

## review_truth

Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.

## 3. `c3_annotation`

```json
{
  "question_id": "17084_five_loaves_bank_records",
  "subject": "CRIMINAL",
  "credited_answer": "B",
  "outline_code": "75070200",
  "distilled_core_question": "Agents got a suspect's bank records from the bank without a warrant or subpoena. The suspect moves to suppress under the Fourth Amendment. Should suppression be granted?",
  "review_truth": "Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "B",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "PURE_ANCHOR",
    "tension_axis": "Fourth Amendment protected interest in bank records vs no protected interest under third-party doctrine",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "threshold before remedy",
    "difficulty": "medium-hard anchor",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_TRUE",
        "mold": "fabricated_rule",
        "architecture": "violation_vs_remedy",
        "card_ref": "GK-CRIMINAL-BANK-THIRD-PARTY-01",
        "explanation": "The choice treats a missing subpoena as a Fourth Amendment suppression trigger before establishing any protected Fourth Amendment interest."
      },
      {
        "choice": "C",
        "filter_broken": "NOT_TRUE",
        "mold": "flat_misstatement",
        "architecture": "wrong_frame",
        "card_ref": "GK-CRIMINAL-BANK-THIRD-PARTY-01",
        "explanation": "The choice gives the right result through the wrong source: statute instead of constitutional third-party doctrine."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_TRUE",
        "mold": "flat_misstatement",
        "architecture": null,
        "card_ref": "GK-CRIMINAL-BANK-THIRD-PARTY-01",
        "explanation": "The choice asserts a recognized Fourth Amendment privacy expectation in bank records where the Gold Key says none exists."
      }
    ],
    "analyzer_notes": {
      "drift_audit": "anchor-dependent item; no choice is treated as hard-structural without the bank-record third-party Gold Key",
      "transformed_from": "17084",
      "letter_map": "A->D; B->A; C->B; D->C",
      "pick_rate_note": "All percentages are predicted because no measured original pick rates were supplied."
    },
    "gold_keys": [
      {
        "id": "GK-CRIMINAL-BANK-THIRD-PARTY-01",
        "statement": "Bank account records are the bank's business records. A customer generally has no Fourth Amendment privacy interest in information voluntarily conveyed to the bank in ordinary transactions.",
        "type": "constitutional_principle",
        "unlocks": "Privacy-expectation, subpoena-required, and statutory-source traps.",
        "trigger": "Government obtains checks, deposit slips, account statements, or bank records from the bank.",
        "tested_choice": "D",
        "authority": "United States v. Miller, 425 U.S. 435 (1976); Smith v. Maryland, 442 U.S. 735 (1979).",
        "last_minute_review": true
      }
    ],
    "silver_keys": [
      {
        "id": "SK-CRIMINAL-SUPPRESSION-THRESHOLD-01",
        "statement": "On a suppression call, first ask whether this defendant has a Fourth Amendment interest in the record. If no protected interest exists, warrant and subpoena phrasing is bait.",
        "type": "call_focus",
        "navigates": "Subpoena-process trap before protected-interest threshold.",
        "trigger": "The call asks whether to suppress records obtained from someone else.",
        "tested_choice": "A",
        "outline_code": "75070200",
        "last_minute_review": true
      }
    ]
  }
}
```

## 4. `program_elements`

```json
{
  "question_id": "17084_five_loaves_bank_records",
  "subject": "CRIMINAL",
  "outline_code": "75070200",
  "distilled_core_question": "Agents got a suspect's bank records from the bank without a warrant or subpoena. The suspect moves to suppress under the Fourth Amendment. Should suppression be granted?",
  "review_truth": "Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.",
  "tension": {
    "axis": "protected Fourth Amendment interest vs no protected interest",
    "resolution": "No protected interest in bank records held by the bank under the Gold Key."
  },
  "traps": [
    {
      "choice": "A",
      "mold": "fabricated_rule",
      "architecture": "violation_vs_remedy",
      "why_attractive": "The student sees agents acting without a subpoena and treats missing process as automatically suppression-worthy. The breaker is that no Fourth Amendment interest exists in the bank's records, so process language does not win the suppression call.",
      "focus_group_pct": 24,
      "pct_provenance": "predicted"
    },
    {
      "choice": "C",
      "mold": "flat_misstatement",
      "architecture": "wrong_frame",
      "why_attractive": "The student likes the no-suppression result and accepts a clean categorical statute explanation. The breaker is source discipline: this is Miller third-party doctrine, not a statutory exclusion.",
      "focus_group_pct": 7,
      "pct_provenance": "predicted"
    },
    {
      "choice": "D",
      "mold": "flat_misstatement",
      "architecture": null,
      "why_attractive": "The student treats personal bank records as naturally private. The breaker is the Gold Key: bank records voluntarily conveyed to a bank are not protected Fourth Amendment papers of the depositor.",
      "focus_group_pct": 31,
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "CRIM-REM-BANK-THIRD-PARTY-01",
    "title": "Bank records: interest first, process second",
    "signal": "Agents obtain account statements, deposit slips, canceled checks, or bank records from a bank.",
    "student_move": "Ask whether the defendant has a Fourth Amendment interest before arguing warrant, subpoena, or suppression.",
    "tiny_rule": "Miller bank records are bank business records; no Fourth Amendment suppression right belongs to the depositor.",
    "trap": "Treating personal finance privacy as Fourth Amendment privacy.",
    "confidence": "PURE_ANCHOR"
  },
  "red_zone_dimensions": [
    "privacy intuition",
    "subpoena-process bait",
    "right result wrong source",
    "statutory framework leakage",
    "Carpenter overextension"
  ]
}
```

## 5. `program_intelligence`

```json
{
  "question_id": "17084_five_loaves_bank_records",
  "subject": "CRIMINAL",
  "outline_code": "75070200",
  "distilled_core_question": "Agents got a suspect's bank records from the bank without a warrant or subpoena. The suspect moves to suppress under the Fourth Amendment. Should suppression be granted?",
  "review_truth": "Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.",
  "wrong_answer_paths": [
    {
      "choice": "A",
      "filter_broken": "NOT_TRUE",
      "mold": "fabricated_rule",
      "why_a_student_picks_this": "The missing subpoena feels like an obvious procedural defect.",
      "skipped_move": "Protected-interest threshold before process.",
      "recovery_step": "Ask whether Esther has a Fourth Amendment interest in the bank's records."
    },
    {
      "choice": "C",
      "filter_broken": "NOT_TRUE",
      "mold": "flat_misstatement",
      "why_a_student_picks_this": "The no-suppression outcome is correct, so the source error is easy to overlook.",
      "skipped_move": "Source discipline.",
      "recovery_step": "Replace statute framing with the third-party doctrine Gold Key."
    },
    {
      "choice": "D",
      "filter_broken": "NOT_TRUE",
      "mold": "flat_misstatement",
      "why_a_student_picks_this": "The student equates financial sensitivity with Fourth Amendment privacy.",
      "skipped_move": "Gold Key recall.",
      "recovery_step": "Identify the bank as the third-party record holder."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "anchor_recall",
      "target_skill": "Bank-record third-party doctrine",
      "prompt": "Agents obtain deposit slips and canceled checks from a suspect's bank. Does the suspect have a Fourth Amendment privacy interest in the bank records?",
      "answer": "No."
    },
    {
      "drill_type": "call_focus",
      "target_skill": "Suppression threshold",
      "prompt": "Before asking whether agents needed a warrant or subpoena, what threshold question should you ask?",
      "answer": "Whether this defendant has a Fourth Amendment interest in the records."
    },
    {
      "drill_type": "wrong_source",
      "target_skill": "Correct result, wrong reason",
      "prompt": "No suppression because bank records are excluded by statute. Name the defect.",
      "answer": "Wrong source; the rule is constitutional third-party doctrine."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "third_party_doctrine",
      "bank_records",
      "suppression_motion",
      "protected_interest_threshold",
      "right_result_wrong_reason"
    ],
    "misconception_tags": [
      "financial_records_are_private",
      "no_subpoena_equals_suppression",
      "statute_controls_fourth_amendment"
    ]
  },
  "component_routing": [
    "Lesson 1 TRUE and RESPONSIVE",
    "Lesson 2 CUT -> CLASH -> CALL",
    "Lesson 11 violation-vs-remedy",
    "Lesson 12 anchor deck",
    "Lesson 13 calibration"
  ],
  "crossovers": [
    {
      "area": "Evidence",
      "intersection": "Suppression remedy depends on the constitutional interest, not just evidence relevance."
    },
    {
      "area": "Civil Procedure",
      "intersection": "Subpoena process can be procedurally relevant without creating a Fourth Amendment suppression right."
    },
    {
      "area": "Constitutional Law",
      "intersection": "Reasonable expectation of privacy is a threshold categorization question."
    }
  ],
  "gold_keys": [
    {
      "id": "GK-CRIMINAL-BANK-THIRD-PARTY-01",
      "statement": "Bank account records are the bank's business records. A customer generally has no Fourth Amendment privacy interest in information voluntarily conveyed to the bank in ordinary transactions.",
      "type": "constitutional_principle",
      "unlocks": "Privacy-expectation, subpoena-required, and statutory-source traps.",
      "trigger": "Government obtains checks, deposit slips, account statements, or bank records from the bank.",
      "tested_choice": "D",
      "authority": "United States v. Miller, 425 U.S. 435 (1976); Smith v. Maryland, 442 U.S. 735 (1979).",
      "last_minute_review": true
    }
  ],
  "silver_keys": [
    {
      "id": "SK-CRIMINAL-SUPPRESSION-THRESHOLD-01",
      "statement": "On a suppression call, first ask whether this defendant has a Fourth Amendment interest in the record. If no protected interest exists, warrant and subpoena phrasing is bait.",
      "type": "call_focus",
      "navigates": "Subpoena-process trap before protected-interest threshold.",
      "trigger": "The call asks whether to suppress records obtained from someone else.",
      "tested_choice": "A",
      "outline_code": "75070200",
      "last_minute_review": true
    }
  ],
  "outline_mastery": {
    "placement": "75070200 Fourth Amendment > Searches and Seizures",
    "this_item_teaches": "A defendant must first have a protected Fourth Amendment interest before suppression analysis helps.",
    "fills": [
      "Bank records under Miller",
      "Third-party doctrine trigger",
      "Suppression threshold discipline"
    ],
    "adjacent_to_master": [
      "Smith pen-register doctrine",
      "Carpenter CSLI boundary",
      "Good-faith and exclusionary-rule remedy questions",
      "Subpoena vs warrant process distinctions"
    ]
  }
}
```

[1]: https://supreme.justia.com/cases/federal/us/425/435/?utm_source=chatgpt.com "United States v. Miller | 425 U.S. 435 (1976) | Justia U.S. Supreme Court Center"
[2]: https://supreme.justia.com/cases/federal/us/585/16-402/?utm_source=chatgpt.com "Carpenter v. United States | 585 U.S. ___ (2018) | Justia U.S. Supreme Court Center"

### 2. The 17-section student case study

```
1. **program_frame:** Question 17084_five_loaves_bank_records; source 17084.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic Fourth Amendment; subtopic Constitutional Protection of Accused Persons.
4. **distilled_core_question:** Agents got a suspect's bank records from the bank without a warrant or subpoena. The suspect moves to suppress under the Fourth Amendment. Should suppression be granted?
5. **call_and_prediction:** Credited answer: B.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 75070200.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** B
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 75070200.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.
```

### 3. c3_annotation

```json
{
  "question_id": "17084_five_loaves_bank_records",
  "subject": "CRIMINAL",
  "credited_answer": "B",
  "outline_code": "75070200",
  "distilled_core_question": "Agents got a suspect's bank records from the bank without a warrant or subpoena. The suspect moves to suppress under the Fourth Amendment. Should suppression be granted?",
  "review_truth": "Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.",
  "c3": {
    "verdict": "ANCHOR_SOLVE",
    "residual": "B",
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
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 17084; letter_map: - original_letter: \"A",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "17084_five_loaves_bank_records",
  "subject": "CRIMINAL",
  "outline_code": "75070200",
  "distilled_core_question": "Agents got a suspect's bank records from the bank without a warrant or subpoena. The suspect moves to suppress under the Fourth Amendment. Should suppression be granted?",
  "review_truth": "Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-17084",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.",
    "trap": "See preserved traps when present.",
    "confidence": "PURE_ANCHOR"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "17084_five_loaves_bank_records",
  "subject": "CRIMINAL",
  "outline_code": "75070200",
  "distilled_core_question": "Agents got a suspect's bank records from the bank without a warrant or subpoena. The suspect moves to suppress under the Fourth Amendment. Should suppression be granted?",
  "review_truth": "Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.",
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
    "placement": "75070200",
    "this_item_teaches": "Bank records voluntarily conveyed to a bank are third-party business records; no Fourth Amendment suppression remedy follows from the government obtaining them.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
