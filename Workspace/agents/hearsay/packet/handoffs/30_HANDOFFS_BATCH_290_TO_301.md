# BarMatrix Hearsay — Handoffs Batch 290 to 301

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

## Batch 290 — slots HS-0868 to HS-0870

Copy/paste or ask the Project session: `Generate Batch 290 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Recorded recollection channel / exhibit limit
   - slot_id: "HS-0868"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-056"
   - legal_collision: "Recorded recollection channel / exhibit limit"
   - fact_pattern_frame: "license recording after accident"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Exception scope boundary
   - slot_id: "HS-0869"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "self-initiated notes with no memory failure"
   - evidence_vehicle: "transcript"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Route underuse / route overuse
   - slot_id: "HS-0870"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "record made fresh and accurate but witness cannot recall"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-009"
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
## Batch 291 — slots HS-0871 to HS-0873

Copy/paste or ask the Project session: `Generate Batch 291 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Recorded recollection foundation
   - slot_id: "HS-0871"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-055"
   - legal_collision: "Recorded recollection foundation"
   - fact_pattern_frame: "police shift-end dictation"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Recorded recollection channel / exhibit limit
   - slot_id: "HS-0872"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-056"
   - legal_collision: "Recorded recollection channel / exhibit limit"
   - fact_pattern_frame: "license recording after accident"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Exception scope boundary
   - slot_id: "HS-0873"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "self-initiated notes with no memory failure"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-043"
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
## Batch 292 — slots HS-0874 to HS-0876

Copy/paste or ask the Project session: `Generate Batch 292 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Route underuse / route overuse
   - slot_id: "HS-0874"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "record made fresh and accurate but witness cannot recall"
   - evidence_vehicle: "transcript"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Recorded recollection foundation
   - slot_id: "HS-0875"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-055"
   - legal_collision: "Recorded recollection foundation"
   - fact_pattern_frame: "police shift-end dictation"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Recorded recollection channel / exhibit limit
   - slot_id: "HS-0876"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-056"
   - legal_collision: "Recorded recollection channel / exhibit limit"
   - fact_pattern_frame: "license recording after accident"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
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
     - "WAL-HS-013"
     - "WAL-HS-020"
     - "WAL-HS-027"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 293 — slots HS-0877 to HS-0879

Copy/paste or ask the Project session: `Generate Batch 293 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Exception scope boundary
   - slot_id: "HS-0877"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "self-initiated notes with no memory failure"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Route underuse / route overuse
   - slot_id: "HS-0878"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "record made fresh and accurate but witness cannot recall"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
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
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Recorded recollection foundation
   - slot_id: "HS-0879"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-055"
   - legal_collision: "Recorded recollection foundation"
   - fact_pattern_frame: "police shift-end dictation"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
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
     - "WAL-HS-016"
     - "WAL-HS-023"
     - "WAL-HS-030"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 294 — slots HS-0880 to HS-0882

Copy/paste or ask the Project session: `Generate Batch 294 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Recorded recollection channel / exhibit limit
   - slot_id: "HS-0880"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-056"
   - legal_collision: "Recorded recollection channel / exhibit limit"
   - fact_pattern_frame: "license recording after accident"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
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
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Exception scope boundary
   - slot_id: "HS-0881"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "self-initiated notes with no memory failure"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
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
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Route underuse / route overuse
   - slot_id: "HS-0882"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "record made fresh and accurate but witness cannot recall"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
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
     - "WAL-HS-019"
     - "WAL-HS-026"
     - "WAL-HS-033"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 295 — slots HS-0883 to HS-0885

Copy/paste or ask the Project session: `Generate Batch 295 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Recorded recollection foundation
   - slot_id: "HS-0883"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-055"
   - legal_collision: "Recorded recollection foundation"
   - fact_pattern_frame: "police shift-end dictation"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "notice/effect"
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
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Recorded recollection channel / exhibit limit
   - slot_id: "HS-0884"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-056"
   - legal_collision: "Recorded recollection channel / exhibit limit"
   - fact_pattern_frame: "license recording after accident"
   - evidence_vehicle: "transcript"
   - offered_purpose: "reason-for-action"
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
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Exception scope boundary
   - slot_id: "HS-0885"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "self-initiated notes with no memory failure"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "knowledge/mens-rea"
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
     - "WAL-HS-022"
     - "WAL-HS-029"
     - "WAL-HS-036"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 296 — slots HS-0886 to HS-0888

Copy/paste or ask the Project session: `Generate Batch 296 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Route underuse / route overuse
   - slot_id: "HS-0886"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "record made fresh and accurate but witness cannot recall"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Past recollection recorded / Recorded recollection foundation
   - slot_id: "HS-0887"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-055"
   - legal_collision: "Recorded recollection foundation"
   - fact_pattern_frame: "police shift-end dictation"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exemption"
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
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Past recollection recorded / Recorded recollection channel / exhibit limit
   - slot_id: "HS-0888"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-056"
   - legal_collision: "Recorded recollection channel / exhibit limit"
   - fact_pattern_frame: "license recording after accident"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-035"
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
## Batch 297 — slots HS-0889 to HS-0891

Copy/paste or ask the Project session: `Generate Batch 297 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Past recollection recorded / Exception scope boundary
   - slot_id: "HS-0889"
   - official_outline_node: "HS-C2f"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Past recollection recorded"
   - operating_description: "Once knew, cannot recall fully, fresh/adopted, accurate; read-only/exhibit limits"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "self-initiated notes with no memory failure"
   - evidence_vehicle: "transcript"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "115, 135, 138, 139"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Public record official duty
   - slot_id: "HS-0890"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-057"
   - legal_collision: "Public record official duty"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-036"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Absence of public record / certification
   - slot_id: "HS-0891"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-058"
   - legal_collision: "Absence of public record / certification"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-031"
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
## Batch 298 — slots HS-0892 to HS-0894

Copy/paste or ask the Project session: `Generate Batch 298 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Public report embedded outsider statement
   - slot_id: "HS-0892"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-059"
   - legal_collision: "Public report embedded outsider statement"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "business record"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Exception scope boundary
   - slot_id: "HS-0893"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Route underuse / route overuse
   - slot_id: "HS-0894"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "computer record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-009"
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
## Batch 299 — slots HS-0895 to HS-0897

Copy/paste or ask the Project session: `Generate Batch 299 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Public record official duty
   - slot_id: "HS-0895"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-057"
   - legal_collision: "Public record official duty"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-036"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Absence of public record / certification
   - slot_id: "HS-0896"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-058"
   - legal_collision: "Absence of public record / certification"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-031"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Public report embedded outsider statement
   - slot_id: "HS-0897"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-059"
   - legal_collision: "Public report embedded outsider statement"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "business record"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-034"
     - "WAL-HS-041"
     - "WAL-HS-048"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 300 — slots HS-0898 to HS-0900

Copy/paste or ask the Project session: `Generate Batch 300 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Exception scope boundary
   - slot_id: "HS-0898"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Route underuse / route overuse
   - slot_id: "HS-0899"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "computer record"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Public record official duty
   - slot_id: "HS-0900"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-057"
   - legal_collision: "Public record official duty"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-036"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-037"
     - "WAL-HS-044"
     - "WAL-HS-003"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 301 — slots HS-0901 to HS-0903

Copy/paste or ask the Project session: `Generate Batch 301 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Absence of public record / certification
   - slot_id: "HS-0901"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-058"
   - legal_collision: "Absence of public record / certification"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-031"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Public report embedded outsider statement
   - slot_id: "HS-0902"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-059"
   - legal_collision: "Public report embedded outsider statement"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "business record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Exception scope boundary
   - slot_id: "HS-0903"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-043"
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