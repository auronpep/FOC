---
qid: "17420"
transformed_from: "17420"
subject: "EVIDENCE"
topic: "UNKNOWN"
subtopic: "UNKNOWN"
outline_code: "31010103"
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
qid: "17420"
outline_code: "31010103"
subject: "EVIDENCE"
concept_primary: "Presumptions and Inferences"
concept_secondary: "Mandatory vs. Permissive Instructions"
difficulty: "Core"
legal_posture: "Criminal Prosecution"
governing_law: "Constitutional Due Process (Sandstrom)"
christian_theme: "Stolen Pulpit Bible / Mission Theft"
```

# Block 2: 17-section Case Study
1. **Source QID:** 17420
2. **Legal Subject:** Evidence (Criminal)
3. **Black-Letter Rule:** Mandatory presumptions on elements of a crime are unconstitutional; permissive inferences are allowed.
4. **Original Fact Pattern:** Gideon charged with possessing stolen seal; hid it; judge wants to instruct jury they *must* find knowledge if they find hiding.
5. **Original Call:** "Which ruling is correct?" (regarding the objection to the instruction)
6. **CUT (Substantive Change):** Stolen "seal" transformed into a "19th-century pulpit Bible" stolen from a mission. Gideon renamed Elias.
7. **CLASH (Divergent Conflict):** The tension between Elias's suspicious behavior (hiding the Bible) and the prosecution's constitutional burden to prove knowledge without the aid of mandatory instructions.
8. **CALL (Variant Prompt):** "Which of the following rulings is correct?" (regarding Elias's counsel's objection).
9. **Divergence Strategy:** Heighten the emotional/ethical stakes by using a sacred object (pulpit Bible) while maintaining the precise constitutional error in the instruction.
10. **Choice A Logic (Correct):** Correctly applies the *Sandstrom* rule: strike the mandatory part, keep the permissive part.
11. **Choice B Logic (Distractor):** Baits with the fact that the evidence is relevant ("proof channel"), which is true but doesn't justify the instruction.
12. **Choice C Logic (Distractor):** Baits with "collateral matter" phrasing, incorrectly suggesting the element isn't important.
13. **Choice D Logic (Distractor):** Baits with a misapplication of the "prior bad acts" (FRE 404(b)) character evidence rule.
14. **Original Pick Rates:** Not explicitly provided in percentages for this specific file, but the correct answer is C (original).
15. **Mapped Pick Rates (Inherited/Predicted):** A: 70% (Predicted), B: 15% (Predicted), C: 5% (Predicted), D: 10% (Predicted). (Seeded as no rates were supplied).
16. **Dominant Trap Identification:** Choice (B) — attractive because it correctly identifies the evidence's relevance but misses the procedural error.
17. **Review Truth Validation:** Matches the *Sandstrom* doctrine perfectly.

# Block 3: c3_annotation
```json
{
  "c3_annotation": {
    "qid": "17420",
    "deciding_phase": "CUT",
    "governing_law_type": "RULE",
    "confidence": "HARD_STRUCTURAL",
    "analyzer_notes": "drift_audit: The Christian context (stolen Bible) successfully diverges from the generic stolen seal. The legal pivot (mandatory vs permissive instructions) is preserved exactly. transformed_from: 17420. letter_map: {A: B, B: C, C: A, D: D}",
    "gold_keys": [
      {
        "key": "mandatory presumption",
        "type": "distinction",
        "usage": "The unconstitutional element of the judge's proposed instruction."
      },
      {
        "key": "permissive inference",
        "type": "distinction",
        "usage": "The valid portion of the instruction that may be allowed."
      }
    ],
    "silver_keys": [
      {
        "key": "criminal case",
        "type": "call_focus",
        "usage": "Triggers stricter due process limits on instructions than civil cases."
      },
      {
        "key": "Sandstrom v. Montana",
        "type": "rule",
        "usage": "Governing constitutional authority for the prohibition on mandatory presumptions."
      }
    ],
    "stem": {
      "text": "Elias, a former volunteer at a historic downtown mission, is charged in federal court with knowingly possessing a stolen 19th-century pulpit Bible belonging to the mission. At trial, the prosecution offers evidence that when mission directors approached Elias in the parking lot, he quickly shoved the Bible into a bag and covered it with his choir robe. At the close of evidence, the judge proposes the following jury instruction: 'If you find that Elias intentionally hid the Bible, you may consider that as evidence of a consciousness of guilt. Furthermore, if you find that he hid the Bible, you must find that Elias knew the Bible was stolen.' Elias's counsel objects to the proposed instruction.",
      "call": "Which of the following rulings is correct?"
    },
    "choices": [
      {
        "label": "A",
        "text": "Sustain the objection as to the mandatory 'must-find' language, but allow a properly framed permissive inference instruction.",
        "is_correct": true,
        "method_class": "hard_structural",
        "architecture_tags": [
          "correct_answer"
        ]
      },
      {
        "label": "B",
        "text": "Overrule the objection because the act of hiding is a recognized 'proof channel' for establishing the defendant's state of mind.",
        "mold_code": "ISSUE_SENSE",
        "filter": "NOT_RESPONSIVE",
        "bait_architecture": "bait_doctrine",
        "architecture_tags": [
          "legally_true_but_irrelevant",
          "attractive_wrong_answer",
          "sounds_lawyerly"
        ],
        "method_class": "heuristic_structural"
      },
      {
        "label": "C",
        "text": "Overrule the objection because the defendant's purpose in hiding the property is a collateral matter rather than a direct element of the offense.",
        "mold_code": "EAR_FALSITY",
        "filter": "NOT_TRUE",
        "architecture_tags": [
          "misstated_rule",
          "wrong_element"
        ],
        "method_class": "heuristic_structural"
      },
      {
        "label": "D",
        "text": "Sustain the objection in its entirety because evidence of hiding is inadmissible character evidence under the 'prior bad acts' rule.",
        "mold_code": "ISSUE_SENSE",
        "filter": "NOT_RESPONSIVE",
        "bait_architecture": "bait_doctrine",
        "architecture_tags": [
          "misfit_doctrine",
          "bar_exam_bait"
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
    "qid": "17420",
    "official_stats": {
      "credited_answer": "A",
      "official_key": "C",
      "pick_rates": [
        {
          "label": "A",
          "rate": 70,
          "type": "predicted"
        },
        {
          "label": "B",
          "rate": 15,
          "type": "predicted"
        },
        {
          "label": "C",
          "rate": 5,
          "type": "predicted"
        },
        {
          "label": "D",
          "rate": 10,
          "type": "predicted"
        }
      ],
      "dominant_trap": "B"
    },
    "feedback": {
      "right_answer": "A is correct. In a criminal case, the Due Process Clause prohibits a judge from instructing the jury that it 'must' find an element of the crime (like knowledge or intent) based on a predicate fact. This is an unconstitutional mandatory presumption because it shifts the burden of proof to the defendant. However, a 'permissive' instruction—telling the jury they 'may' infer knowledge from hiding—is generally acceptable. Thus, the judge should strike the mandatory sentence but can keep the permissive one.",
      "wrong_answers": {
        "B": "Incorrect. This is the dominant trap. While the evidence of hiding is a valid 'proof channel' (relevant and admissible), that doesn't save the instruction. Relevance allows the jury to hear the evidence, but it doesn't allow the judge to force a conclusion.",
        "C": "Incorrect. Knowledge is not collateral; it is a core element of the crime of possessing stolen property. Mandatory instructions on elements are always a constitutional concern.",
        "D": "Incorrect. This is not 404(b) character evidence. Hiding the specific object you are accused of stealing is direct circumstantial evidence of your guilt in this case, not evidence of a general character trait or a different bad act."
      }
    },
    "student_script": "The key here is the word 'MUST.' In a criminal trial, the government has to prove every single element beyond a reasonable doubt. If a judge tells the jury they 'must' find that the defendant knew something just because he hid it, the judge is basically doing the government's job for them. That's a huge Due Process violation. Permissive ('may') is fine; mandatory ('must') is a no-go."
  }
}
```

# Block 5: program_intelligence
```json
{
  "program_intelligence": {
    "qid": "17420",
    "outline_code": "31010103",
    "subject": "EVIDENCE",
    "concept_tags": [
      "Mandatory Presumptions",
      "Permissive Inferences",
      "Criminal Due Process",
      "Burden of Proof",
      "Jury Instructions"
    ],
    "gold_keys": [
      "mandatory presumption",
      "permissive inference"
    ],
    "silver_keys": [
      "criminal case",
      "Sandstrom v. Montana"
    ],
    "component_routing": [
      {
        "destination_key": "dashboard_summary",
        "component_tags": [
          "constitutional_criminal_evidence",
          "burden_shifting"
        ]
      },
      {
        "destination_key": "trap_forensics",
        "trap_tags": [
          "evidence_vs_instruction",
          "relevance_heuristic"
        ]
      }
    ],
    "difficulty_score": 0.45,
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
