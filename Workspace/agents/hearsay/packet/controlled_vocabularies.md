# C3 Creative-Transform — Controlled Vocabularies

*Attach this file alongside the prompt and the question. The prompt references these fields **structurally**; their allowed VALUES live here so the taxonomy can evolve without rewriting the prompt. **NEVER invent values outside this file.***

## Subjects (DB enum, UPPER_SNAKE)
`CIVIL_PROCEDURE`, `CONSTITUTIONAL_LAW`, `CONTRACTS`, `CRIMINAL`, `EVIDENCE`, `REAL_PROPERTY`, `TORTS`
(map Criminal Law / CrimPro → `CRIMINAL`)

## Filters a wrong answer can break
`NOT_TRUE` (misstates the law) · `NOT_RESPONSIVE` (doesn't answer the precise call). The credited answer breaks **neither**.

## Mold codes — each distractor gets EXACTLY ONE; family fixes the filter
- **EAR_OVERCLAIM** (NOT_TRUE): `tiered_absolute` always/never/only where exceptions exist · `fabricated_rule` invents a requirement/threshold · `extreme_of_range` real rule pushed too far.
- **EAR_FALSITY** (NOT_TRUE): `backwards` reverses burden/trigger/direction · `contradiction` the reason defeats its own conclusion · `flat_misstatement` simply not the law.
- **EAR_DISTORTION** (NOT_TRUE): `half_truth` true but missing a necessary element · `colloquialism` fairness/common-sense instead of the legal test · `even_split` invents a compromise · `autonomy_appeal` rights/freedom/choice instead of the test.
- **ISSUE_SENSE** (NOT_RESPONSIVE): `misfit` doctrine not in play · `bait_doctrine` right area + true rule but the neighboring context/variant · `wrong_element` proves a non-dispositive element.

Tie-break `half_truth` vs `wrong_element`: need stem facts to see the missing element → `wrong_element`; false on its face → `half_truth`.

## Bait-architecture codes (optional, ≤1 per distractor)
`wrong_frame`, `violation_vs_remedy`, `procedural_frame`, `offered_for_purpose`.

## Wrong-answer-architecture tags (descriptive "why attractive"; ≥0 per choice; NOT molds)
`correct_answer`, `attractive_wrong_answer`, `legally_true_but_irrelevant`, `overbroad_rule`, `misstated_rule`, `wrong_party`, `wrong_timing`, `wrong_standard`, `wrong_remedy`, `wrong_jurisdiction`, `wrong_mental_state`, `wrong_procedural_posture`, `exception_omitted`, `exception_over_applied`, `fact_not_in_evidence`, `answer_to_different_question`, `common_student_myth`, `half_right_answer`, `sounds_lawyerly`, `moral_common_sense_answer`, `bar_exam_bait`, `purpose_of_offer_confusion`, `exception_hunting`.

## method_class (per choice, teaching)
`hard_structural`, `heuristic_structural`, `anchor_assisted`, `pure_anchor`, `anchor_gap`, `legal_leak`, `needs_stem`, `needs_human`.

## case_study_verdict (item, teaching)
`C3_SOLVE`, `C3_LEAN`, `ANCHOR_SOLVE`, `ANCHOR_GAP`, `DOCTRINE_LEAK`, `NEEDS_STEM`, `NEEDS_HUMAN`.

## bank_validation_verdict (item, DB)
`PASS`, `DEFECT`, `FORK_OR_SPLIT`, `NEEDS_HUMAN`.

## confidence (item, DB) — derived from the DECIDING choice's method_class
`HARD_STRUCTURAL`, `HEURISTIC_STRUCTURAL`, `ANCHOR_ASSISTED`, `PURE_ANCHOR`, `HUMAN_REVIEW`.
Derivation: hard_structural→HARD_STRUCTURAL · heuristic_structural→HEURISTIC_STRUCTURAL · anchor_assisted→ANCHOR_ASSISTED · pure_anchor→PURE_ANCHOR · anchor_gap/legal_leak/needs_stem/needs_human→HUMAN_REVIEW.

## Other item/choice fields
- **deciding_phase:** `CUT` | `CLASH` | `CALL`
- **governing_law_type:** `RULE` | `STANDARD`
- **fork_type:** `MISSING_FACT` | `QUESTION_AMBIGUITY` | `SPLIT_DOCTRINE`

## Gold Key `type`
`rule` | `exception` | `constitutional_principle` | `phrase` | `distinction` | `threshold` | `burden`.

## Silver Key `type`
`cut` | `clash` | `call` | `call_focus` | `answer_array` | `trap_spotting` | `calibration`.

## Component routing `destination_key`
Controlled destination keys for `program_intelligence.component_routing[]`. These are stable app/navigation targets; descriptive tags inside `component_tags`, `trap_tags`, `red_zone_dimensions`, `crossovers`, `fills`, and drill text may remain free text.

`dashboard_summary`, `drills`, `red_zones`, `trap_forensics`, `misconceptions`, `pattern_board`, `matrix`, `question_history`, `outline_atlas`, `review_cards`.


---

# Hearsay Christian Study Group Additions

These values extend the original C3 vocabulary for Hearsay-generation artifacts. Use these exact values where a field is controlled.

## artifact_type
`hearsay_finished_question_draft`

## review_status
`draft_internal_only` · `needs_human_review` · `rejected_internal`

## source_mode
`synthetic_from_tension_not_source_question` · `transformed_from_source_question`

## christian_surface_intensity
`minimal` · `moderate` · `high` · `wild_open_intentional`

Default for this packet: `wild_open_intentional`.

## christian_surface_role
`setting` · `cast` · `asset` · `activity` · `student_frame` · `memory_hook` · `none`

## christian_clutter_risk
`low` · `medium` · `high`

## governing_law_mode
`FRE_baseline` · `California` · `FRE_CA_comparison` · `confrontation_overlay`

## jurisdiction_mode
`FRE baseline` · `California distinction` · `Mixed FRE/CA comparison` · `Criminal confrontation overlay` · `FRE with presentation crossover`

## ca_source_flag
`FRE default` · `California flag` · `none`

## truth_or_nontruth
`truth` · `nontruth` · `dual`

## evidence_vehicle
`oral statement` · `live testimony` · `note/letter` · `document/copy` · `transcript` · `report with embedded statement` · `business record` · `public record/certification` · `computer record` · `recording/tape` · `learned treatise` · `photograph` · `machine output` · `nonperson signal`

## offered_purpose
`truth` · `notice/effect` · `reason-for-action` · `knowledge/mens-rea` · `impeachment-only` · `substantive exception` · `substantive exemption` · `dual route` · `chain-pass/fail` · `read-only` · `confrontation-safe/unsafe`

## route_type
`nonhearsay_purpose` · `hearsay_exclusion` · `hearsay_exception_803` · `hearsay_exception_804` · `multiple_hearsay_chain` · `declarant_impeachment` · `record_vehicle` · `original_writing_crossover` · `confrontation_overlay` · `california_distinction` · `inadmissible_no_route`

## admissibility_scope
`inadmissible` · `substantive` · `impeachment_only` · `notice_only` · `effect_only` · `reason_for_action_only` · `knowledge_only` · `read_only_not_exhibit` · `dual_route` · `chain_pass` · `chain_fail` · `confrontation_safe` · `confrontation_unsafe` · `limited_purpose`

## failure_axis
`statement_identity` · `purpose` · `listener` · `layer` · `route` · `scope` · `vehicle` · `declarant_status` · `timing` · `source_duty` · `subject_to_cross` · `testimonial_status` · `confrontation` · `california` · `authentication` · `original_writing` · `offered_party` · `presentation_channel`

## answer_array_geometry.geometry_type
`binary_pair` · `two_by_two` · `three_vs_one` · `vehicle_menu` · `both_only_neither` · `admissible_scope_ladder` · `chain_pass_fail` · `confrontation_safe_unsafe` · `exception_menu`

## qa boolean tri-state values
Use YAML booleans `true` / `false` or the string `not_applicable`.

## pick_rate.provenance
`inherited` · `predicted` · `measured` · `none_available`

## taxonomy_growth_delta.canonicalization_status
`none` · `proposed_only`

## common Hearsay law anchors
Use as free-text authority references when accurate:
`FRE 801` · `FRE 802` · `FRE 803` · `FRE 804` · `FRE 805` · `FRE 806` · `FRE 807` · `FRE 105` · `FRE 106` · `FRE 1002` · `CEC 1200` · `CEC 1202` · `CEC 1220` · `CEC 1235` · `CEC 1240` · `CEC 1250` · `CEC 1271` · `CEC 1280` · `CEC 1291` · `CEC 1521` · `Crawford v. Washington` · `Davis v. Washington` · `Melendez-Diaz v. Massachusetts` · `Bullcoming v. New Mexico` · `Williams v. Illinois` · `Smith v. Arizona`

## Hearsay ID patterns

These are ID patterns, not closed enumerations. Use only IDs that appear in the packet source docs or handoff target:

- Official node: `HS-*`
- Tension ID: `HS-###`
- Fact trigger: `HTRG-###`
- Wrong-answer mechanic: `WAL-HS-###`
- Repair module: `REP-HS-###`
- California distinction: `CA-HS-###`
- Confrontation gate: `CONF-###`
