# BarMatrix Hearsay — Handoffs Batch 206 to 217

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

## Batch 206 — slots HS-0616 to HS-0618

Copy/paste or ask the Project session: `Generate Batch 206 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0616"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying person mentions unpaid loan"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0617"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying declarant discusses family history"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0618"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "civil action dying statement about unrelated debt"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-043"
     - "WAL-HS-002"
     - "WAL-HS-009"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 207 — slots HS-0619 to HS-0621

Copy/paste or ask the Project session: `Generate Batch 207 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0619"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying person names shooter"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0620"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying person mentions unpaid loan"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0621"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying declarant discusses family history"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
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
## Batch 208 — slots HS-0622 to HS-0624

Copy/paste or ask the Project session: `Generate Batch 208 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0622"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "civil action dying statement about unrelated debt"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0623"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying person names shooter"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0624"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying person mentions unpaid loan"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-001"
     - "WAL-HS-008"
     - "WAL-HS-015"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 209 — slots HS-0625 to HS-0627

Copy/paste or ask the Project session: `Generate Batch 209 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0625"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying declarant discusses family history"
   - evidence_vehicle: "transcript"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0626"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "civil action dying statement about unrelated debt"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0627"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying person names shooter"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
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
## Batch 210 — slots HS-0628 to HS-0630

Copy/paste or ask the Project session: `Generate Batch 210 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0628"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying person mentions unpaid loan"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0629"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying declarant discusses family history"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0630"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "civil action dying statement about unrelated debt"
   - evidence_vehicle: "transcript"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-007"
     - "WAL-HS-014"
     - "WAL-HS-021"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 211 — slots HS-0631 to HS-0633

Copy/paste or ask the Project session: `Generate Batch 211 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Dying declaration / Dying declaration subject-matter limit
   - slot_id: "HS-0631"
   - official_outline_node: "HS-C1c"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Dying declaration"
   - operating_description: "Civil/all criminal homicide FRE scope, impending death belief, cause/circumstances subject limit"
   - primary_tension_id: "HS-039"
   - legal_collision: "Dying declaration subject-matter limit"
   - fact_pattern_frame: "dying person names shooter"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "122"
   - repair_id: "REP-HS-026"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0632"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "deceased relative states birth/marriage"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0633"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "family bible record"
   - evidence_vehicle: "business record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-010"
     - "WAL-HS-017"
     - "WAL-HS-024"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 212 — slots HS-0634 to HS-0636

Copy/paste or ask the Project session: `Generate Batch 212 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0634"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "ancestry/lineage statement"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0635"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "statement about property boundary mixed with family history"
   - evidence_vehicle: "computer record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0636"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "deceased relative states birth/marriage"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
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
## Batch 213 — slots HS-0637 to HS-0639

Copy/paste or ask the Project session: `Generate Batch 213 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0637"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "family bible record"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0638"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "ancestry/lineage statement"
   - evidence_vehicle: "business record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0639"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "statement about property boundary mixed with family history"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-016"
     - "WAL-HS-023"
     - "WAL-HS-030"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 214 — slots HS-0640 to HS-0642

Copy/paste or ask the Project session: `Generate Batch 214 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0640"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "deceased relative states birth/marriage"
   - evidence_vehicle: "computer record"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0641"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "family bible record"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0642"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "ancestry/lineage statement"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
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
## Batch 215 — slots HS-0643 to HS-0645

Copy/paste or ask the Project session: `Generate Batch 215 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0643"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "statement about property boundary mixed with family history"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0644"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "deceased relative states birth/marriage"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0645"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "family bible record"
   - evidence_vehicle: "computer record"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
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
## Batch 216 — slots HS-0646 to HS-0648

Copy/paste or ask the Project session: `Generate Batch 216 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0646"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "ancestry/lineage statement"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statement of personal/family history / Personal/family history
   - slot_id: "HS-0647"
   - official_outline_node: "HS-C1d"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement of personal/family history"
   - operating_description: "Declarant/family relationship, pedigree facts, unavailability, reputation/document variants"
   - primary_tension_id: "HS-040"
   - legal_collision: "Personal/family history"
   - fact_pattern_frame: "statement about property boundary mixed with family history"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-027"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0648"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant threatens witness not to appear"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
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
## Batch 217 — slots HS-0649 to HS-0651

Copy/paste or ask the Project session: `Generate Batch 217 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0649"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "party hides declarant"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0650"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant kills witness for unrelated reason"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0651"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "wrongdoer causes absence without intent to stop testimony"
   - evidence_vehicle: "business record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-028"
     - "WAL-HS-035"
     - "WAL-HS-042"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.