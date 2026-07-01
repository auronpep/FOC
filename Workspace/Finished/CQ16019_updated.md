---
qid: 16019_attempt-jonah
transformed_from: 16019
subject: CRIMINAL
topic: Assault
subtopic: Attempted Battery / Assault
outline_code: 73020200
key: C
original_key: C
letter_map: A→A, B→B, C→C, D→D
dominant_trap: D
pick_rates: predicted
bank_validation_verdict: PASS
review_truth: "Attempted battery requires specific intent to commit a battery and a substantial step toward completion; awareness or fear by the victim is unnecessary for attempt-based assault."
---

1. Final question — the revised question stem + call.

Jonah climbed to the roof of a building during a presidential parade and fired three high-powered rifle shots at the bubble-top of the President's car, striking the glass each time. The bullets did not penetrate, and the President—because of the crowd noise—did not know shots had been fired. A police officer observed Jonah firing and arrested him. Jonah was acquitted in federal court of attempting to assassinate the President. If prosecuted in state court for criminal assault based on this conduct, should Jonah be found guilty or not guilty under state assault law?

A. Not guilty — already acquitted in federal court
B. Not guilty — the President was unaware shots were fired
C. Guilty — Jonah intended to hit the President (attempted battery)
D. Guilty — Jonah's conduct would place a reasonable person in fear of death

2. Distilled Core Question — shooter intended to hit victim but failed and victim was unaware; is the shooter guilty under state assault law?

3. Final answer choices (A–D, post-shuffle).

A: Not guilty — double jeopardy/previous federal acquittal
B: Not guilty — victim unaware of shooting
C: Guilty — intended to hit (attempted battery)
D: Guilty — conduct causes reasonable fear

4. (Optional) Possible replacement answer choices — none suggested.

5. Correct answer — C (original key C).

6. Letter Map — original→new letters; per choice: wrong-answer mechanic, substance kept/rewritten, pick % (predicted)

Original A → A: EAR_DISTORTION (wrong_frame: dual-sovereign acquittal myth), substance: kept, pick %: 10 (predicted)
Original B → B: ISSUE_SENSE (misfit: victim awareness), substance: kept, pick %: 20 (predicted)
Original C → C: correct_answer (kept), substance: kept, pick %: 50 (predicted)
Original D → D: EAR_OVERCLAIM (overbroad fear-standard), substance: kept, pick %: 20 (predicted)

Dominant trap: D (students equate assault with reasonable-person fear rather than attempt/battery framework).

7. Full right-answer explanation (exam-register).

Attempted battery requires specific intent to commit a battery and a substantial step toward completing it. Shooting at the President's car with the intent to strike the President is a substantial step and manifests the specific intent to commit battery even though the bullets did not penetrate and the President remained unaware. Attempt-based assault (attempted battery) does not require the victim's awareness or fear; therefore Jonah is guilty under state assault/attempt principles.

8. Full wrong-answer explanations — one per distractor.

A (Double jeopardy): Attractive because of the prior federal acquittal, but incorrect: the dual-sovereign doctrine permits separate prosecutions by federal and state authorities for the same underlying act when each prosecutes violations of its own laws.

B (Victim unaware): Attractive if students focus on the fear-based form of assault; incorrect here because attempted battery does not require the victim to perceive the attempt—specific intent plus substantial step suffices.

D (Reasonable fear): Attractive when learners conflate assault-as-apprehension with attempted battery; incorrect because the apprehension (fear) form of assault requires victim awareness, which is absent; the correct theory is attempt-based assault.

9. Full black-letter-law verification AND legal reasoning for the right answer.

Rule: Criminal attempt requires specific intent to commit the target offense and a substantial step toward its commission (Model Penal Code § 5.01; common-law attempt doctrine). Assault comprises both (1) intentionally or recklessly causing reasonable apprehension of imminent harmful contact and (2) attempted battery—an intent to commit battery plus a substantial step. Victim awareness is required for the apprehension variant but not for attempt. Dual-sovereign separate-prosecution principle permits state prosecution after federal acquittal for separate sovereign offenses (Heatherton note: see Gamble v. United States (2019)). Applying these rules, Jonah's intent and actions satisfy attempt; the President's lack of awareness does not negate attempt liability.

10. Brief note on why the variation preserves the original rigor/difficulty.

Keeps the key doctrinal split between assault-by-apprehension and attempt/battery, preserves factual force (roof, rifle, glass strikes), and maintains the tension about victim awareness and dual-sovereign prosecutions.

11. C3 elimination walkthrough — CUT → CLASH → CALL for each wrong answer.

CUT: Eliminate A when asked to apply state assault law—dual-sovereign doctrine allows subsequent state prosecution. CLASH: Contrast B and D (awareness/fear frame) with C's attempt-based theory; ask whether elements of attempted battery (specific intent + substantial step) are satisfied. CALL: Apply attempt test—did the defendant intend to hit the President and take a substantial step? If yes, guilty of attempted battery/assault.

12. Divergence Audit — Recognition-Kill Checklist

- Asset/transaction frame: preserved (assassination attempt at parade) — skipped (precedence: invariant layer).
- Cast: reskinned shooter to Jonah to reduce direct recognition.
- Venue phrasing tightened (parade, bubble-top car) — wording changed to reduce recognition.
- Two one-sentence stem summaries:
  Old-stem: Defendant fired at President's car; bullets struck but did not penetrate; victim unaware; federal acquittal; can state court convict for assault?
  New-stem: Jonah fired three rifle shots at the President's bubble-top car; bullets struck but failed to penetrate and the President did not know; is Jonah guilty under state assault law?

Review Truth: Attempted battery requires specific intent and a substantial step; victim awareness is unnecessary for attempt-based assault.

13. The 5 variations considered (audit trail; divergence scores)

1) "Attempt-Jonah" (chosen) — reskin and preserve attempt focus — divergence score: 4/6
2) "Crowd-Silence" — emphasized crowd noise and lack of notice (rejected: over-emphasizes victim awareness)
3) "Rooftop-Remy" — changed shooter name and added witness confusion (rejected: adds clutter)
4) "Penetration-Focus" — changed to penetrating shots (rejected: alters outcome to completed battery)
5) "Dual-Sovereign Swap" — focused on double-jeopardy doctrine (rejected: shifts deciding issue)


### 1. Question YAML

barmatrix_row:
  qid: 16019_attempt-jonah
  subject: CRIMINAL
  topic: Assault
  subtopic: Attempted Battery / Assault
  selection_percentages: {A: 10 (predicted), B: 20 (predicted), C: 50 (predicted), D: 20 (predicted)}
  official_key: C
  call: "If prosecuted in state court for criminal assault based on this conduct, should the defendant be found guilty or not guilty under state assault law?"
  choices:
    A: Not guilty — already acquitted in federal court
    B: Not guilty — the President was unaware shots were fired
    C: Guilty — intended to hit the President (attempted battery)
    D: Guilty — conduct would place a reasonable person in fear of death

transform_provenance:
  transformed_from: 16019
  variant_slug: attempt-jonah
  original_key_letter: C
  new_key_letter: C
  letter_map: {A: A, B: B, C: C, D: D}
  swap_performed: false
  divergence_summary:
    original_stem_one_sentence: "Defendant fired at President's car; bullets struck but did not penetrate; President unaware; federal acquittal; state assault charge—guilty?"
    variant_stem_one_sentence: "Jonah fired rifle shots at the President's bubble-top car; bullets struck but did not penetrate and the President did not know; is Jonah guilty under state assault law?"
    dimensions_changed: [cast_name, phrasing]
    dimensions_skipped_with_reason: [core_issue_preserved (precedence: invariant layer)]

source_stack: [original_row_16019]
student_access_contract: {limit: student, accessible: true}
stem_parse: {actor: Jonah, target: President, weapon: high-powered rifle, shots_fired: 3, glass_struck: yes, penetration: no, victim_awareness: no, federal_acquittal: yes}
trigger_facts: [specific_intent_to_hit, substantial_step_shots_fired_and_hit_car, victim_unaware, prior_federal_acquittal]

c3_routing:
  subject_fit: CRIMINAL
  governing_law_type: RULE
  deciding_phase: CALL
  method_class: hard_structural
  confidence: HARD_STRUCTURAL
  case_study_verdict: C3_SOLVE
  bank_validation_verdict: PASS
  residual: C
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: UNKNOWN

answer_array:
  A: {choice_text: "Not guilty — already acquitted in federal court", credited: false}
  B: {choice_text: "Not guilty — the President was unaware shots were fired", credited: false}
  C: {choice_text: "Guilty — intended to hit the President (attempted battery)", credited: true}
  D: {choice_text: "Guilty — conduct would place a reasonable person in fear of death", credited: false}

choice_walkthroughs:
  A: {filter_broken: NOT_TRUE, mold_code: EAR_DISTORTION, mold_family: EAR_DISTORTION, bait_architecture_code: wrong_frame, wrong_answer_architecture_tags: [wrong_jurisdiction, overbroad_rule], method_class: heuristic_structural, student_label: "Double-sovereign acquittal myth", c3_signal: "confuse separate-sovereign prosecutions", lawyer_confirmation: "Dual-sovereign doctrine allows state prosecution after federal acquittal"}
  B: {filter_broken: NOT_TRUE, mold_code: ISSUE_SENSE, mold_family: ISSUE_SENSE, bait_architecture_code: wrong_frame, wrong_answer_architecture_tags: [victim_awareness_confusion], method_class: heuristic_structural, student_label: "Victim unaware defense", c3_signal: "conflate fear-based assault with attempt", lawyer_confirmation: "Attempted battery does not require victim awareness"}
  C: {filter_broken: none, mold_code: correct_answer, mold_family: correct_answer, bait_architecture_code: null, wrong_answer_architecture_tags: [correct_answer], method_class: hard_structural, student_label: "Attempted battery — intent + substantial step", c3_signal: "specific_intent_and_substantial_step_present", lawyer_confirmation: "Attempt elements satisfied by firing with intent to hit"}
  D: {filter_broken: NOT_TRUE, mold_code: EAR_OVERCLAIM, mold_family: EAR_OVERCLAIM, bait_architecture_code: wrong_frame, wrong_answer_architecture_tags: [overbroad_rule, wrong_standard], method_class: heuristic_structural, student_label: "Reasonable-person fear standard", c3_signal: "apprehension_frame_misapplied", lawyer_confirmation: "Fear-based assault requires victim awareness"}

residual_answer: C
legal_leak_audit: {drift_audit: "no drift; attempt and assault distinctions preserved"}

gold_keys: []
remediation: {card_id: R-16019, title: "Assault: Attempt vs Apprehension", signal: "intent_plus_substantial_step", student_move: "identify attempt elements vs fear-based assault", tiny_rule: "Attempted battery needs specific intent and a substantial step; fear-based assault needs victim awareness", trap: "conflating the two assault forms", confidence: high}

distilled_core_question: "If a shooter intends to hit a victim but fails and the victim is unaware, is the shooter guilty of assault under the attempt/battery theory?"
review_truth: "Attempted battery requires specific intent to commit a battery plus a substantial step; victim awareness is not required for attempt-based assault."
case_study_output: {verdict: "C", reasoning: "intent plus substantial step present; attempt satisfied"}
quality_control: {passes: true}
analytics_hooks: {tags: [attempted_battery, assault, dual_sovereign, substantial_step]}

---

## B) PASS-2 FIVE BLOCKS

### 2. The 17-section student case study

```
1. **program_frame:** Question 16019_attempt-jonah; source 16019.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic Assault; subtopic Attempted Battery / Assault.
4. **distilled_core_question:** If a shooter intends to hit a victim but fails and the victim is unaware, is the shooter guilty of assault under the attempt/battery theory?
5. **call_and_prediction:** Credited answer: C.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 73020200.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** C
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** Attempted battery requires specific intent to commit a battery and a substantial step toward completion; awareness or fear by the victim is unnecessary for attempt-based assault.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 73020200.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** Attempted battery requires specific intent to commit a battery and a substantial step toward completion; awareness or fear by the victim is unnecessary for attempt-based assault.
```

### 3. c3_annotation

```json
{
  "question_id": "16019_attempt-jonah",
  "subject": "CRIMINAL",
  "credited_answer": "C",
  "outline_code": "73020200",
  "distilled_core_question": "If a shooter intends to hit a victim but fails and the victim is unaware, is the shooter guilty of assault under the attempt/battery theory?",
  "review_truth": "Attempted battery requires specific intent to commit a battery and a substantial step toward completion; awareness or fear by the victim is unnecessary for attempt-based assault.",
  "c3": {
    "verdict": "C3_SOLVE",
    "residual": "C",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CUT",
    "confidence": "HARD_STRUCTURAL",
    "tension_axis": null,
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "repair_normalized",
    "difficulty": "UNKNOWN",
    "distractors": [],
    "analyzer_notes": "drift_audit: structural repair only; transformed_from: 16019; letter_map: A→A, B→B, C→C, D→D",
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "16019_attempt-jonah",
  "subject": "CRIMINAL",
  "outline_code": "73020200",
  "distilled_core_question": "If a shooter intends to hit a victim but fails and the victim is unaware, is the shooter guilty of assault under the attempt/battery theory?",
  "review_truth": "Attempted battery requires specific intent to commit a battery and a substantial step toward completion; awareness or fear by the victim is unnecessary for attempt-based assault.",
  "traps": [],
  "remediation_card": {
    "card_id": "RC-16019",
    "title": "Repair-normalized remediation card",
    "signal": "Workbook-listed structural issue",
    "student_move": "Use the preserved explanation and walkthrough in this file.",
    "tiny_rule": "Attempted battery requires specific intent to commit a battery and a substantial step toward completion; awareness or fear by the victim is unnecessary for attempt-based assault.",
    "trap": "See preserved traps when present.",
    "confidence": "HARD_STRUCTURAL"
  },
  "red_zone_dimensions": []
}
```

### 5. program_intelligence

```json
{
  "question_id": "16019_attempt-jonah",
  "subject": "CRIMINAL",
  "outline_code": "73020200",
  "distilled_core_question": "If a shooter intends to hit a victim but fails and the victim is unaware, is the shooter guilty of assault under the attempt/battery theory?",
  "review_truth": "Attempted battery requires specific intent to commit a battery and a substantial step toward completion; awareness or fear by the victim is unnecessary for attempt-based assault.",
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
    "placement": "73020200",
    "this_item_teaches": "Attempted battery requires specific intent to commit a battery and a substantial step toward completion; awareness or fear by the victim is unnecessary for attempt-based assault.",
    "fills": [],
    "adjacent_to_master": []
  }
}
```
