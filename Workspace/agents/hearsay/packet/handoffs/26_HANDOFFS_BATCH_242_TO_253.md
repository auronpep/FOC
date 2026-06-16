# BarMatrix Hearsay — Handoffs Batch 242 to 253

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

## Batch 242 — slots HS-0724 to HS-0726

Copy/paste or ask the Project session: `Generate Batch 242 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Business records / Business record vs testimony about contents
   - slot_id: "HS-0724"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-043"
   - legal_collision: "Business record vs testimony about contents"
   - fact_pattern_frame: "hospital chart"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-029"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Business records / Business record source/recorder duty chain
   - slot_id: "HS-0725"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-044"
   - legal_collision: "Business record source/recorder duty chain"
   - fact_pattern_frame: "invoice records not produced"
   - evidence_vehicle: "business record"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-030"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Present sense impression / Present sense impression timing
   - slot_id: "HS-0726"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-047"
   - legal_collision: "Present sense impression timing"
   - fact_pattern_frame: "license number dictated as car leaves"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-032"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-007"
     - "WAL-HS-014"
     - "WAL-HS-021"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 243 — slots HS-0727 to HS-0729

Copy/paste or ask the Project session: `Generate Batch 243 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Present sense impression / Present sense impression multi-speaker relay
   - slot_id: "HS-0727"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-048"
   - legal_collision: "Present sense impression multi-speaker relay"
   - fact_pattern_frame: "wife relays husband observation over phone"
   - evidence_vehicle: "computer record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Present sense impression / Exception scope boundary
   - slot_id: "HS-0728"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "delayed statement 20 minutes later"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Present sense impression / Route underuse / route overuse
   - slot_id: "HS-0729"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "recorded live observation"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-010"
     - "WAL-HS-017"
     - "WAL-HS-024"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 244 — slots HS-0730 to HS-0732

Copy/paste or ask the Project session: `Generate Batch 244 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Present sense impression / Present sense impression timing
   - slot_id: "HS-0730"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-047"
   - legal_collision: "Present sense impression timing"
   - fact_pattern_frame: "license number dictated as car leaves"
   - evidence_vehicle: "business record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-032"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Present sense impression / Present sense impression multi-speaker relay
   - slot_id: "HS-0731"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-048"
   - legal_collision: "Present sense impression multi-speaker relay"
   - fact_pattern_frame: "wife relays husband observation over phone"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Present sense impression / Exception scope boundary
   - slot_id: "HS-0732"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "delayed statement 20 minutes later"
   - evidence_vehicle: "computer record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-013"
     - "WAL-HS-020"
     - "WAL-HS-027"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 245 — slots HS-0733 to HS-0735

Copy/paste or ask the Project session: `Generate Batch 245 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Present sense impression / Route underuse / route overuse
   - slot_id: "HS-0733"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "recorded live observation"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Present sense impression / Present sense impression timing
   - slot_id: "HS-0734"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-047"
   - legal_collision: "Present sense impression timing"
   - fact_pattern_frame: "license number dictated as car leaves"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-032"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Present sense impression / Present sense impression multi-speaker relay
   - slot_id: "HS-0735"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-048"
   - legal_collision: "Present sense impression multi-speaker relay"
   - fact_pattern_frame: "wife relays husband observation over phone"
   - evidence_vehicle: "business record"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-016"
     - "WAL-HS-023"
     - "WAL-HS-030"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 246 — slots HS-0736 to HS-0738

Copy/paste or ask the Project session: `Generate Batch 246 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Present sense impression / Exception scope boundary
   - slot_id: "HS-0736"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "delayed statement 20 minutes later"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Present sense impression / Route underuse / route overuse
   - slot_id: "HS-0737"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "recorded live observation"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Present sense impression / Present sense impression timing
   - slot_id: "HS-0738"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-047"
   - legal_collision: "Present sense impression timing"
   - fact_pattern_frame: "license number dictated as car leaves"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-032"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-019"
     - "WAL-HS-026"
     - "WAL-HS-033"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 247 — slots HS-0739 to HS-0741

Copy/paste or ask the Project session: `Generate Batch 247 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Present sense impression / Present sense impression multi-speaker relay
   - slot_id: "HS-0739"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-048"
   - legal_collision: "Present sense impression multi-speaker relay"
   - fact_pattern_frame: "wife relays husband observation over phone"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Present sense impression / Exception scope boundary
   - slot_id: "HS-0740"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "delayed statement 20 minutes later"
   - evidence_vehicle: "business record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Present sense impression / Route underuse / route overuse
   - slot_id: "HS-0741"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "recorded live observation"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-022"
     - "WAL-HS-029"
     - "WAL-HS-036"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 248 — slots HS-0742 to HS-0744

Copy/paste or ask the Project session: `Generate Batch 248 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Present sense impression / Present sense impression timing
   - slot_id: "HS-0742"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-047"
   - legal_collision: "Present sense impression timing"
   - fact_pattern_frame: "license number dictated as car leaves"
   - evidence_vehicle: "computer record"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-032"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Present sense impression / Present sense impression multi-speaker relay
   - slot_id: "HS-0743"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-048"
   - legal_collision: "Present sense impression multi-speaker relay"
   - fact_pattern_frame: "wife relays husband observation over phone"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Present sense impression / Exception scope boundary
   - slot_id: "HS-0744"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "delayed statement 20 minutes later"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-025"
     - "WAL-HS-032"
     - "WAL-HS-039"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 249 — slots HS-0745 to HS-0747

Copy/paste or ask the Project session: `Generate Batch 249 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Present sense impression / Route underuse / route overuse
   - slot_id: "HS-0745"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "recorded live observation"
   - evidence_vehicle: "business record"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Present sense impression / Present sense impression timing
   - slot_id: "HS-0746"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-047"
   - legal_collision: "Present sense impression timing"
   - fact_pattern_frame: "license number dictated as car leaves"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-032"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Present sense impression / Present sense impression multi-speaker relay
   - slot_id: "HS-0747"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-048"
   - legal_collision: "Present sense impression multi-speaker relay"
   - fact_pattern_frame: "wife relays husband observation over phone"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-028"
     - "WAL-HS-035"
     - "WAL-HS-042"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 250 — slots HS-0748 to HS-0750

Copy/paste or ask the Project session: `Generate Batch 250 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Present sense impression / Exception scope boundary
   - slot_id: "HS-0748"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "delayed statement 20 minutes later"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Present sense impression / Route underuse / route overuse
   - slot_id: "HS-0749"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "recorded live observation"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Present sense impression / Present sense impression timing
   - slot_id: "HS-0750"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-047"
   - legal_collision: "Present sense impression timing"
   - fact_pattern_frame: "license number dictated as car leaves"
   - evidence_vehicle: "business record"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-032"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-031"
     - "WAL-HS-038"
     - "WAL-HS-045"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 251 — slots HS-0751 to HS-0753

Copy/paste or ask the Project session: `Generate Batch 251 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Present sense impression / Present sense impression multi-speaker relay
   - slot_id: "HS-0751"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-048"
   - legal_collision: "Present sense impression multi-speaker relay"
   - fact_pattern_frame: "wife relays husband observation over phone"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Present sense impression / Exception scope boundary
   - slot_id: "HS-0752"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "delayed statement 20 minutes later"
   - evidence_vehicle: "computer record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Present sense impression / Route underuse / route overuse
   - slot_id: "HS-0753"
   - official_outline_node: "HS-C2b"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Present sense impression"
   - operating_description: "Description/explanation during or immediately after perception; recording/relay variants"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "recorded live observation"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "109, 138"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-034"
     - "WAL-HS-041"
     - "WAL-HS-048"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 252 — slots HS-0754 to HS-0756

Copy/paste or ask the Project session: `Generate Batch 252 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Excited utterance stress and timing
   - slot_id: "HS-0754"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-049"
   - legal_collision: "Excited utterance stress and timing"
   - fact_pattern_frame: "victim scream immediately after assault"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Excited utterance / Excited utterance identification
   - slot_id: "HS-0755"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-050"
   - legal_collision: "Excited utterance identification"
   - fact_pattern_frame: "calm hospital narrative two hours later"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Excited utterance / Exception scope boundary
   - slot_id: "HS-0756"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "witness identifies attacker while still crying"
   - evidence_vehicle: "computer record"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-037"
     - "WAL-HS-044"
     - "WAL-HS-003"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 253 — slots HS-0757 to HS-0759

Copy/paste or ask the Project session: `Generate Batch 253 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Route underuse / route overuse
   - slot_id: "HS-0757"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement about unrelated event after shock"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Excited utterance / Excited utterance stress and timing
   - slot_id: "HS-0758"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-049"
   - legal_collision: "Excited utterance stress and timing"
   - fact_pattern_frame: "victim scream immediately after assault"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Excited utterance / Excited utterance identification
   - slot_id: "HS-0759"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-050"
   - legal_collision: "Excited utterance identification"
   - fact_pattern_frame: "calm hospital narrative two hours later"
   - evidence_vehicle: "business record"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-040"
     - "WAL-HS-047"
     - "WAL-HS-006"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.