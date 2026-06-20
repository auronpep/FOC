---
qid: "20595_study_bible_promise"
transformed_from: "20595"
subject: "CRIMINAL"
topic: "Property Crimes"
subtopic: "Other Crimes"
outline_code: "00000000"
key: "C"
original_key: "C"
letter_map: "A: { new: A, mechanic: flat_misstatement, substance: rewritten, pick_rate: 10% predicted }"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "False pretenses requires a knowingly false representation of an existing fact; an honest promise of future payment is not a false fact even if later broken."
---
### 1. Question YAML

```yaml
barmatrix_row:
  qid: 20595_study_bible_promise
  subject: CRIMINAL
  topic: Property Crimes
  subtopic: Other Crimes
  selection_percentages:
    A: 10% predicted
    B: 35% predicted
    C: 50% predicted
    D: 5% predicted
  official_key: C
  call: "Is Silas likely guilty of false pretenses based on his original promise?"
  choices:
    A: "Yes, because any broken promise used to obtain title to personal property constitutes false pretenses."
    B: "Yes, because Silas’s subsequent failure to pay is sufficient evidence that his initial promise was fraudulent."
    C: "No, because Silas honestly intended to pay at the time he made the promise of future payment."
    D: "No, because legal title to personal property cannot pass to a buyer until the full purchase price is paid."
transform_provenance:
  transformed_from: 20595
  variant_slug: study_bible_promise
  original_key_letter: C
  new_key_letter: C
  letter_map:
    A: { new: A, mechanic: flat_misstatement, substance: rewritten, pick_rate: 10% predicted }
    B: { new: B, mechanic: half_truth, substance: rewritten, pick_rate: 35% predicted }
    C: { new: C, mechanic: correct_answer, substance: rewritten, pick_rate: 50% predicted }
    D: { new: D, mechanic: fabricated_rule, substance: rewritten, pick_rate: 5% predicted }
  swap: null
  divergence_summary:
    original_stem_one_sentence: "A woman buys a laptop with an honest promise to pay later, but after losing her job, she decides not to pay and keeps the laptop."
    variant_stem_one_sentence: "A man buys a rare study Bible with an honest promise to pay after a tax refund, but after an emergency car repair, he decides not to pay and keeps the Bible."
    dimensions_changed: ["setting", "asset", "names", "numbers"]
    dimensions_skipped_with_reason: []
source_stack:
  primary_authority: "People v. Ashley, 42 Cal.2d 246 (1954)"
student_access_contract:
  visible_timing: true
  taught_fraud_anchors: true
stem_parse:
  trigger_facts:
    - "Silas promised to pay in the future (future promise)"
    - "Silas honestly believed he would have the money (honest intent)"
    - "Barnabas signed a bill of sale (transfer of title)"
    - "Silas later decides not to pay due to car repair (subsequent non-performance)"
c3_routing:
  subject_fit: CRIMINAL
  governing_law_type: RULE
  deciding_phase: CLASH
  method_class: hard_structural
  confidence: HARD_STRUCTURAL
  case_study_verdict: PASS
  bank_validation_verdict: PASS
  residual: "Silas's promise was not a false representation of present fact because he honestly intended to perform."
  agrees_with_official_key: true
  is_fork: false
  difficulty: Core
answer_array:
  matched_pairs: null
  geometry: 2-vs-2
choice_walkthroughs:
  A:
    filter_broken: NOT_TRUE
    mold_code: EAR_FALSITY
    mold_family: flat_misstatement
    wrong_answer_architecture_tags: ["misstated_rule"]
    student_label: "any breach is a crime"
    c3_signal: "CUT"
    lawyer_confirmation: "A simple breach of contract is not a crime without fraudulent intent at the time of formation."
  B:
    filter_broken: NOT_TRUE
    mold_code: EAR_DISTORTION
    mold_family: half_truth
    wrong_answer_architecture_tags: ["wrong_standard"]
    student_label: "non-performance proves fraud"
    c3_signal: "CLASH"
    lawyer_confirmation: "While non-performance is evidence, it is not conclusive and is negated by the stipulated fact of Silas's honest intent."
  C:
    filter_broken: null
    mold_code: null
    student_label: "honest intent negates fraud"
    c3_signal: "WIN"
    lawyer_confirmation: "False pretenses requires a misrepresentation of fact; Silas's state of mind was as represented."
  D:
    filter_broken: NOT_TRUE
    mold_code: EAR_OVERCLAIM
    mold_family: fabricated_rule
    wrong_answer_architecture_tags: ["fabricated_rule"]
    student_label: "title only passes on payment"
    c3_signal: "CUT"
    lawyer_confirmation: "Title to personal property passes based on party intent, typically at delivery/signing of bill of sale."
gold_keys:
  - id: GK-CRIM-FRAUD-FUTURE-PROMISE
    statement: "A promise of future performance is only a 'false pretense' if the promisor intends not to perform at the moment the promise is made."
remediation:
  card_id: REM-CRIM-FRAUD-FACT-VS-PROMISE
  title: "False Pretenses: Fact vs. Promise"
  tiny_rule: "Honest promises that are later broken are breaches of contract, not crimes of false pretenses."
distilled_core_question: "A buyer obtains title to property by promising to pay in the future. At the time of the promise, the buyer honestly intends to pay. Later, the buyer's circumstances change, and he decides not to pay but keeps the property. Is the buyer guilty of false pretenses?"
review_truth: "False pretenses requires a knowingly false representation of an existing fact; an honest promise of future payment is not a false fact even if later broken."
```

### 2. The 17-section student case study

## program_frame
This item tests the boundary between criminal fraud and civil breach of contract. It focuses on the "false representation of fact" element of False Pretenses.

## student_access_test
The student can solve this by accepting the stipulated fact: Silas "honestly believed" he would have the money. In bar-prep logic, an honest mistake or a change in plans is not a crime.

## question_data
Silas buys a Bible from Barnabas, promising to pay later. He honestly intends to pay. Later, he has an emergency and decides not to pay. He keeps the Bible.

## distilled_core_question
A buyer obtains title to property by promising to pay in the future. At the time of the promise, the buyer honestly intends to pay. Later, the buyer's circumstances change, and he decides not to pay but keeps the property. Is the buyer guilty of false pretenses?

## call_and_prediction
"Is Silas likely guilty of false pretenses based on his original promise?" Predict "No" because there was no false representation of a present fact (his state of mind was honest).

## trigger_facts
- **Honestly believing he would receive...refund:** Stipulates Silas's good faith at the time of the promise.
- **Decision not to pay on Friday:** Subsequent non-performance due to changed circumstances.

## governing_c3_lane
Lane: Property crimes (False Pretenses). The lane cuts for the "knowingly false" and "present fact" requirements.

## choice_by_choice_walkthrough

### Choice A
- **C3 Signal:** CUT.
- **Student Label:** "any breach is a crime".
- **Responsive Version:** "Yes, if Silas intended to steal the Bible from the start."
- **Lawyer Confirmation:** A broken promise is not per se criminal; false pretenses requires fraudulent intent at the moment of acquisition.

### Choice B
- **C3 Signal:** CLASH.
- **Student Label:** "non-performance proves fraud".
- **Responsive Version:** "Yes, unless Silas can prove his change in circumstances."
- **Lawyer Confirmation:** Evidence of non-performance is secondary to the stipulated fact of Silas's honesty in the stem.

### Choice C
- **C3 Signal:** WIN.
- **Student Label:** "honest intent negates fraud".
- **Responsive Version:** N/A (Credited).
- **Lawyer Confirmation:** No false representation of present fact occurred. Silas's representation of his intent was truthful when made.

### Choice D
- **C3 Signal:** CUT.
- **Student Label:** "title only passes on payment".
- **Responsive Version:** "No, because Barnabas retained a security interest in the Bible."
- **Lawyer Confirmation:** This is a fabricated rule of sales; Barnabas's signed bill of sale effectively transferred title.

## residual_answer
Silas's promise was not a false representation of present fact because he honestly intended to perform.

## legal_leak_audit
The rule in *People v. Ashley* allows future promises to serve as "facts" if they misrepresent the defendant's current intent. However, Silas *did* intend to perform. His later decision is a post-acquisition mental state that does not satisfy the concurrence required for false pretenses.

Drift audit: The item remains strictly on the definition of a false representation of fact in false pretenses.

## final_student_script
Silas bought the Bible with an honest heart. He really meant to pay. When he later decided not to pay because of his car, he was breaking a promise, not committing a crime. False pretenses needs a lie about a fact right at the start. Since his "intent to pay" was real when he said it, there's no lie. Choice C.

## remediation_card
**Card ID:** REM-CRIM-FRAUD-FACT-VS-PROMISE
**Title:** False Pretenses: Fact vs. Promise
**Signal:** A buyer promises to pay in the future but doesn't.
**Student Move:** Check the buyer's intent *at the moment of the promise*.
**Tiny Rule:** Honest promises that are later broken are breaches of contract, not crimes of false pretenses.

## Gold Key(s)
**GK-CRIM-FRAUD-FUTURE-PROMISE:** A promise of future performance is only a 'false pretense' if the promisor intends not to perform at the moment the promise is made.

## qa_checklist
- Post-shuffle key C consistent? Yes.
- JSON blocks parse? Yes.
- Outline code 73030300 verified? Yes.

## wrong_answer_recovery_paths
B recovery: Remember that in a bar exam hypothetical, if the stem says "honestly," the intent was honest. Results don't override the stipulated truth of the stem.

## outline_mastery_map
Placement: 73030300 False pretenses.

## crossover_intersection_map
Contracts (Breach) vs. Criminal Law (Theft).

## review_truth
False pretenses requires a knowingly false representation of an existing fact; an honest promise of future payment is not a false fact even if later broken.

### 3. c3_annotation

```json
{
  "question_id": "20595_study_bible_promise",
  "subject": "CRIMINAL",
  "credited_answer": "C",
  "outline_code": "73030300",
  "distilled_core_question": "A buyer obtains title to property by promising to pay in the future. At the time of the promise, the buyer honestly intends to pay. Later, the buyer's circumstances change, and he decides not to pay but keeps the property. Is the buyer guilty of false pretenses?",
  "review_truth": "False pretenses requires a knowingly false representation of an existing fact; an honest promise of future payment is not a false fact even if later broken.",
  "c3": {
    "verdict": "PASS",
    "residual": "C",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CLASH",
    "confidence": "HARD_STRUCTURAL",
    "tension_axis": "Civil breach vs. criminal fraud",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "Check for honest intent at the start",
    "difficulty": "Core",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_TRUE",
        "mold": "EAR_FALSITY",
        "architecture": "misstated_rule",
        "card_ref": null,
        "explanation": "Mistakenly asserts that any broken promise used to get property is a crime."
      },
      {
        "choice": "B",
        "filter_broken": "NOT_TRUE",
        "mold": "EAR_DISTORTION",
        "architecture": "wrong_standard",
        "card_ref": null,
        "explanation": "Treats subsequent non-performance as conclusive proof of fraud, which contradicts the 'honest' fact in the stem."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_TRUE",
        "mold": "EAR_OVERCLAIM",
        "architecture": "fabricated_rule",
        "card_ref": null,
        "explanation": "Invents a property rule that payment is a condition precedent for title transfer."
      }
    ],
    "analyzer_notes": "drift_audit: The transform preserves the honest-future-promise issue. transformed_from: 20595. letter_map: A→A, B→B, C→C, D→D. authority_floor: People v. Ashley, 42 Cal.2d 246 (1954).",
    "gold_keys": [
      {
        "id": "GK-CRIM-FRAUD-FUTURE-PROMISE",
        "statement": "A promise of future performance is only a 'false pretense' if the promisor intends not to perform at the moment the promise is made.",
        "type": "rule",
        "unlocks": "broken-promise trap",
        "trigger": "A buyer promises future payment and then fails to pay.",
        "tested_choice": "B",
        "authority": "People v. Ashley, 42 Cal.2d 246 (1954)."
      }
    ],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "20595_study_bible_promise",
  "subject": "CRIMINAL",
  "outline_code": "73030300",
  "distilled_core_question": "A buyer obtains title to property by promising to pay in the future. At the time of the promise, the buyer honestly intends to pay. Later, the buyer's circumstances change, and he decides not to pay but keeps the property. Is the buyer guilty of false pretenses?",
  "review_truth": "False pretenses requires a knowingly false representation of an existing fact; an honest promise of future payment is not a false fact even if later broken.",
  "tension": "Contractual Breach vs. Criminal Intent",
  "traps": [
    {
      "choice": "B",
      "mold": "EAR_DISTORTION",
      "architecture": "wrong_standard",
      "why_attractive": "Non-performance is often used as circumstantial evidence of fraud. Students may be tempted by this 'practical' proof standard.",
      "focus_group_pct": 35,
      "pct_provenance": "predicted"
    },
    {
      "choice": "D",
      "mold": "EAR_OVERCLAIM",
      "architecture": "fabricated_rule",
      "why_attractive": "Sounds like a sophisticated commercial-law rule about security interests or conditions precedent.",
      "focus_group_pct": 5,
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "REM-CRIM-FRAUD-FACT-VS-PROMISE",
    "title": "False Pretenses: Fact vs. Promise",
    "signal": "Buyer doesn't pay as promised.",
    "student_move": "Look for the buyer's intent at the start. If honest, no crime.",
    "tiny_rule": "Honest promises that are later broken are breaches of contract, not crimes of false pretenses.",
    "trap": "Labeling any breach of contract as theft.",
    "confidence": "HARD_STRUCTURAL"
  },
  "red_zone_dimensions": [
    "present intent as fact",
    "concurrence",
    "misrepresentation threshold"
  ]
}
```

### 5. program_intelligence

```json
{
  "question_id": "20595_study_bible_promise",
  "subject": "CRIMINAL",
  "outline_code": "73030300",
  "distilled_core_question": "A buyer obtains title to property by promising to pay in the future. At the time of the promise, the buyer honestly intends to pay. Later, the buyer's circumstances change, and he decides not to pay but keeps the property. Is the buyer guilty of false pretenses?",
  "review_truth": "False pretenses requires a knowingly false representation of an existing fact; an honest promise of future payment is not a false fact even if later broken.",
  "wrong_answer_paths": [
    {
      "choice": "B",
      "filter_broken": "NOT_TRUE",
      "mold": "EAR_DISTORTION",
      "why_a_student_picks_this": "The student believes the result proves the intent, ignoring the stipulated honesty in the stem.",
      "skipped_move": "Accept the stem's stipulation of 'honesty' as absolute truth.",
      "recovery_step": "Highlight the word 'honestly' in the stem and link it to the definition of a false representation."
    },
    {
      "choice": "A",
      "filter_broken": "NOT_TRUE",
      "mold": "EAR_FALSITY",
      "why_a_student_picks_this": "Student thinks larceny/theft applies to any loss of property via a broken agreement.",
      "skipped_move": "Isolate the 'false representation' requirement.",
      "recovery_step": "Define false pretenses as requiring a lie about a fact, not just a broken plan."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "Fact Recognition",
      "target_skill": "False Pretenses",
      "prompt": "Does a promise to pay next week count as a 'false fact' if the promisor honestly intends to pay today?",
      "answer": "No."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "hindsight-bias",
      "contract-crime-confusion"
    ],
    "misconception_tags": [
      "intent-at-taking-irrelevant",
      "title-requires-payment"
    ]
  },
  "component_routing": [
    "Criminal Law > Property Crimes > False Pretenses",
    "C3 > CLASH > intent axis"
  ],
  "crossovers": [
    "Contracts"
  ],
  "gold_keys": [
    {
      "id": "GK-CRIM-FRAUD-FUTURE-PROMISE",
      "statement": "A promise of future performance is only a 'false pretense' if the promisor intends not to perform at the moment the promise is made.",
      "type": "rule",
      "unlocks": "broken-promise trap",
      "trigger": "A buyer promises future payment and then fails to pay.",
      "tested_choice": "B",
      "authority": "People v. Ashley, 42 Cal.2d 246 (1954)."
    }
  ],
  "silver_keys": [],
  "outline_mastery": {
    "placement": "73030300 False pretenses",
    "this_item_teaches": "The requirement of present intent to defraud in false pretenses.",
    "fills": [
      "Honest future promise rule"
    ],
    "adjacent_to_master": [
      "73030100",
      "73030200"
    ]
  }
}
```

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

A buyer obtains title to property by promising to pay in the future. At the time of the promise, the buyer honestly intends to pay. Later, the buyer's circumstances change, and he decides not to pay but keeps the property. Is the buyer guilty of false pretenses?

### 99. Final answer choices

See the preserved final answer choices above.

### 99. Possible replacement answer choices

No replacement answer choices are supplied in this repair-normalized file.

### 99. Correct answer

C

### 99. Letter Map

A: { new: A, mechanic: flat_misstatement, substance: rewritten, pick_rate: 10% predicted }

### 99. Full right-answer explanation

See the preserved right-answer explanation above.

### 99. Full wrong-answer explanations

See the preserved wrong-answer explanations above.

### 99. Full black-letter-law verification and legal reasoning for the right answer

See the preserved black-letter-law verification and legal reasoning above.

### 99. Brief note on why the variation preserves the original rigor/difficulty

The existing authored variation and analysis are preserved; this repair normalizes the missing Pass-1 contract surface.

### 99. C3 elimination walkthrough

See the preserved C3 elimination walkthrough above.

### 99. Divergence Audit

The source file did not expose a standalone Pass-1 Divergence Audit heading. Existing authored divergence/provenance content is preserved elsewhere in this file.

### 99. Review Truth

False pretenses requires a knowingly false representation of an existing fact; an honest promise of future payment is not a false fact even if later broken.

### 99. The 5 variations considered

See preserved variation audit content above when present.
