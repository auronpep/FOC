# BarMatrix Hearsay — Handoffs Batch 098 to 109

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

## Batch 098 — slots HS-0292 to HS-0294

Copy/paste or ask the Project session: `Generate Batch 098 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0292"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "former employee statement after termination"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0293"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "assistant statement about plans during job"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0294"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "guard's criminal trial statement after job ended"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 099 — slots HS-0295 to HS-0297

Copy/paste or ask the Project session: `Generate Batch 099 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0295"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "employee statement day after accident within delivery scope"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0296"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "former employee statement after termination"
   - evidence_vehicle: "transcript"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0297"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "assistant statement about plans during job"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 100 — slots HS-0298 to HS-0300

Copy/paste or ask the Project session: `Generate Batch 100 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0298"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "guard's criminal trial statement after job ended"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0299"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "employee statement day after accident within delivery scope"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0300"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "former employee statement after termination"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 101 — slots HS-0301 to HS-0303

Copy/paste or ask the Project session: `Generate Batch 101 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0301"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "assistant statement about plans during job"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0302"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "guard's criminal trial statement after job ended"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0303"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "employee statement day after accident within delivery scope"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 102 — slots HS-0304 to HS-0306

Copy/paste or ask the Project session: `Generate Batch 102 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0304"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "former employee statement after termination"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "chain-pass/fail"
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
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0305"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "assistant statement about plans during job"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0306"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "guard's criminal trial statement after job ended"
   - evidence_vehicle: "transcript"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 103 — slots HS-0307 to HS-0309

Copy/paste or ask the Project session: `Generate Batch 103 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0307"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "employee statement day after accident within delivery scope"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "notice/effect"
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
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0308"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "former employee statement after termination"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0309"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "assistant statement about plans during job"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 104 — slots HS-0310 to HS-0312

Copy/paste or ask the Project session: `Generate Batch 104 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0310"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "guard's criminal trial statement after job ended"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0311"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "employee statement day after accident within delivery scope"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0312"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "former employee statement after termination"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 105 — slots HS-0313 to HS-0315

Copy/paste or ask the Project session: `Generate Batch 105 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0313"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "assistant statement about plans during job"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Vicarious statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0314"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "guard's criminal trial statement after job ended"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Vicarious statements / Vicarious employee/agent statement scope/timing
   - slot_id: "HS-0315"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-020"
   - legal_collision: "Vicarious employee/agent statement scope/timing"
   - fact_pattern_frame: "employee statement day after accident within delivery scope"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-017"
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
## Batch 106 — slots HS-0316 to HS-0318

Copy/paste or ask the Project session: `Generate Batch 106 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Vicarious statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0316"
   - official_outline_node: "HS-B2c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Vicarious statements"
   - operating_description: "Employee/agent statements during relationship and on matter within scope"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "former employee statement after termination"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "93, 142, 116"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0317"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "co-conspirator operational instruction"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Co-conspirator statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0318"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "post-arrest confession to girlfriend"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98"
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
## Batch 107 — slots HS-0319 to HS-0321

Copy/paste or ask the Project session: `Generate Batch 107 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Co-conspirator statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0319"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "statement allocating proceeds during scheme"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0320"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "idle narrative after conspiracy ended"
   - evidence_vehicle: "transcript"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Co-conspirator statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0321"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "co-conspirator operational instruction"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98"
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
## Batch 108 — slots HS-0322 to HS-0324

Copy/paste or ask the Project session: `Generate Batch 108 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Co-conspirator statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0322"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "post-arrest confession to girlfriend"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0323"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "statement allocating proceeds during scheme"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Co-conspirator statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0324"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "idle narrative after conspiracy ended"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98"
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
## Batch 109 — slots HS-0325 to HS-0327

Copy/paste or ask the Project session: `Generate Batch 109 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Co-conspirator statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0325"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "co-conspirator operational instruction"
   - evidence_vehicle: "transcript"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0326"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "post-arrest confession to girlfriend"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Co-conspirator statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0327"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "statement allocating proceeds during scheme"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-040"
     - "WAL-HS-047"
     - "WAL-HS-006"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.