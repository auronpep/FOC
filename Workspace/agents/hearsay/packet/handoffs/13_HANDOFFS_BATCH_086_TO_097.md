# BarMatrix Hearsay — Handoffs Batch 086 to 097

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

## Batch 086 — slots HS-0256 to HS-0258

Copy/paste or ask the Project session: `Generate Batch 086 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Authorized statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0256"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "lawyer authorized to negotiate statement"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Authorized statements / Authorized speaker foundation
   - slot_id: "HS-0257"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-019"
   - legal_collision: "Authorized speaker foundation"
   - fact_pattern_frame: "spokesperson press statement"
   - evidence_vehicle: "transcript"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119"
   - repair_id: "REP-HS-016"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Authorized statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0258"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "employee with no authority purports to bind principal"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
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
## Batch 087 — slots HS-0259 to HS-0261

Copy/paste or ask the Project session: `Generate Batch 087 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Authorized statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0259"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "agent says 'I accept for principal'"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Authorized statements / Authorized speaker foundation
   - slot_id: "HS-0260"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-019"
   - legal_collision: "Authorized speaker foundation"
   - fact_pattern_frame: "lawyer authorized to negotiate statement"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119"
   - repair_id: "REP-HS-016"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Authorized statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0261"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "spokesperson press statement"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
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
## Batch 088 — slots HS-0262 to HS-0264

Copy/paste or ask the Project session: `Generate Batch 088 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Authorized statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0262"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "employee with no authority purports to bind principal"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Authorized statements / Authorized speaker foundation
   - slot_id: "HS-0263"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-019"
   - legal_collision: "Authorized speaker foundation"
   - fact_pattern_frame: "agent says 'I accept for principal'"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119"
   - repair_id: "REP-HS-016"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Authorized statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0264"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "lawyer authorized to negotiate statement"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
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
## Batch 089 — slots HS-0265 to HS-0267

Copy/paste or ask the Project session: `Generate Batch 089 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Authorized statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0265"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "spokesperson press statement"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Authorized statements / Authorized speaker foundation
   - slot_id: "HS-0266"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-019"
   - legal_collision: "Authorized speaker foundation"
   - fact_pattern_frame: "employee with no authority purports to bind principal"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119"
   - repair_id: "REP-HS-016"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Authorized statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0267"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "agent says 'I accept for principal'"
   - evidence_vehicle: "transcript"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
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
## Batch 090 — slots HS-0268 to HS-0270

Copy/paste or ask the Project session: `Generate Batch 090 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Authorized statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0268"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "lawyer authorized to negotiate statement"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Authorized statements / Authorized speaker foundation
   - slot_id: "HS-0269"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-019"
   - legal_collision: "Authorized speaker foundation"
   - fact_pattern_frame: "spokesperson press statement"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119"
   - repair_id: "REP-HS-016"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Authorized statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0270"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "employee with no authority purports to bind principal"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
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
## Batch 091 — slots HS-0271 to HS-0273

Copy/paste or ask the Project session: `Generate Batch 091 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Authorized statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0271"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "agent says 'I accept for principal'"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Authorized statements / Authorized speaker foundation
   - slot_id: "HS-0272"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-019"
   - legal_collision: "Authorized speaker foundation"
   - fact_pattern_frame: "lawyer authorized to negotiate statement"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119"
   - repair_id: "REP-HS-016"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Authorized statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0273"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "spokesperson press statement"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
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
## Batch 092 — slots HS-0274 to HS-0276

Copy/paste or ask the Project session: `Generate Batch 092 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Authorized statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0274"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "employee with no authority purports to bind principal"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Authorized statements / Authorized speaker foundation
   - slot_id: "HS-0275"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-019"
   - legal_collision: "Authorized speaker foundation"
   - fact_pattern_frame: "agent says 'I accept for principal'"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119"
   - repair_id: "REP-HS-016"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Authorized statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0276"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "lawyer authorized to negotiate statement"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
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
## Batch 093 — slots HS-0277 to HS-0279

Copy/paste or ask the Project session: `Generate Batch 093 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Authorized statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0277"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "spokesperson press statement"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Authorized statements / Authorized speaker foundation
   - slot_id: "HS-0278"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-019"
   - legal_collision: "Authorized speaker foundation"
   - fact_pattern_frame: "employee with no authority purports to bind principal"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119"
   - repair_id: "REP-HS-016"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0279"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "employee statement day after accident within delivery scope"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 094 — slots HS-0280 to HS-0282

Copy/paste or ask the Project session: `Generate Batch 094 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0280"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "former employee statement after termination"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0281"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "assistant statement about plans during job"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0282"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "guard's criminal trial statement after job ended"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 095 — slots HS-0283 to HS-0285

Copy/paste or ask the Project session: `Generate Batch 095 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0283"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "employee statement day after accident within delivery scope"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0284"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "former employee statement after termination"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0285"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "assistant statement about plans during job"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 096 — slots HS-0286 to HS-0288

Copy/paste or ask the Project session: `Generate Batch 096 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0286"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "guard's criminal trial statement after job ended"
   - evidence_vehicle: "transcript"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0287"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "employee statement day after accident within delivery scope"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0288"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "former employee statement after termination"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 097 — slots HS-0289 to HS-0291

Copy/paste or ask the Project session: `Generate Batch 097 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0289"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "assistant statement about plans during job"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0290"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "guard's criminal trial statement after job ended"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0291"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "employee statement day after accident within delivery scope"
   - evidence_vehicle: "transcript"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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