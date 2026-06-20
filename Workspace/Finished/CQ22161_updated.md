---
qid: "22161"
transformed_from: "22161"
subject: "EVIDENCE"
topic: "UNKNOWN"
subtopic: "UNKNOWN"
outline_code: "31010400"
key: "UNKNOWN"
original_key: "UNKNOWN"
letter_map: "see Letter Map section"
dominant_trap: "UNKNOWN"
pick_rates: "UNKNOWN"
bank_validation_verdict: "UNKNOWN"
review_truth: "Review truth not available in source file."
---
# Block 1: Question YAML
```yaml
qid: "22161"
outline_code: "31010400"
subject: "EVIDENCE"
concept_primary: "Witnesses"
concept_secondary: "Lay Opinion Testimony"
difficulty: "Core"
legal_posture: "Criminal Trial"
governing_law: "FRE 701"
christian_theme: "Church Van / Security Volunteer"
```

# Block 2: 17-section Case Study
1. **Source QID:** 22161
2. **Legal Subject:** Evidence
3. **Black-Letter Rule:** FRE 701 (Lay witnesses may testify to opinions rationally based on perception, such as vehicle speed).
4. **Original Fact Pattern:** Police officer observes reckless driving and is asked for speed opinion; defendant objects.
5. **Original Call:** "Should the objection be sustained?"
6. **CUT (Substantive Change):** Police officer -> retired office manager / church security volunteer. Reckless driving on highway -> mission van speeding in a neighborhood.
7. **CLASH (Divergent Conflict):** The defense's challenge to a lay witness's "non-expert" estimation of speed versus the legal allowance for such perception-based testimony.
8. **CALL (Variant Prompt):** "Should the objection be sustained?"
9. **Divergence Strategy:** Humanize the witness and relocate the scene to a residential mission/church context, emphasizing the "ordinary person" aspect of the testimony.
10. **Choice A Logic (Distractor):** Baits with the "expert" requirement, which is the most common student error in lay opinion questions.
11. **Choice B Logic (Distractor):** Baits with "foundation," correctly noting it's required but incorrectly implying it wasn't met.
12. **Choice C Logic (Correct):** Directly identifies that lay witnesses can testify to speed based on perception under FRE 701.
13. **Choice D Logic (Distractor):** Baits with a "church safety expert" status, which is both unnecessary and legally unsupported.
14. **Original Pick Rates:** D (Correct) was the original key, but no percentages were supplied in the source file.
15. **Mapped Pick Rates (Inherited/Predicted):** C: 75% (Predicted), A: 15% (Predicted), B: 7% (Predicted), D: 3% (Predicted).
16. **Dominant Trap Identification:** Choice (A).
17. **Review Truth Validation:** Matches the standard application of FRE 701 for speed testimony.

# Block 3: c3_annotation
```json
{
  "c3_annotation": {
    "qid": "22161",
    "deciding_phase": "CUT",
    "governing_law_type": "RULE",
    "confidence": "HARD_STRUCTURAL",
    "analyzer_notes": "drift_audit: The transformation from a police officer to a retired church volunteer reinforces the 'lay' nature of the testimony, which is the point of the question. transformed_from: 22161. letter_map: {A: A, B: B, C: D, D: C}",
    "gold_keys": [
      {
        "key": "FRE 701",
        "type": "rule",
        "usage": "The rule allowing lay opinions based on rational perception."
      },
      {
        "key": "Speed of vehicle",
        "type": "phrase",
        "usage": "A classic category of admissible lay opinion."
      }
    ],
    "silver_keys": [
      {
        "key": "personal perception",
        "type": "call_focus",
        "usage": "The foundational requirement for the witness's testimony."
      },
      {
        "key": "expert trap",
        "type": "trap_spotting",
        "usage": "Identifying that expert status is not required for speed estimation."
      }
    ],
    "stem": {
      "text": "A church van driver was charged with reckless driving and speeding through a residential neighborhood while transporting students back from a youth retreat. At trial, the prosecution called a witness who serves on the church's volunteer safety and security team. The witness testified that she was a retired office manager, that she lived on the street where the incident occurred, and that for the past twenty years she had driven that same route daily and had extensive experience observing the flow and speed of neighborhood traffic. She stated that she was sitting on her porch when she saw the mission van drive by at what appeared to be an excessive rate of speed. When asked by the prosecutor whether she formed an opinion of the van's speed at that time, she replied that she had. When the prosecutor asked her to state that opinion, the driver's attorney objected.",
      "call": "Should the objection be sustained?"
    },
    "choices": [
      {
        "label": "A",
        "text": "Yes, because the witness was not qualified as an expert in traffic reconstruction or vehicle speed estimation.",
        "mold_code": "EAR_OVERCLAIM",
        "filter": "NOT_TRUE",
        "bait_architecture": "bait_doctrine",
        "architecture_tags": [
          "overbroad_rule",
          "bar_exam_bait"
        ],
        "method_class": "heuristic_structural"
      },
      {
        "label": "B",
        "text": "Yes, because a proper foundation for the witness's expertise was not established by the prosecution.",
        "mold_code": "ISSUE_SENSE",
        "filter": "NOT_RESPONSIVE",
        "architecture_tags": [
          "fact_not_in_evidence",
          "wrong_standard"
        ],
        "method_class": "heuristic_structural"
      },
      {
        "label": "C",
        "text": "No, because a lay witness may testify to their opinion of a vehicle's speed if it is based on their own perception.",
        "is_correct": true,
        "method_class": "hard_structural",
        "architecture_tags": [
          "correct_answer"
        ]
      },
      {
        "label": "D",
        "text": "No, because members of a church security team are automatically qualified as experts on safety matters including vehicle speed.",
        "mold_code": "EAR_FALSITY",
        "filter": "NOT_TRUE",
        "architecture_tags": [
          "fabricated_rule",
          "sounds_lawyerly"
        ],
        "method_class": "heuristic_structural"
      }
    ]
  }
}
```

# Block 4: program_elements
```json
{
  "program_elements": {
    "qid": "22161",
    "official_stats": {
      "credited_answer": "C",
      "official_key": "D",
      "pick_rates": [
        {
          "label": "A",
          "rate": 15,
          "type": "predicted"
        },
        {
          "label": "B",
          "rate": 7,
          "type": "predicted"
        },
        {
          "label": "C",
          "rate": 75,
          "type": "predicted"
        },
        {
          "label": "D",
          "rate": 3,
          "type": "predicted"
        }
      ],
      "dominant_trap": "A"
    },
    "feedback": {
      "right_answer": "C is correct. Under FRE 701, lay witnesses may offer opinion testimony if it is rationally based on their own perception and helpful to the jury. Estimates of speed, distance, weight, and intoxication are classic examples of admissible lay opinions. Since the witness personally observed the van and had the experience to judge traffic speed, her testimony is admissible.",
      "wrong_answers": {
        "A": "Incorrect. This is the dominant trap. You do NOT need to be an expert to testify about the speed of a car. This is considered part of the common experience of ordinary people.",
        "B": "Incorrect. A foundation WAS laid. The prosecution showed she observed the van and has 20 years of experience driving and living on that street. No 'expert' foundation is required for lay opinion.",
        "D": "Incorrect. Church security volunteers are not automatically 'experts' in the legal sense. More importantly, expert status is entirely unnecessary here because the testimony qualifies as a lay opinion."
      }
    },
    "student_script": "Don't fall for the 'expert' trap! If a witness saw the car and has a brain, they can usually give an opinion on how fast it was going. It's one of the few areas where the law trusts common sense and everyday perception over specialized training."
  }
}
```

# Block 5: program_intelligence
```json
{
  "program_intelligence": {
    "qid": "22161",
    "outline_code": "31010400",
    "subject": "EVIDENCE",
    "concept_tags": [
      "Lay Opinion",
      "FRE 701",
      "Vehicle Speed",
      "Perception-based Testimony",
      "Witness Qualification"
    ],
    "gold_keys": [
      "FRE 701",
      "Speed of vehicle"
    ],
    "silver_keys": [
      "personal perception",
      "expert trap"
    ],
    "component_routing": [
      {
        "destination_key": "dashboard_summary",
        "component_tags": [
          "opinion_testimony",
          "lay_vs_expert"
        ]
      },
      {
        "destination_key": "trap_forensics",
        "trap_tags": [
          "expert_requirement_myth",
          "common_knowledge_exception"
        ]
      }
    ],
    "difficulty_score": 0.3,
    "confidence_level": "HARD_STRUCTURAL"
  }
}
```

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

Distilled core question not available in source file.

### 99. Final answer choices

See the preserved final answer choices above.

### 99. Possible replacement answer choices

No replacement answer choices are supplied in this repair-normalized file.

### 99. Correct answer

UNKNOWN

### 99. Letter Map

see Letter Map section

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

Review truth not available in source file.

### 99. The 5 variations considered

See preserved variation audit content above when present.
