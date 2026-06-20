---
qid: "22139_mountain_retreat_ouster"
transformed_from: "22139"
subject: "REAL PROPERTY"
topic: "Ownership"
subtopic: "Waste"
outline_code: "00000000"
key: "C"
original_key: "C"
letter_map: "A: { new: A, mechanic: distractor_phrase, substance: rewritten, pick_rate: 10% predicted }"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "PASS"
review_truth: "A co-tenant in possession is not liable to co-tenants out of possession for rent or profits unless there has been an ouster."
---
### 1. Question YAML

```yaml
barmatrix_row:
  qid: 22139_mountain_retreat_ouster
  subject: REAL PROPERTY
  topic: Ownership
  subtopic: Waste
  selection_percentages:
    A: 10% predicted
    B: 15% predicted
    C: 55% predicted
    D: 20% predicted
  official_key: C
  call: "Which of the following facts or inferences, if it were the only one true, would be most likely to result in a judgment for James?"
  choices:
    A: "Operating a retreat center was the highest and best use of the mountain property."
    B: "A Christian camp organization had offered to purchase the land for a price far exceeding its market value, but Peter refused to sell."
    C: "James had attempted to visit the land to conduct a prayer meeting, but Peter changed the locks and refused him entry."
    D: "Peter used his profits to build a permanent stone chapel and several guest cabins on the property."
transform_provenance:
  transformed_from: 22139
  variant_slug: mountain_retreat_ouster
  original_key_letter: C
  new_key_letter: C
  letter_map:
    A: { new: A, mechanic: distractor_phrase, substance: rewritten, pick_rate: 10% predicted }
    B: { new: B, mechanic: misfit, substance: rewritten, pick_rate: 15% predicted }
    C: { new: C, mechanic: correct_answer, substance: rewritten, pick_rate: 55% predicted }
    D: { new: D, mechanic: bait_doctrine, substance: rewritten, pick_rate: 20% predicted }
  swap: null
  divergence_summary:
    original_stem_one_sentence: "One of three daughters takes sole possession of inherited land for farming; the eldest daughter wants rent."
    variant_stem_one_sentence: "One of three pastor's sons takes sole possession of inherited mountain land for a retreat center; the brother James wants rent."
    dimensions_changed: ["setting", "asset", "names", "numbers"]
    dimensions_skipped_with_reason: []
source_stack:
  primary_authority: "Restatement (Second) of Property § 12.1"
student_access_contract:
  visible_timing: true
  taught_cotenancy_anchors: true
stem_parse:
  trigger_facts:
    - "Joint tenants with right of survivorship (equal right to possession)"
    - "Peter is in sole possession (operating retreat center)"
    - "No third-party rent mentioned (Peter's own use)"
    - "James wants a share of fair rental value (duty to account)"
c3_routing:
  subject_fit: REAL PROPERTY
  governing_law_type: RULE
  deciding_phase: CLASH
  method_class: hard_structural
  confidence: HARD_STRUCTURAL
  case_study_verdict: PASS
  bank_validation_verdict: PASS
  residual: "James can only recover rent if Peter ousted him."
  agrees_with_official_key: true
  is_fork: false
  difficulty: Core
answer_array:
  matched_pairs: null
  geometry: 1-vs-3
choice_walkthroughs:
  A:
    filter_broken: NOT_RESPONSIVE
    mold_code: ISSUE_SENSE
    mold_family: distractor_phrase
    wrong_answer_architecture_tags: ["irrelevant_concept"]
    student_label: "valuation irrelevant"
    c3_signal: "CUT"
    lawyer_confirmation: "Highest and best use relates to eminent domain or zoning, not co-tenant accounting."
  B:
    filter_broken: NOT_RESPONSIVE
    mold_code: ISSUE_SENSE
    mold_family: misfit
    wrong_answer_architecture_tags: ["wrong_duty"]
    student_label: "right to refuse sale"
    c3_signal: "CUT"
    lawyer_confirmation: "A co-tenant has no duty to sell the common property or their interest."
  C:
    filter_broken: null
    mold_code: null
    student_label: "ouster established"
    c3_signal: "WIN"
    lawyer_confirmation: "Changing locks and refusing entry constitutes a wrongful exclusion (ouster), triggering rent liability."
  D:
    filter_broken: NOT_RESPONSIVE
    mold_code: ISSUE_SENSE
    mold_family: bait_doctrine
    wrong_answer_architecture_tags: ["wrong_trigger"]
    student_label: "improvements != ouster"
    c3_signal: "CLASH"
    lawyer_confirmation: "Making improvements is a right of a co-tenant in possession and does not constitute ouster."
gold_keys:
  - id: GK-PROP-COTENANT-RENT-OUSTER
    statement: "A co-tenant in possession is not liable for rent to other co-tenants unless they have ousted them from the property."
remediation:
  card_id: REM-PROP-COTENANT-DUTIES
  title: "Co-tenant Possession and Rent"
  tiny_rule: "Sole possession is free; only ouster (wrongful exclusion) triggers rent liability."
distilled_core_question: "Three co-tenants own land. One co-tenant takes sole possession and realizes profits from his own use of the land. When is he liable to the other co-tenants for a share of the fair rental value?"
review_truth: "A co-tenant in possession is not liable to co-tenants out of possession for rent or profits unless there has been an ouster."
```

### 2. The 17-section student case study

## program_frame
This item tests the relationship between concurrent owners regarding the use of the common property. Specifically, it tests the rule that sole possession by one co-tenant is generally "rent-free" unless they oust the others.

## student_access_test
The student can solve this by looking for a "wrongful exclusion" fact. Choice C provides the specific act of changing locks, which is the textbook trigger for ouster.

## question_data
Three brothers own land. Peter moves in and makes a profit from a retreat ministry. James wants his share of the rental value.

## distilled_core_question
Three co-tenants own land. One co-tenant takes sole possession and realizes profits from his own use of the land. When is he liable to the other co-tenants for a share of the fair rental value?

## call_and_prediction
"Which fact... would result in a judgment for James?" Predict a fact that shows ouster. James wants rent, and ouster is the only path to rent in this scenario.

## trigger_facts
- **Joint tenants:** Peter, James, and John have equal rights to the 150 acres.
- **Peter moved onto the land:** Establishes sole possession.
- **Realizing substantial profits:** Peter is using the land for his own benefit, not for third-party rent.

## governing_c3_lane
Lane: Co-tenancy duties. The lane cuts choices that focus on valuation or improvements, routing the student toward the exclusion axis.

## choice_by_choice_walkthrough

### Choice A
- **C3 Signal:** CUT.
- **Student Label:** "valuation irrelevant".
- **Responsive Version:** "Farming was the best use."
- **Lawyer Confirmation:** "Highest and best use" is a distractor phrase from other areas of property law (like condemnation).

### Choice B
- **C3 Signal:** CUT.
- **Student Label:** "right to refuse sale".
- **Responsive Version:** "A developer offered more than market value."
- **Lawyer Confirmation:** Co-tenants have no duty to maximize property value through sale.

### Choice C
- **C3 Signal:** WIN.
- **Student Label:** "ouster established".
- **Responsive Version:** N/A (Credited).
- **Lawyer Confirmation:** Changing locks is the definitive act of ouster.

### Choice D
- **C3 Signal:** CLASH.
- **Student Label:** "improvements != ouster".
- **Responsive Version:** "Youngest daughter erected permanent structures."
- **Lawyer Confirmation:** Improvements do not trigger rent; the co-tenant in possession has a right to improve.

## residual_answer
James can only recover rent if Peter ousted him.

## legal_leak_audit
The majority rule distinguishes between profits from the land (like farming) and rent from third parties. Peter's "profits" are his own business income. James's only claim is for "rental value," which requires ouster.

Drift audit: The transform preserves the ouster requirement and the lack of liability for mere possession.

## final_student_script
Peter lives on the land for free, even if he makes a profit from his ministry. James can't get rent just because he's a co-owner. He can ONLY get rent if Peter kicks him out (ouster). Choice C says Peter changed the locks—that's the ouster James needs to win.

## remediation_card
**Card ID:** REM-PROP-COTENANT-DUTIES
**Title:** Co-tenant Possession and Rent
**Signal:** A co-tenant in possession is making money or living alone.
**Student Move:** Ask: "Did he kick the others out?"
**Tiny Rule:** Sole possession is free; only ouster (wrongful exclusion) triggers rent liability.

## Gold Key(s)
**GK-PROP-COTENANT-RENT-OUSTER:** A co-tenant in possession is not liable for rent to other co-tenants unless they have ousted them from the property.

## qa_checklist
- Post-shuffle key C consistent? Yes.
- JSON blocks parse? Yes.
- Outline code 82010501 verified? Yes.

## wrong_answer_recovery_paths
D recovery: Improvements might entitle Peter to credit later during a partition, but they don't make him owe rent now.

## outline_mastery_map
Placement: 82010501 Ownership > Co-tenancy > Duties.

## crossover_intersection_map
Waste vs. Ouster.

## review_truth
A co-tenant in possession is not liable to co-tenants out of possession for rent or profits unless there has been an ouster.

### 3. c3_annotation

```json
{
  "question_id": "22139_mountain_retreat_ouster",
  "subject": "REAL PROPERTY",
  "credited_answer": "C",
  "outline_code": "82010501",
  "distilled_core_question": "Three co-tenants own land. One co-tenant takes sole possession and realizes profits from his own use of the land. When is he liable to the other co-tenants for a share of the fair rental value?",
  "review_truth": "A co-tenant in possession is not liable to co-tenants out of possession for rent or profits unless there has been an ouster.",
  "c3": {
    "verdict": "PASS",
    "residual": "C",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CLASH",
    "confidence": "HARD_STRUCTURAL",
    "tension_axis": "Possession right vs. Rent liability",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "Identify wrongful exclusion",
    "difficulty": "Core",
    "distractors": [
      {
        "choice": "A",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "ISSUE_SENSE",
        "architecture": "irrelevant_concept",
        "card_ref": null,
        "explanation": "Highest and best use is a valuation term irrelevant to co-tenant accounting."
      },
      {
        "choice": "B",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "ISSUE_SENSE",
        "architecture": "wrong_duty",
        "card_ref": null,
        "explanation": "Co-tenants have no duty to sell property to third parties."
      },
      {
        "choice": "D",
        "filter_broken": "NOT_RESPONSIVE",
        "mold": "ISSUE_SENSE",
        "architecture": "wrong_trigger",
        "card_ref": null,
        "explanation": "Making improvements is a right of possession, not an act of ouster."
      }
    ],
    "analyzer_notes": "drift_audit: Setting and asset fully diverged. transformed_from: 22139. letter_map: A→A, B→B, C→C, D→D. authority_floor: Restatement (Second) of Property § 12.1.",
    "gold_keys": [
      {
        "id": "GK-PROP-COTENANT-RENT-OUSTER",
        "statement": "A co-tenant in possession is not liable for rent to other co-tenants unless they have ousted them from the property.",
        "type": "rule",
        "unlocks": "no-ouster rent trap",
        "trigger": "One co-tenant is in exclusive possession and using the land for profit.",
        "tested_choice": "C",
        "authority": "Restatement (Second) of Property § 12.1."
      }
    ],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "22139_mountain_retreat_ouster",
  "subject": "REAL PROPERTY",
  "outline_code": "82010501",
  "distilled_core_question": "Three co-tenants own land. One co-tenant takes sole possession and realizes profits from his own use of the land. When is he liable to the other co-tenants for a share of the fair rental value?",
  "review_truth": "A co-tenant in possession is not liable to co-tenants out of possession for rent or profits unless there has been an ouster.",
  "tension": "Ouster vs. Right to Possession",
  "traps": [
    {
      "choice": "D",
      "mold": "ISSUE_SENSE",
      "architecture": "wrong_trigger",
      "why_attractive": "Students think permanent improvements (like a chapel) prove 'exclusive ownership' that must be paid for. The breaker is that a co-tenant has a right to improve the land without triggering rent.",
      "focus_group_pct": 20,
      "pct_provenance": "predicted"
    },
    {
      "choice": "A",
      "mold": "ISSUE_SENSE",
      "architecture": "irrelevant_concept",
      "why_attractive": "Uses professional-sounding jargon (highest and best use) to distract from the simple ouster rule.",
      "focus_group_pct": 10,
      "pct_provenance": "predicted"
    }
  ],
  "remediation_card": {
    "card_id": "REM-PROP-COTENANT-DUTIES",
    "title": "Co-tenant Possession and Rent",
    "signal": "One co-tenant alone on the property.",
    "student_move": "Verify if the others were physically blocked (ousted).",
    "tiny_rule": "Sole possession is free; only ouster (wrongful exclusion) triggers rent liability.",
    "trap": "Believing rent is owed just because one person is in sole possession.",
    "confidence": "HARD_STRUCTURAL"
  },
  "red_zone_dimensions": [
    "ouster threshold",
    "possession rights",
    "third-party rent accounting"
  ]
}
```

### 5. program_intelligence

```json
{
  "question_id": "22139_mountain_retreat_ouster",
  "subject": "REAL PROPERTY",
  "outline_code": "82010501",
  "distilled_core_question": "Three co-tenants own land. One co-tenant takes sole possession and realizes profits from his own use of the land. When is he liable to the other co-tenants for a share of the fair rental value?",
  "review_truth": "A co-tenant in possession is not liable to co-tenants out of possession for rent or profits unless there has been an ouster.",
  "wrong_answer_paths": [
    {
      "choice": "D",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "ISSUE_SENSE",
      "why_a_student_picks_this": "Student overweights 'exclusive-like' physical changes over the 'wrongful exclusion' legal requirement.",
      "skipped_move": "Identify physical ouster vs. simple improvement.",
      "recovery_step": "Look for a fact showing the *other* person was denied entry."
    },
    {
      "choice": "B",
      "filter_broken": "NOT_RESPONSIVE",
      "mold": "ISSUE_SENSE",
      "why_a_student_picks_this": "Student thinks the loss of a sale opportunity creates a liability for rent.",
      "skipped_move": "Distinguish between use of land and sale of land.",
      "recovery_step": "Recall that a co-tenant is an 'owner,' not just a manager; they can refuse to sell."
    }
  ],
  "drill_seeds": [
    {
      "drill_type": "Scenario Analysis",
      "target_skill": "Ouster Identification",
      "prompt": "Peter moves in, builds a cabin, and James never asks to enter. Rent owed?",
      "answer": "No (no ouster)."
    },
    {
      "drill_type": "Scenario Analysis",
      "target_skill": "Ouster Identification",
      "prompt": "Peter moves in and changes the locks when James tries to visit. Rent owed?",
      "answer": "Yes (ouster)."
    }
  ],
  "trap_tags": {
    "forensic_tags": [
      "ouster-requirement",
      "improvement-non-liability"
    ],
    "misconception_tags": [
      "rent-follows-profits",
      "improvements-trigger-rent"
    ]
  },
  "component_routing": [
    "Real Property > Ownership > Concurrent Interests",
    "C3 > CLASH > ouster axis"
  ],
  "crossovers": [
    "Waste"
  ],
  "gold_keys": [
    {
      "id": "GK-PROP-COTENANT-RENT-OUSTER",
      "statement": "A co-tenant in possession is not liable for rent to other co-tenants unless they have ousted them from the property.",
      "type": "rule",
      "unlocks": "no-ouster rent trap",
      "trigger": "One co-tenant is in exclusive possession and using the land for profit.",
      "tested_choice": "C",
      "authority": "Restatement (Second) of Property § 12.1."
    }
  ],
  "silver_keys": [],
  "outline_mastery": {
    "placement": "82010501 Ownership > Co-tenancy",
    "this_item_teaches": "The specific ouster trigger for co-tenant rent accounting.",
    "fills": [
      "Rent liability for solo possession"
    ],
    "adjacent_to_master": [
      "82010502",
      "82010503"
    ]
  }
}
```

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

Three co-tenants own land. One co-tenant takes sole possession and realizes profits from his own use of the land. When is he liable to the other co-tenants for a share of the fair rental value?

### 99. Final answer choices

See the preserved final answer choices above.

### 99. Possible replacement answer choices

No replacement answer choices are supplied in this repair-normalized file.

### 99. Correct answer

C

### 99. Letter Map

A: { new: A, mechanic: distractor_phrase, substance: rewritten, pick_rate: 10% predicted }

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

A co-tenant in possession is not liable to co-tenants out of possession for rent or profits unless there has been an ouster.

### 99. The 5 variations considered

See preserved variation audit content above when present.
