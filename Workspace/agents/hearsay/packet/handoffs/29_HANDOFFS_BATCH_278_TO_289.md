# BarMatrix Hearsay — Handoffs Batch 278 to 289

**Status:** internal-only drafting handoffs.  
**Use:** each batch block generates exactly three provisional Hearsay YAML question drafts.  
**Baseline:** FRE unless the slot expressly says California, mixed comparison, or Confrontation overlay.  
**Copy safety:** the slot facts are seed mechanics, not source text; create synthetic facts and changed roles/settings/vehicles.

## Standing prompt

```text
You are a BarMatrix Hearsay provisional question-generation agent.

Generate exactly 3 internal-only BarMatrix Hearsay `hearsay_finished_question_draft` YAML artifacts for the specified batch below.

Operating rules:
- Default legal baseline: FRE_baseline unless a target expressly says California, FRE_CA_comparison, or confrontation_overlay.
- Do not certify any draft as final, gold, official, publishable, or student-ready.
- Use synthetic facts generated from official nodes, tension IDs, evidence vehicles, purpose routes, WAL IDs, REP IDs, and abstract mechanics.
- Do not copy, closely paraphrase, or reconstruct source-question facts, names, answer choices, or explanations.
- Each question must test 2 to 4 interacting tension points.
- Each question must identify exact statement, declarant, offered proposition, truth/nontruth status, layer count, route, vehicle, scope, and overlays.
- Each question must have exactly one best answer and three mechanically distinct wrong answers.
- Each wrong answer must include WAL ID, failure axis, why plausible, why wrong, and repair ID.
- Include self-audit, copy-safety fields, human-review flags, source-law trace, and taxonomy-growth delta.
- Set `review_status: draft_internal_only`.
- Set `source_mode: synthetic_from_tension_not_source_question`.
- Set `qa_self_audit.needs_human_legal_review: true` and `qa_self_audit.needs_calibration_harness_audit: true`.
- If a target exposes a missing taxonomy concept, use `taxonomy_growth_delta` with `canonicalization_status: proposed_only`; do not silently invent canonical IDs.

Required top-level YAML sections for each question:
- artifact_type
- version
- question_id
- review_status
- source_mode
- metadata
- mechanics
- statement_map
- layer_map
- question
- answer_choice_forensics
- explanation
- qa_self_audit
- copy_safety
- human_review_flags
- source_law_trace
- taxonomy_growth_delta

Return exactly three YAML documents separated by `---`; do not output narrative outside YAML.
```

## Batch blocks

## Batch 278 — slots HS-0832 to HS-0834

Copy/paste or ask the Project session: `Generate Batch 278 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Medical diagnosis or treatment / Medical diagnosis/treatment pertinence
   - slot_id: "HS-0832"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-053"
   - legal_collision: "Medical diagnosis/treatment pertinence"
   - fact_pattern_frame: "patient tells nurse mechanism of injury"
   - evidence_vehicle: "business record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Medical diagnosis or treatment / Medical cause vs fault
   - slot_id: "HS-0833"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-054"
   - legal_collision: "Medical cause vs fault"
   - fact_pattern_frame: "husband tells doctor defendant was speeding"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Medical diagnosis or treatment / Exception scope boundary
   - slot_id: "HS-0834"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "medical questionnaire completed by decedent"
   - evidence_vehicle: "computer record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-019"
     - "WAL-HS-026"
     - "WAL-HS-033"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 279 — slots HS-0835 to HS-0837

Copy/paste or ask the Project session: `Generate Batch 279 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Medical diagnosis or treatment / Route underuse / route overuse
   - slot_id: "HS-0835"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement to psychologist for diagnosis"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Medical diagnosis or treatment / Medical diagnosis/treatment pertinence
   - slot_id: "HS-0836"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-053"
   - legal_collision: "Medical diagnosis/treatment pertinence"
   - fact_pattern_frame: "patient tells nurse mechanism of injury"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Medical diagnosis or treatment / Medical cause vs fault
   - slot_id: "HS-0837"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-054"
   - legal_collision: "Medical cause vs fault"
   - fact_pattern_frame: "husband tells doctor defendant was speeding"
   - evidence_vehicle: "business record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-022"
     - "WAL-HS-029"
     - "WAL-HS-036"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 280 — slots HS-0838 to HS-0840

Copy/paste or ask the Project session: `Generate Batch 280 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Medical diagnosis or treatment / Exception scope boundary
   - slot_id: "HS-0838"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "medical questionnaire completed by decedent"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Medical diagnosis or treatment / Route underuse / route overuse
   - slot_id: "HS-0839"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement to psychologist for diagnosis"
   - evidence_vehicle: "computer record"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Medical diagnosis or treatment / Medical diagnosis/treatment pertinence
   - slot_id: "HS-0840"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-053"
   - legal_collision: "Medical diagnosis/treatment pertinence"
   - fact_pattern_frame: "patient tells nurse mechanism of injury"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-025"
     - "WAL-HS-032"
     - "WAL-HS-039"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 281 — slots HS-0841 to HS-0843

Copy/paste or ask the Project session: `Generate Batch 281 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Medical diagnosis or treatment / Medical cause vs fault
   - slot_id: "HS-0841"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-054"
   - legal_collision: "Medical cause vs fault"
   - fact_pattern_frame: "husband tells doctor defendant was speeding"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Medical diagnosis or treatment / Exception scope boundary
   - slot_id: "HS-0842"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "medical questionnaire completed by decedent"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Medical diagnosis or treatment / Route underuse / route overuse
   - slot_id: "HS-0843"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement to psychologist for diagnosis"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-028"
     - "WAL-HS-035"
     - "WAL-HS-042"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 282 — slots HS-0844 to HS-0846

Copy/paste or ask the Project session: `Generate Batch 282 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Medical diagnosis or treatment / Medical diagnosis/treatment pertinence
   - slot_id: "HS-0844"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-053"
   - legal_collision: "Medical diagnosis/treatment pertinence"
   - fact_pattern_frame: "patient tells nurse mechanism of injury"
   - evidence_vehicle: "computer record"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Medical diagnosis or treatment / Medical cause vs fault
   - slot_id: "HS-0845"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-054"
   - legal_collision: "Medical cause vs fault"
   - fact_pattern_frame: "husband tells doctor defendant was speeding"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Medical diagnosis or treatment / Exception scope boundary
   - slot_id: "HS-0846"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "medical questionnaire completed by decedent"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-031"
     - "WAL-HS-038"
     - "WAL-HS-045"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 283 — slots HS-0847 to HS-0849

Copy/paste or ask the Project session: `Generate Batch 283 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Medical diagnosis or treatment / Route underuse / route overuse
   - slot_id: "HS-0847"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement to psychologist for diagnosis"
   - evidence_vehicle: "business record"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Medical diagnosis or treatment / Medical diagnosis/treatment pertinence
   - slot_id: "HS-0848"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-053"
   - legal_collision: "Medical diagnosis/treatment pertinence"
   - fact_pattern_frame: "patient tells nurse mechanism of injury"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Medical diagnosis or treatment / Medical cause vs fault
   - slot_id: "HS-0849"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-054"
   - legal_collision: "Medical cause vs fault"
   - fact_pattern_frame: "husband tells doctor defendant was speeding"
   - evidence_vehicle: "computer record"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-034"
     - "WAL-HS-041"
     - "WAL-HS-048"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 284 — slots HS-0850 to HS-0852

Copy/paste or ask the Project session: `Generate Batch 284 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Medical diagnosis or treatment / Exception scope boundary
   - slot_id: "HS-0850"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "medical questionnaire completed by decedent"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Medical diagnosis or treatment / Route underuse / route overuse
   - slot_id: "HS-0851"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement to psychologist for diagnosis"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Medical diagnosis or treatment / Medical diagnosis/treatment pertinence
   - slot_id: "HS-0852"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-053"
   - legal_collision: "Medical diagnosis/treatment pertinence"
   - fact_pattern_frame: "patient tells nurse mechanism of injury"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-037"
     - "WAL-HS-044"
     - "WAL-HS-003"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 285 — slots HS-0853 to HS-0855

Copy/paste or ask the Project session: `Generate Batch 285 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Medical diagnosis or treatment / Medical cause vs fault
   - slot_id: "HS-0853"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-054"
   - legal_collision: "Medical cause vs fault"
   - fact_pattern_frame: "husband tells doctor defendant was speeding"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-034"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Medical diagnosis or treatment / Exception scope boundary
   - slot_id: "HS-0854"
   - official_outline_node: "HS-C2e"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Medical diagnosis or treatment"
   - operating_description: "Purpose and pertinence to diagnosis/treatment; speaker to medical staff; fault/scope limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "medical questionnaire completed by decedent"
   - evidence_vehicle: "computer record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "134, 147, 150"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Recorded recollection foundation
   - slot_id: "HS-0855"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-055"
   - legal_collision: "Recorded recollection foundation"
   - fact_pattern_frame: "police shift-end dictation"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-040"
     - "WAL-HS-047"
     - "WAL-HS-006"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 286 — slots HS-0856 to HS-0858

Copy/paste or ask the Project session: `Generate Batch 286 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Recorded recollection channel / exhibit limit
   - slot_id: "HS-0856"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-056"
   - legal_collision: "Recorded recollection channel / exhibit limit"
   - fact_pattern_frame: "license recording after accident"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Exception scope boundary
   - slot_id: "HS-0857"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "self-initiated notes with no memory failure"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Route underuse / route overuse
   - slot_id: "HS-0858"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "record made fresh and accurate but witness cannot recall"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-043"
     - "WAL-HS-002"
     - "WAL-HS-009"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 287 — slots HS-0859 to HS-0861

Copy/paste or ask the Project session: `Generate Batch 287 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Recorded recollection foundation
   - slot_id: "HS-0859"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-055"
   - legal_collision: "Recorded recollection foundation"
   - fact_pattern_frame: "police shift-end dictation"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Recorded recollection channel / exhibit limit
   - slot_id: "HS-0860"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-056"
   - legal_collision: "Recorded recollection channel / exhibit limit"
   - fact_pattern_frame: "license recording after accident"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Exception scope boundary
   - slot_id: "HS-0861"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "self-initiated notes with no memory failure"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-046"
     - "WAL-HS-005"
     - "WAL-HS-012"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 288 — slots HS-0862 to HS-0864

Copy/paste or ask the Project session: `Generate Batch 288 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Route underuse / route overuse
   - slot_id: "HS-0862"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "record made fresh and accurate but witness cannot recall"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Recorded recollection foundation
   - slot_id: "HS-0863"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-055"
   - legal_collision: "Recorded recollection foundation"
   - fact_pattern_frame: "police shift-end dictation"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Recorded recollection channel / exhibit limit
   - slot_id: "HS-0864"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-056"
   - legal_collision: "Recorded recollection channel / exhibit limit"
   - fact_pattern_frame: "license recording after accident"
   - evidence_vehicle: "transcript"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-001"
     - "WAL-HS-008"
     - "WAL-HS-015"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 289 — slots HS-0865 to HS-0867

Copy/paste or ask the Project session: `Generate Batch 289 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Exception scope boundary
   - slot_id: "HS-0865"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "self-initiated notes with no memory failure"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Route underuse / route overuse
   - slot_id: "HS-0866"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "record made fresh and accurate but witness cannot recall"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Recorded recollection foundation
   - slot_id: "HS-0867"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-055"
   - legal_collision: "Recorded recollection foundation"
   - fact_pattern_frame: "police shift-end dictation"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-004"
     - "WAL-HS-011"
     - "WAL-HS-018"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.