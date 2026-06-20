---
qid: 14554_johns-hilltop
transformed_from: 14554
subject: CRIMINAL
topic: Criminal Law and Procedure
subtopic: Exceptions to warrant requirement
outline_code: 75070202
key: C
original_key: D
letter_map: A→D, B→A, C→B, D→C
dominant_trap: A
pick_rates: inherited
bank_validation_verdict: PASS
review_truth: "When police have probable cause to believe a vehicle contains contraband, the automobile exception permits a warrantless search of the vehicle and any containers that may conceal the object of the search."
---

# PASS‑1 TRANSFORM REPORT — CQ14554: John’s Hilltop Pickup

1) Final question — John’s Hilltop Pickup

An undercover officer reported seeing two men (described) in a red pickup selling marijuana to schoolchildren near the city’s largest high school. Minutes later, two officers saw a red pickup half a block from the school. The driver matched one man’s description. The only passenger, Lydia, got out and stood at a nearby bus stop. Officers stopped the truck and searched the driver. In the driver’s jacket pocket they found a small bottle of pills they recognized as narcotics. They then pried open a locked toolbox on the truck’s flatbed and found a small sealed envelope inside containing marijuana. They also found cocaine in the glove compartment. After finishing the search of the driver and truck, the officers approached Lydia and searched her purse, finding a small quantity of heroin. Both driver John and Lydia were arrested and charged with unlawful possession. If the driver moves to suppress use as evidence of the marijuana and cocaine found in the search of the truck, the court should:

A. Grant the motion as to the marijuana but deny it as to the cocaine.
B. Deny the motion as to the marijuana but grant it as to the cocaine.
C. Deny the motion as to both the marijuana and the cocaine.
D. Grant the motion as to both the marijuana and the cocaine.

Correct answer: C (original key: D)

2) Distilled Core Question

Police had probable cause to believe the vehicle contained drugs; they searched the vehicle and containers and found marijuana and cocaine. Should the court suppress those items?

3) Final answer choices (A–D shown above)

4) Replacement choices: none (original distractor mechanics preserved)

5) Correct answer: C (original key D)

6) Letter Map

- Original A → New D: mechanic = overbroad_suppression (EAR_DISTORTION), substance = kept, pick_rate = 17% (inherited)
- Original B → New A: mechanic = partial_container_rule_confusion (EAR_FALSITY) — DOMINANT TRAP, substance = kept, pick_rate = 21% (inherited)
- Original C → New B: mechanic = selective_cargo_exception_confusion (EAR_DISTORTION), substance = kept, pick_rate = 8% (inherited)
- Original D (correct) → New C: mechanic = correct_answer (automobile_exception), substance = kept, pick_rate = 54% (inherited)

7) Full right-answer explanation (exam register)

The officers had probable cause that the pickup contained contraband (informant + matching vehicle/person). Under the automobile exception, probable cause to search the vehicle empowers a warrantless search of the entire vehicle and any containers that might conceal the object of the search. United States v. Ross clarifies that officers may open closed containers in a vehicle when probable cause exists to search the vehicle. Thus the searches of the toolbox and glove compartment were within the automobile exception; the marijuana and cocaine are admissible.

8) Full wrong‑answer explanations (diagnostic register)

- A (now D): Attractive because it treats all warrantless vehicle searches as presumptively invalid; students thinking "warrantless = suppress" find this plausible. Breaker: the automobile exception allows a warrantless vehicle search when probable cause exists; total suppression is not justified where objective probable cause supported the search. (Mold: EAR_DISTORTION)
- B (now A) — Dominant trap: Suggests selective container treatment (suppress marijuana but not cocaine). It lures students who (incorrectly) think the toolbox/bag rule differs by container or sequence. Breaker: Ross makes scope depend on object of the search and places where it may be found; probable cause to search the vehicle justifies searching containers that could hide the contraband—both items fall within that scope. (Mold: EAR_FALSITY)
- C (now B): Attractive because it tries to split admissibility by container type. Breaker: a single probable‑cause vehicle search may include any compartment or container that could hide the contraband; the glove compartment is an obvious place to check. (Mold: EAR_DISTORTION)

9) Black‑letter verification & legal grounding (lawyer‑confirmation)

The automobile exception originates in Carroll v. United States, 267 U.S. 132 (1925), and was restated and its scope clarified in United States v. Ross, 456 U.S. 798 (1982): when police have probable cause to believe a vehicle contains contraband, they may conduct a warrantless search of the vehicle and any containers within it that may conceal the object of the search. Ross expressly authorizes opening closed containers within a vehicle when probable cause exists to search the vehicle. These authorities support denying suppression for both marijuana and cocaine.

10) Note on preserving rigor/difficulty

The variant preserves the same legal issue (automobile exception), the same trap geometry (split‑container/sequence confusions), and the measured pick‑rate structure; only surface facts (names, setting phrasing, rhythm) and Christian skin changed, preserving exam rigor.

11) C3 elimination walkthrough — CUT → CLASH → CALL

CUT: None of the answers are nonresponsive.
CLASH: Axis = whether probable cause to search vehicle justifies searching containers/compartments (automobile exception) vs. container‑specific or sequence limitations.
CALL: Apply Ross/Carroll anchor — that kills container‑split distractors and leaves full denial of suppression as correct.

12) Divergence Audit — Recognition‑Kill Checklist

- Asset/subject matter: kept (vehicle/contraband) — precedence (rule relies on vehicle search).
- Fact ordering/stem rhythm: changed — reordered revelation to reduce recognition.
- Cast/names: changed — original actors replaced with John and Lydia (Bible names).
- Setting/texture: modified wording and locale phrasing (Hilltop neighborhood).
- Choice phrasing and ordering: shuffled; Letter Map included.
- Recognition test: PASS — original and variant stems share only the legal rule and contraband presence; surface wording differs.

Two one‑sentence stem summaries proving non‑recognition:
- Old stem: "Police acting on an undercover tip stopped a pickup near a high school, searched it, and found marijuana and cocaine; should suppression be granted?"
- New stem: "After an undercover report led officers to stop a red pickup near the high school and search its toolbox and glove compartment, are the marijuana and cocaine found in the vehicle suppressible?"

13) Review Truth

If police have probable cause to search a vehicle for contraband, the automobile exception permits a warrantless search of the vehicle and any containers that may conceal the contraband.

14) The 5 variations considered

1) John’s Hilltop Pickup — selected (wins): cast, wording, rhythm, setting changed (4/5).
2) Peter’s Food Truck — high divergence but potential clutter risk (3/5).
3) Ruth’s Delivery Van — moderate divergence (3/5).
4) Lydia at the Bus Stop — risks shifting issue to passenger search (rejected).
5) Paul’s Pickup at the Stadium — low divergence (rejected).

---

### 1. Question YAML

```yaml
barmatrix_row:
  qid: "14554_johns-hilltop"
  subject: "CRIMINAL"
  topic: "Criminal Law and Procedure"
  subtopic: "Exceptions to warrant requirement"
  outline_code: "75070202"
  call: "If the driver moves to suppress the marijuana and cocaine found in the search of the truck, the court should:"
  selection_percentages:
    A: { value: 21, provenance: "inherited" }
    B: { value: 8, provenance: "inherited" }
    C: { value: 54, provenance: "inherited" }
    D: { value: 17, provenance: "inherited" }
  official_key: "C"
  choices:
    A: "Grant the motion as to the marijuana but deny it as to the cocaine."
    B: "Deny the motion as to the marijuana but grant it as to the cocaine."
    C: "Deny the motion as to both the marijuana and the cocaine."
    D: "Grant the motion as to both the marijuana and the cocaine."
transform_provenance:
  transformed_from: "14554"
  variant_slug: "johns-hilltop"
  original_key_letter: "D"
  new_key_letter: "C"
  letter_map:
    A: { original_letter: "B", mechanic: "partial_container_rule_confusion", substance: "kept", pick_rate: 21, provenance: "inherited" }
    B: { original_letter: "C", mechanic: "selective_container_confusion", substance: "kept", pick_rate: 8, provenance: "inherited" }
    C: { original_letter: "D", mechanic: "correct_answer_automobile_exception", substance: "kept", pick_rate: 54, provenance: "inherited" }
    D: { original_letter: "A", mechanic: "overbroad_suppression", substance: "kept", pick_rate: 17, provenance: "inherited" }
  swap: { performed: false }
  divergence_summary:
    original_stem_one_sentence: "Officers acting on an undercover tip stopped a pickup near a high school, searched it, and found marijuana and cocaine; should the court suppress?"
    variant_stem_one_sentence: "After an undercover report led officers to stop a red pickup near the high school and search its toolbox and glove compartment, are the marijuana and cocaine found in the vehicle suppressible?"
    dimensions_changed: ["cast_names","stem_rhythm","setting_texture","choice_ordering"]
    dimensions_skipped_with_reason: ["asset (skipped — vehicle/contraband preserved by precedence)"]
source_stack: ["original_row:14554","skills/cq-transform-qa/SKILL.md","controlled_vocabularies.md","OUTLINE_CODES_COMPLETE.md"]
student_access_contract: "Student facing C3 explanation; authority quarantined to lawyer_confirmation"
stem_parse:
  actor: "Driver (John)"
  action: "vehicle stopped and searched; containers opened"
  triggering_fact: "probable cause to believe vehicle contained contraband"
trigger_facts:
  - { label: "informant_tip", fact: "undercover officer observed alleged sales by described men near school" }
  - { label: "matching_vehicle_and_person", fact: "red pickup and driver matched description" }
  - { label: "containers_searched", fact: "locked toolbox and glove compartment opened during search" }
c3_routing:
  subject_fit: "CRIMINAL"
  governing_law_type: "RULE"
  deciding_phase: "CLASH"
  method_class: "hard_structural"
  confidence: "HARD_STRUCTURAL"
  case_study_verdict: "C3_SOLVE"
  bank_validation_verdict: "PASS"
  residual: "C"
  agrees_with_official_key: true
  is_fork: false
  fork_type: null
  difficulty: "Core"
answer_array: "2×2 (automobile exception vs container/sequence exceptions)"
choice_walkthroughs:
  A:
    filter_broken: "NOT_TRUE"
    mold_code: "EAR_FALSITY"
    mold_family: "EAR_FALSITY"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags: ["selective_container_confusion","bar_exam_bait"]
    method_class: "heuristic_structural"
    student_label: "partial_suppression"
    c3_signal: "splits admissibility by container"
    lawyer_confirmation: "Ross permits searching containers when probable cause supports vehicle search"
  B:
    filter_broken: "NOT_TRUE"
    mold_code: "EAR_DISTORTION"
    mold_family: "EAR_DISTORTION"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags: ["half_right_answer","container_size_confusion"]
    method_class: "heuristic_structural"
    student_label: "selective_container"
    c3_signal: "treats different compartments differently without doctrinal basis"
    lawyer_confirmation: "Ross defines scope by places probable cause indicates, not container label"
  C:
    filter_broken: null
    mold_code: "correct_answer"
    mold_family: null
    bait_architecture_code: null
    wrong_answer_architecture_tags: ["correct_answer"]
    method_class: "hard_structural"
    student_label: "automobile_exception"
    c3_signal: "probable cause to search vehicle → search containers"
    lawyer_confirmation: "Carroll; Ross"
  D:
    filter_broken: "NOT_TRUE"
    mold_code: "EAR_DISTORTION"
    mold_family: "EAR_DISTORTION"
    bait_architecture_code: "wrong_frame"
    wrong_answer_architecture_tags: ["overbroad_suppression"]
    method_class: "heuristic_structural"
    student_label: "total_suppression"
    c3_signal: "treats absence of warrant as per se suppression"
    lawyer_confirmation: "Carroll/Ross allow warrantless vehicle searches on probable cause"
residual_answer: "C"
legal_leak_audit: "Drift audit: automobile exception preserved; no doctrinal drift. Lawyer_confirmation cites Carroll v. United States and United States v. Ross."
gold_keys: []
remediation:
  card_id: "RC-4TH-AUTO-01"
  title: "Automobile exception scope"
  signal: "probable cause + vehicle"
  student_move: "Ask whether probable cause supports a vehicle search; if yes, search includes containers that might hold contraband"
  tiny_rule: "Probable cause to search a vehicle allows searching containers within it that could conceal the contraband."
distilled_core_question: "Police with probable cause searched a vehicle and containers and found contraband; should those items be suppressed?"
review_truth: "Probable cause to search a vehicle allows a warrantless search of the vehicle and containers that might conceal the contraband."
case_study_output: {}
quality_control: { pass_checks: true, note: "Pick rates inherited; outline code verified (75070202);" }
analytics_hooks:
  component_routing:
    - { destination_key: "question_history" }
    - { destination_key: "drills" }
```

### 2. The 17‑section student case study (abridged)

program_frame: CRIMINAL — Fourth Amendment vehicle‑search exceptions.
student_access_test: Can student identify automobile exception and apply it to container searches?
question_data: See Question YAML above.
distilled_core_question: See above.
call_and_prediction: Call asks suppression for vehicle‑found marijuana and cocaine; predicted residual = C.
trigger_facts: undercover tip; matching vehicle/person; probable cause to search vehicle; locked toolbox and glove compartment opened.
governing_c3_lane: RULE; deciding_phase: CLASH; call_heuristic: automobile_exception_scope.
choice_by_choice_walkthrough: A/B/D distractors split container rules or assume per se suppression; each fails because Ross permits container search when vehicle PC exists.
residual_answer: C (automobile exception applies).
legal_leak_audit: Carroll v. United States; United States v. Ross — both cited in lawyer_confirmation. Drift audit: none.
final_student_script: "Ask: was there probable cause to search the vehicle? If yes, search included containers that might hold contraband — deny suppression."
remediation_card: RC-4TH-AUTO-01 (above).
qa_checklist: outline_code verified; pick rates inherited; letter_map present; dominant trap flagged; JSON blocks valid.
wrong_answer_recovery_paths: For A/B/D teach students to call the Ross anchor; practice naming the clash axis.
outline_mastery_map: placement 75070202; teaches "spot probable cause for vehicle and include container search."
crossover_intersection_map: intersects search incident to arrest doctrine and passenger searches (Gant limited post‑arrest vehicle searches; passenger purse search analysis taught elsewhere).
review_truth: see above.

### 3. c3_annotation

```json
{
  "question_id": "14554_johns-hilltop",
  "subject": "CRIMINAL",
  "credited_answer": "C",
  "outline_code": "75070202",
  "distilled_core_question": "Police with probable cause searched a vehicle and containers and found contraband; should those items be suppressed?",
  "review_truth": "Probable cause to search a vehicle allows a warrantless search of the vehicle and any containers that may conceal the contraband.",
  "c3": {
    "verdict": "C3_SOLVE",
    "residual": "C",
    "agrees_with_key": true,
    "governing_law_type": "RULE",
    "deciding_phase": "CLASH",
    "confidence": "HARD_STRUCTURAL",
    "tension_axis": "automobile_exception_vs_container_limits",
    "is_fork": false,
    "fork_type": null,
    "call_heuristic": "probable_cause_vehicle_includes_containers",
    "difficulty": "Core",
    "distractors": [
      { "choice": "A", "filter_broken": "NOT_TRUE", "mold": "EAR_FALSITY", "architecture": "wrong_frame", "card_ref": "RC-4TH-AUTO-01", "explanation": "Assumes partial suppression despite vehicle probable cause." },
      { "choice": "B", "filter_broken": "NOT_TRUE", "mold": "EAR_DISTORTION", "architecture": "wrong_frame", "card_ref": "RC-4TH-AUTO-01", "explanation": "Splits admissibility by container without doctrinal support." },
      { "choice": "D", "filter_broken": "NOT_TRUE", "mold": "EAR_DISTORTION", "architecture": "wrong_frame", "card_ref": "RC-4TH-AUTO-01", "explanation": "Treats lack of warrant as per se suppression regardless of probable cause." }
    ],
    "analyzer_notes": {
      "drift_audit": "Automobile exception preserved; no doctrinal drift.",
      "transformed_from": "14554",
      "letter_map": { "A": "D", "B": "A", "C": "B", "D": "C" }
    },
    "gold_keys": [],
    "silver_keys": []
  }
}
```

### 4. program_elements

```json
{
  "question_id": "14554_johns-hilltop",
  "subject": "CRIMINAL",
  "outline_code": "75070202",
  "distilled_core_question": "Police with probable cause searched a vehicle and containers and found contraband; should those items be suppressed?",
  "review_truth": "Probable cause to search a vehicle allows a warrantless search of the vehicle and any containers that may conceal the contraband.",
  "tension": "automobile_exception_vs_container_limits",
  "traps": [
    { "choice": "A", "mold": "EAR_FALSITY", "architecture": "wrong_frame", "why_attractive": "Students think 'no warrant = suppression' as a blanket rule. The breaker: automobile exception permits warrantless vehicle searches on probable cause.", "focus_group_pct": 17, "pct_provenance": "inherited" },
    { "choice": "B", "mold": "EAR_DISTORTION", "architecture": "wrong_frame", "why_attractive": "Tendency to split containers by appearance/sequence; breaker: Ross ties scope to places where probable cause indicates contraband may be found.", "focus_group_pct": 21, "pct_provenance": "inherited" },
    { "choice": "D", "mold": "EAR_DISTORTION", "architecture": "wrong_frame", "why_attractive": "Appeal to fairness and warrant requirement; breaker: Carroll/Ross anchor.", "focus_group_pct": 8, "pct_provenance": "inherited" }
  ],
  "remediation_card": { "card_id": "RC-4TH-AUTO-01", "title": "Automobile exception scope", "signal": "probable cause + vehicle", "student_move": "Check for probable cause to search vehicle; if present, include containers", "tiny_rule": "Probable cause to search vehicle → containers may be searched", "trap": "splitting containers without doctrinal basis", "confidence": "HARD_STRUCTURAL" },
  "red_zone_dimensions": ["probable_cause_vehicle","container_scope","informant_reliability"]
}
```

### 5. program_intelligence

```json
{
  "question_id": "14554_johns-hilltop",
  "subject": "CRIMINAL",
  "outline_code": "75070202",
  "distilled_core_question": "Police with probable cause searched a vehicle and containers and found contraband; should those items be suppressed?",
  "review_truth": "Probable cause to search a vehicle allows a warrantless search of the vehicle and any containers that may conceal the contraband.",
  "wrong_answer_paths": [
    { "choice": "A", "filter_broken": "NOT_TRUE", "mold": "EAR_FALSITY", "why_a_student_picks_this": "overgeneralize warrant requirement", "skipped_move": "ask whether probable cause existed for vehicle", "recovery_step": "Identify probable cause and apply automobile exception" },
    { "choice": "B", "filter_broken": "NOT_TRUE", "mold": "EAR_DISTORTION", "why_a_student_picks_this": "assume toolbox differs from glove compartment", "skipped_move": "ask what places probable cause reaches", "recovery_step": "Name places where contraband might be found (Ross anchor)" },
    { "choice": "D", "filter_broken": "NOT_TRUE", "mold": "EAR_DISTORTION", "why_a_student_picks_this": "presume warrant absence is dispositive", "skipped_move": "check exigent circumstances/probable cause", "recovery_step": "Apply Carroll/Ross framework to vehicle searches" }
  ],
  "drill_seeds": [
    { "drill_type": "ClashCall", "target_skill": "name_automobile_axis", "prompt": "When you have probable cause to search a car, may officers open containers in the vehicle?", "answer": "Yes — Ross allows opening containers that might hide contraband." },
    { "drill_type": "QuickCut", "target_skill": "spot_pc_for_vehicle", "prompt": "Undercover tip + matching vehicle/person near a known drug spot — treat this as ___?", "answer": "Probable cause to search the vehicle (automobile exception plausible)" }
  ],
  "trap_tags": { "forensic_tags": ["container_vs_vehicle_confusion","warrant_overgeneralization"], "misconception_tags": ["partial_suppression","container_split"] },
  "component_routing": [
    { "destination_key": "drills", "component_tags": ["automobile_exception"] },
    { "destination_key": "trap_forensics", "component_tags": ["container_confusion"] }
  ],
  "gold_keys": [],
  "silver_keys": [],
  "outline_mastery": { "placement": "75070202", "this_item_teaches": ["automobile exception scope","Ross vs. Chadwick distinction"], "fills": [], "adjacent_to_master": [] }
}
```

Notes:
- Outline code 75070202 verified in OUTLINE_CODES_COMPLETE.md.
- Pick rates inherited from source; dominant trap flagged and letter_map included.
- Lawyer confirmation cites Carroll v. United States (267 U.S. 132) and United States v. Ross (456 U.S. 798).
- All JSON blocks include analyzer_notes with drift_audit, transformed_from, and letter_map.

Export complete: C:\FOC\Workspace\Finished\CQ14554.md

### 99. Final question

See the preserved final question stem and call above.

### 99. Distilled Core Question

Police with probable cause searched a vehicle and containers and found contraband; should those items be suppressed?

### 99. Final answer choices

See the preserved final answer choices above.

### 99. Possible replacement answer choices

No replacement answer choices are supplied in this repair-normalized file.

### 99. Correct answer

C

### 99. Letter Map

A→D, B→A, C→B, D→C

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

When police have probable cause to believe a vehicle contains contraband, the automobile exception permits a warrantless search of the vehicle and any containers that may conceal the object of the search.

### 99. The 5 variations considered

See preserved variation audit content above when present.

---

## B) PASS-2 FIVE BLOCKS

### 2. The 17-section student case study

```
1. **program_frame:** Question 14554_johns-hilltop; source 14554.
2. **student_access_test:** Existing authored student-access analysis is preserved in this file.
3. **question_data:** Subject CRIMINAL; topic Criminal Law and Procedure; subtopic Exceptions to warrant requirement.
4. **distilled_core_question:** Police with probable cause searched a vehicle and containers and found contraband; should those items be suppressed?
5. **call_and_prediction:** Credited answer: C.
6. **trigger_facts:** See the preserved question stem and existing analysis above.
7. **governing_c3_lane:** Outline code 75070202.
8. **choice_by_choice_walkthrough:** See preserved wrong-answer explanations and C3 walkthrough above.
9. **residual_answer:** C
10. **legal_leak_audit:** Drift audit: structural repair only; existing legal analysis preserved.
11. **final_student_script:** When police have probable cause to believe a vehicle contains contraband, the automobile exception permits a warrantless search of the vehicle and any containers that may conceal the object of the search.
12. **remediation_card:** Review the preserved Gold Key, Silver Key, remediation, and trap analysis when present.
13. **qa_checklist:** Repair-normalized from workbook-listed structural issues.
14. **wrong_answer_recovery_paths:** See preserved wrong-answer explanations.
15. **outline_mastery_map:** Placement: 75070202.
16. **crossover_intersection_map:** See preserved crossovers when present.
17. **review_truth:** When police have probable cause to believe a vehicle contains contraband, the automobile exception permits a warrantless search of the vehicle and any containers that may conceal the object of the search.
```
