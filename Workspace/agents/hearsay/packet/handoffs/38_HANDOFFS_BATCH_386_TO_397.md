# BarMatrix Hearsay — Handoffs Batch 386 to 397

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

## Batch 386 — slots HS-1156 to HS-1158

Copy/paste or ask the Project session: `Generate Batch 386 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Emergency vs past-facts statements / Nontruth use and Confrontation
   - slot_id: "HS-1156"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-074"
   - legal_collision: "Nontruth use and Confrontation"
   - fact_pattern_frame: "child interview for forensic prosecution"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Emergency vs past-facts statements / Confrontation: testimonial hearsay gate
   - slot_id: "HS-1157"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-069"
   - legal_collision: "Confrontation: testimonial hearsay gate"
   - fact_pattern_frame: "911 call during active attack"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Emergency vs past-facts statements / Emergency vs investigation primary purpose
   - slot_id: "HS-1158"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-070"
   - legal_collision: "Emergency vs investigation primary purpose"
   - fact_pattern_frame: "station-house interview after scene secure"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-044"
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
## Batch 387 — slots HS-1159 to HS-1161

Copy/paste or ask the Project session: `Generate Batch 387 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Emergency vs past-facts statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1159"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "on-scene emergency questioning"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Emergency vs past-facts statements / Business/public records vs testimonial certificates
   - slot_id: "HS-1160"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "child interview for forensic prosecution"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Emergency vs past-facts statements / Prior testimony and Confrontation overlap
   - slot_id: "HS-1161"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-073"
   - legal_collision: "Prior testimony and Confrontation overlap"
   - fact_pattern_frame: "911 call during active attack"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-010"
     - "WAL-HS-017"
     - "WAL-HS-024"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 388 — slots HS-1162 to HS-1164

Copy/paste or ask the Project session: `Generate Batch 388 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Emergency vs past-facts statements / Nontruth use and Confrontation
   - slot_id: "HS-1162"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-074"
   - legal_collision: "Nontruth use and Confrontation"
   - fact_pattern_frame: "station-house interview after scene secure"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Emergency vs past-facts statements / Confrontation: testimonial hearsay gate
   - slot_id: "HS-1163"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-069"
   - legal_collision: "Confrontation: testimonial hearsay gate"
   - fact_pattern_frame: "on-scene emergency questioning"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Emergency vs past-facts statements / Emergency vs investigation primary purpose
   - slot_id: "HS-1164"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-070"
   - legal_collision: "Emergency vs investigation primary purpose"
   - fact_pattern_frame: "child interview for forensic prosecution"
   - evidence_vehicle: "transcript"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-044"
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
## Batch 389 — slots HS-1165 to HS-1167

Copy/paste or ask the Project session: `Generate Batch 389 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Emergency vs past-facts statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1165"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "911 call during active attack"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Emergency vs past-facts statements / Business/public records vs testimonial certificates
   - slot_id: "HS-1166"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "station-house interview after scene secure"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Emergency vs past-facts statements / Prior testimony and Confrontation overlap
   - slot_id: "HS-1167"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-073"
   - legal_collision: "Prior testimony and Confrontation overlap"
   - fact_pattern_frame: "on-scene emergency questioning"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-044"
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
## Batch 390 — slots HS-1168 to HS-1170

Copy/paste or ask the Project session: `Generate Batch 390 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Emergency vs past-facts statements / Nontruth use and Confrontation
   - slot_id: "HS-1168"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-074"
   - legal_collision: "Nontruth use and Confrontation"
   - fact_pattern_frame: "child interview for forensic prosecution"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Emergency vs past-facts statements / Confrontation: testimonial hearsay gate
   - slot_id: "HS-1169"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-069"
   - legal_collision: "Confrontation: testimonial hearsay gate"
   - fact_pattern_frame: "911 call during active attack"
   - evidence_vehicle: "transcript"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Emergency vs past-facts statements / Emergency vs investigation primary purpose
   - slot_id: "HS-1170"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-070"
   - legal_collision: "Emergency vs investigation primary purpose"
   - fact_pattern_frame: "station-house interview after scene secure"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-044"
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
## Batch 391 — slots HS-1171 to HS-1173

Copy/paste or ask the Project session: `Generate Batch 391 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Emergency vs past-facts statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1171"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "on-scene emergency questioning"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Emergency vs past-facts statements / Business/public records vs testimonial certificates
   - slot_id: "HS-1172"
   - official_outline_node: "HS-D3"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Emergency vs past-facts statements"
   - operating_description: "911/on-scene emergency vs formal investigation; primary purpose"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "child interview for forensic prosecution"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1173"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "business computer records"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-022"
     - "WAL-HS-029"
     - "WAL-HS-036"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 392 — slots HS-1174 to HS-1176

Copy/paste or ask the Project session: `Generate Batch 392 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1174"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "certificate of analysis"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1175"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "absence certification in criminal case"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1176"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "public record created for administrative purpose"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
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
## Batch 393 — slots HS-1177 to HS-1179

Copy/paste or ask the Project session: `Generate Batch 393 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1177"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "business computer records"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1178"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "certificate of analysis"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1179"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "absence certification in criminal case"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
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
## Batch 394 — slots HS-1180 to HS-1182

Copy/paste or ask the Project session: `Generate Batch 394 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1180"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "public record created for administrative purpose"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1181"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "business computer records"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1182"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "certificate of analysis"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
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
## Batch 395 — slots HS-1183 to HS-1185

Copy/paste or ask the Project session: `Generate Batch 395 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1183"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "absence certification in criminal case"
   - evidence_vehicle: "transcript"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1184"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "public record created for administrative purpose"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1185"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "business computer records"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-034"
     - "WAL-HS-041"
     - "WAL-HS-048"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 396 — slots HS-1186 to HS-1188

Copy/paste or ask the Project session: `Generate Batch 396 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1186"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "certificate of analysis"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1187"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "absence certification in criminal case"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1188"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "public record created for administrative purpose"
   - evidence_vehicle: "transcript"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-037"
     - "WAL-HS-044"
     - "WAL-HS-003"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 397 — slots HS-1189 to HS-1191

Copy/paste or ask the Project session: `Generate Batch 397 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1189"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "business computer records"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1190"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "certificate of analysis"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Records and certificates / Business/public records vs testimonial certificates
   - slot_id: "HS-1191"
   - official_outline_node: "HS-D4"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Records and certificates"
   - operating_description: "Business/public records vs testimonial certificates/affidavits; absence certifications in criminal cases"
   - primary_tension_id: "HS-072"
   - legal_collision: "Business/public records vs testimonial certificates"
   - fact_pattern_frame: "absence certification in criminal case"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "126, 131, 144"
   - repair_id: "REP-HS-046"
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