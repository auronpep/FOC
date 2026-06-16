# BarMatrix Hearsay — Handoffs Batch 254 to 265

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

## Batch 254 — slots HS-0760 to HS-0762

Copy/paste or ask the Project session: `Generate Batch 254 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Exception scope boundary
   - slot_id: "HS-0760"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "witness identifies attacker while still crying"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Excited utterance / Route underuse / route overuse
   - slot_id: "HS-0761"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement about unrelated event after shock"
   - evidence_vehicle: "computer record"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Excited utterance / Excited utterance stress and timing
   - slot_id: "HS-0762"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-049"
   - legal_collision: "Excited utterance stress and timing"
   - fact_pattern_frame: "victim scream immediately after assault"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
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
## Batch 255 — slots HS-0763 to HS-0765

Copy/paste or ask the Project session: `Generate Batch 255 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Excited utterance identification
   - slot_id: "HS-0763"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-050"
   - legal_collision: "Excited utterance identification"
   - fact_pattern_frame: "calm hospital narrative two hours later"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Excited utterance / Exception scope boundary
   - slot_id: "HS-0764"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "witness identifies attacker while still crying"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Excited utterance / Route underuse / route overuse
   - slot_id: "HS-0765"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement about unrelated event after shock"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-046"
     - "WAL-HS-005"
     - "WAL-HS-012"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 256 — slots HS-0766 to HS-0768

Copy/paste or ask the Project session: `Generate Batch 256 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Excited utterance stress and timing
   - slot_id: "HS-0766"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-049"
   - legal_collision: "Excited utterance stress and timing"
   - fact_pattern_frame: "victim scream immediately after assault"
   - evidence_vehicle: "computer record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Excited utterance / Excited utterance identification
   - slot_id: "HS-0767"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-050"
   - legal_collision: "Excited utterance identification"
   - fact_pattern_frame: "calm hospital narrative two hours later"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Excited utterance / Exception scope boundary
   - slot_id: "HS-0768"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "witness identifies attacker while still crying"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-043"
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
## Batch 257 — slots HS-0769 to HS-0771

Copy/paste or ask the Project session: `Generate Batch 257 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Route underuse / route overuse
   - slot_id: "HS-0769"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement about unrelated event after shock"
   - evidence_vehicle: "business record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Excited utterance / Excited utterance stress and timing
   - slot_id: "HS-0770"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-049"
   - legal_collision: "Excited utterance stress and timing"
   - fact_pattern_frame: "victim scream immediately after assault"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Excited utterance / Excited utterance identification
   - slot_id: "HS-0771"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-050"
   - legal_collision: "Excited utterance identification"
   - fact_pattern_frame: "calm hospital narrative two hours later"
   - evidence_vehicle: "computer record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-004"
     - "WAL-HS-011"
     - "WAL-HS-018"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 258 — slots HS-0772 to HS-0774

Copy/paste or ask the Project session: `Generate Batch 258 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Exception scope boundary
   - slot_id: "HS-0772"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "witness identifies attacker while still crying"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Excited utterance / Route underuse / route overuse
   - slot_id: "HS-0773"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement about unrelated event after shock"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Excited utterance / Excited utterance stress and timing
   - slot_id: "HS-0774"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-049"
   - legal_collision: "Excited utterance stress and timing"
   - fact_pattern_frame: "victim scream immediately after assault"
   - evidence_vehicle: "business record"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-007"
     - "WAL-HS-014"
     - "WAL-HS-021"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 259 — slots HS-0775 to HS-0777

Copy/paste or ask the Project session: `Generate Batch 259 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Excited utterance identification
   - slot_id: "HS-0775"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-050"
   - legal_collision: "Excited utterance identification"
   - fact_pattern_frame: "calm hospital narrative two hours later"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exemption"
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
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Excited utterance / Exception scope boundary
   - slot_id: "HS-0776"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "witness identifies attacker while still crying"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Excited utterance / Route underuse / route overuse
   - slot_id: "HS-0777"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement about unrelated event after shock"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "dual route"
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
     - "WAL-HS-010"
     - "WAL-HS-017"
     - "WAL-HS-024"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 260 — slots HS-0778 to HS-0780

Copy/paste or ask the Project session: `Generate Batch 260 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Excited utterance stress and timing
   - slot_id: "HS-0778"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-049"
   - legal_collision: "Excited utterance stress and timing"
   - fact_pattern_frame: "victim scream immediately after assault"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "read-only"
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
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Excited utterance / Excited utterance identification
   - slot_id: "HS-0779"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-050"
   - legal_collision: "Excited utterance identification"
   - fact_pattern_frame: "calm hospital narrative two hours later"
   - evidence_vehicle: "business record"
   - offered_purpose: "chain-pass/fail"
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
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Excited utterance / Exception scope boundary
   - slot_id: "HS-0780"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "witness identifies attacker while still crying"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-013"
     - "WAL-HS-020"
     - "WAL-HS-027"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 261 — slots HS-0781 to HS-0783

Copy/paste or ask the Project session: `Generate Batch 261 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Route underuse / route overuse
   - slot_id: "HS-0781"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "statement about unrelated event after shock"
   - evidence_vehicle: "computer record"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Excited utterance / Excited utterance stress and timing
   - slot_id: "HS-0782"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-049"
   - legal_collision: "Excited utterance stress and timing"
   - fact_pattern_frame: "victim scream immediately after assault"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Excited utterance / Excited utterance identification
   - slot_id: "HS-0783"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-050"
   - legal_collision: "Excited utterance identification"
   - fact_pattern_frame: "calm hospital narrative two hours later"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-033"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-016"
     - "WAL-HS-023"
     - "WAL-HS-030"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 262 — slots HS-0784 to HS-0786

Copy/paste or ask the Project session: `Generate Batch 262 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Excited utterance / Exception scope boundary
   - slot_id: "HS-0784"
   - official_outline_node: "HS-C2c"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Excited utterance"
   - operating_description: "Startling event, stress, relation to event; ID statements and timing decay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "witness identifies attacker while still crying"
   - evidence_vehicle: "business record"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "96, 97, 129, 147"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Mental, emotional, or physical condition / Then-existing state of mind vs memory/belief
   - slot_id: "HS-0785"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-051"
   - legal_collision: "Then-existing state of mind vs memory/belief"
   - fact_pattern_frame: "letter describing plan to travel"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Mental, emotional, or physical condition / Intent statement to prove future conduct
   - slot_id: "HS-0786"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-052"
   - legal_collision: "Intent statement to prove future conduct"
   - fact_pattern_frame: "statement of pain or fear"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
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
## Batch 263 — slots HS-0787 to HS-0789

Copy/paste or ask the Project session: `Generate Batch 263 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Mental, emotional, or physical condition / Exception scope boundary
   - slot_id: "HS-0787"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "statement of memory/belief"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Mental, emotional, or physical condition / Route underuse / route overuse
   - slot_id: "HS-0788"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "victim emotion rebutting self-defense"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Mental, emotional, or physical condition / Then-existing state of mind vs memory/belief
   - slot_id: "HS-0789"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-051"
   - legal_collision: "Then-existing state of mind vs memory/belief"
   - fact_pattern_frame: "letter describing plan to travel"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-022"
     - "WAL-HS-029"
     - "WAL-HS-036"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 264 — slots HS-0790 to HS-0792

Copy/paste or ask the Project session: `Generate Batch 264 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Mental, emotional, or physical condition / Intent statement to prove future conduct
   - slot_id: "HS-0790"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-052"
   - legal_collision: "Intent statement to prove future conduct"
   - fact_pattern_frame: "statement of pain or fear"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Mental, emotional, or physical condition / Exception scope boundary
   - slot_id: "HS-0791"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "statement of memory/belief"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Mental, emotional, or physical condition / Route underuse / route overuse
   - slot_id: "HS-0792"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "victim emotion rebutting self-defense"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-025"
     - "WAL-HS-032"
     - "WAL-HS-039"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 265 — slots HS-0793 to HS-0795

Copy/paste or ask the Project session: `Generate Batch 265 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Mental, emotional, or physical condition / Then-existing state of mind vs memory/belief
   - slot_id: "HS-0793"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-051"
   - legal_collision: "Then-existing state of mind vs memory/belief"
   - fact_pattern_frame: "letter describing plan to travel"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Mental, emotional, or physical condition / Intent statement to prove future conduct
   - slot_id: "HS-0794"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-052"
   - legal_collision: "Intent statement to prove future conduct"
   - fact_pattern_frame: "statement of pain or fear"
   - evidence_vehicle: "transcript"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Mental, emotional, or physical condition / Exception scope boundary
   - slot_id: "HS-0795"
   - official_outline_node: "HS-C2d"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Mental, emotional, or physical condition"
   - operating_description: "Then-existing state, intent, plan, pain; not memory/belief to prove remembered fact"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "statement of memory/belief"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-043"
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