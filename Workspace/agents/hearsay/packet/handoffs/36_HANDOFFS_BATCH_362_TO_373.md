# BarMatrix Hearsay — Handoffs Batch 362 to 373

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

## Batch 362 — slots HS-1084 to HS-1086

Copy/paste or ask the Project session: `Generate Batch 362 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Testimonial hearsay gate / Confrontation: testimonial hearsay gate
   - slot_id: "HS-1084"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-069"
   - legal_collision: "Confrontation: testimonial hearsay gate"
   - fact_pattern_frame: "grand jury testimony by absent witness"
   - evidence_vehicle: "computer record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Testimonial hearsay gate / Emergency vs investigation primary purpose
   - slot_id: "HS-1085"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-070"
   - legal_collision: "Emergency vs investigation primary purpose"
   - fact_pattern_frame: "videotaped police interview"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Testimonial hearsay gate / Prior testimony and Confrontation overlap
   - slot_id: "HS-1086"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-073"
   - legal_collision: "Prior testimony and Confrontation overlap"
   - fact_pattern_frame: "routine bank computer record"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-031"
     - "WAL-HS-038"
     - "WAL-HS-045"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 363 — slots HS-1087 to HS-1089

Copy/paste or ask the Project session: `Generate Batch 363 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Testimonial hearsay gate / Nontruth use and Confrontation
   - slot_id: "HS-1087"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-074"
   - legal_collision: "Nontruth use and Confrontation"
   - fact_pattern_frame: "eyewitness lineup ID through officer"
   - evidence_vehicle: "business record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "144"
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Testimonial hearsay gate / Confrontation: testimonial hearsay gate
   - slot_id: "HS-1088"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-069"
   - legal_collision: "Confrontation: testimonial hearsay gate"
   - fact_pattern_frame: "grand jury testimony by absent witness"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Testimonial hearsay gate / Emergency vs investigation primary purpose
   - slot_id: "HS-1089"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-070"
   - legal_collision: "Emergency vs investigation primary purpose"
   - fact_pattern_frame: "videotaped police interview"
   - evidence_vehicle: "computer record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
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
## Batch 364 — slots HS-1090 to HS-1092

Copy/paste or ask the Project session: `Generate Batch 364 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Testimonial hearsay gate / Prior testimony and Confrontation overlap
   - slot_id: "HS-1090"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-073"
   - legal_collision: "Prior testimony and Confrontation overlap"
   - fact_pattern_frame: "routine bank computer record"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Testimonial hearsay gate / Nontruth use and Confrontation
   - slot_id: "HS-1091"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-074"
   - legal_collision: "Nontruth use and Confrontation"
   - fact_pattern_frame: "eyewitness lineup ID through officer"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "144"
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Testimonial hearsay gate / Confrontation: testimonial hearsay gate
   - slot_id: "HS-1092"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-069"
   - legal_collision: "Confrontation: testimonial hearsay gate"
   - fact_pattern_frame: "grand jury testimony by absent witness"
   - evidence_vehicle: "business record"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
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
## Batch 365 — slots HS-1093 to HS-1095

Copy/paste or ask the Project session: `Generate Batch 365 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Testimonial hearsay gate / Emergency vs investigation primary purpose
   - slot_id: "HS-1093"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-070"
   - legal_collision: "Emergency vs investigation primary purpose"
   - fact_pattern_frame: "videotaped police interview"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Testimonial hearsay gate / Prior testimony and Confrontation overlap
   - slot_id: "HS-1094"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-073"
   - legal_collision: "Prior testimony and Confrontation overlap"
   - fact_pattern_frame: "routine bank computer record"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Testimonial hearsay gate / Nontruth use and Confrontation
   - slot_id: "HS-1095"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-074"
   - legal_collision: "Nontruth use and Confrontation"
   - fact_pattern_frame: "eyewitness lineup ID through officer"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "144"
   - repair_id: "REP-HS-001"
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
## Batch 366 — slots HS-1096 to HS-1098

Copy/paste or ask the Project session: `Generate Batch 366 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Testimonial hearsay gate / Confrontation: testimonial hearsay gate
   - slot_id: "HS-1096"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-069"
   - legal_collision: "Confrontation: testimonial hearsay gate"
   - fact_pattern_frame: "grand jury testimony by absent witness"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Testimonial hearsay gate / Emergency vs investigation primary purpose
   - slot_id: "HS-1097"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-070"
   - legal_collision: "Emergency vs investigation primary purpose"
   - fact_pattern_frame: "videotaped police interview"
   - evidence_vehicle: "business record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Testimonial hearsay gate / Prior testimony and Confrontation overlap
   - slot_id: "HS-1098"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-073"
   - legal_collision: "Prior testimony and Confrontation overlap"
   - fact_pattern_frame: "routine bank computer record"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
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
## Batch 367 — slots HS-1099 to HS-1101

Copy/paste or ask the Project session: `Generate Batch 367 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Testimonial hearsay gate / Nontruth use and Confrontation
   - slot_id: "HS-1099"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-074"
   - legal_collision: "Nontruth use and Confrontation"
   - fact_pattern_frame: "eyewitness lineup ID through officer"
   - evidence_vehicle: "computer record"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "144"
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Testimonial hearsay gate / Confrontation: testimonial hearsay gate
   - slot_id: "HS-1100"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-069"
   - legal_collision: "Confrontation: testimonial hearsay gate"
   - fact_pattern_frame: "grand jury testimony by absent witness"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Testimonial hearsay gate / Emergency vs investigation primary purpose
   - slot_id: "HS-1101"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-070"
   - legal_collision: "Emergency vs investigation primary purpose"
   - fact_pattern_frame: "videotaped police interview"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-046"
     - "WAL-HS-005"
     - "WAL-HS-012"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 368 — slots HS-1102 to HS-1104

Copy/paste or ask the Project session: `Generate Batch 368 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Testimonial hearsay gate / Prior testimony and Confrontation overlap
   - slot_id: "HS-1102"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-073"
   - legal_collision: "Prior testimony and Confrontation overlap"
   - fact_pattern_frame: "routine bank computer record"
   - evidence_vehicle: "business record"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Testimonial hearsay gate / Nontruth use and Confrontation
   - slot_id: "HS-1103"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-074"
   - legal_collision: "Nontruth use and Confrontation"
   - fact_pattern_frame: "eyewitness lineup ID through officer"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "144"
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Testimonial hearsay gate / Confrontation: testimonial hearsay gate
   - slot_id: "HS-1104"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-069"
   - legal_collision: "Confrontation: testimonial hearsay gate"
   - fact_pattern_frame: "grand jury testimony by absent witness"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-001"
     - "WAL-HS-008"
     - "WAL-HS-015"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 369 — slots HS-1105 to HS-1107

Copy/paste or ask the Project session: `Generate Batch 369 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Testimonial hearsay gate / Emergency vs investigation primary purpose
   - slot_id: "HS-1105"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-070"
   - legal_collision: "Emergency vs investigation primary purpose"
   - fact_pattern_frame: "videotaped police interview"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Testimonial hearsay gate / Prior testimony and Confrontation overlap
   - slot_id: "HS-1106"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-073"
   - legal_collision: "Prior testimony and Confrontation overlap"
   - fact_pattern_frame: "routine bank computer record"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Testimonial hearsay gate / Nontruth use and Confrontation
   - slot_id: "HS-1107"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-074"
   - legal_collision: "Nontruth use and Confrontation"
   - fact_pattern_frame: "eyewitness lineup ID through officer"
   - evidence_vehicle: "business record"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "144"
   - repair_id: "REP-HS-001"
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
## Batch 370 — slots HS-1108 to HS-1110

Copy/paste or ask the Project session: `Generate Batch 370 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Testimonial hearsay gate / Confrontation: testimonial hearsay gate
   - slot_id: "HS-1108"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-069"
   - legal_collision: "Confrontation: testimonial hearsay gate"
   - fact_pattern_frame: "grand jury testimony by absent witness"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Testimonial hearsay gate / Emergency vs investigation primary purpose
   - slot_id: "HS-1109"
   - official_outline_node: "HS-D1"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Testimonial hearsay gate"
   - operating_description: "Criminal case only, testimonial statement, offered for truth, unavailability/prior cross"
   - primary_tension_id: "HS-070"
   - legal_collision: "Emergency vs investigation primary purpose"
   - fact_pattern_frame: "videotaped police interview"
   - evidence_vehicle: "computer record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "144"
   - repair_id: "REP-HS-044"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forensic/expert-basis statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1110"
   - official_outline_node: "HS-D2"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Forensic/expert-basis statements"
   - operating_description: "Absent analyst, substitute expert, statements used for truth, Smith v. Arizona overlay"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "substitute analyst repeats absent lab notes"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
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
## Batch 371 — slots HS-1111 to HS-1113

Copy/paste or ask the Project session: `Generate Batch 371 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forensic/expert-basis statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1111"
   - official_outline_node: "HS-D2"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Forensic/expert-basis statements"
   - operating_description: "Absent analyst, substitute expert, statements used for truth, Smith v. Arizona overlay"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "expert independently retests sample"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
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

2. Forensic/expert-basis statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1112"
   - official_outline_node: "HS-D2"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Forensic/expert-basis statements"
   - operating_description: "Absent analyst, substitute expert, statements used for truth, Smith v. Arizona overlay"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "basis-only forensic report"
   - evidence_vehicle: "business record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forensic/expert-basis statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1113"
   - official_outline_node: "HS-D2"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Forensic/expert-basis statements"
   - operating_description: "Absent analyst, substitute expert, statements used for truth, Smith v. Arizona overlay"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "testimonial lab certificate"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
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
## Batch 372 — slots HS-1114 to HS-1116

Copy/paste or ask the Project session: `Generate Batch 372 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forensic/expert-basis statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1114"
   - official_outline_node: "HS-D2"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Forensic/expert-basis statements"
   - operating_description: "Absent analyst, substitute expert, statements used for truth, Smith v. Arizona overlay"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "substitute analyst repeats absent lab notes"
   - evidence_vehicle: "computer record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Forensic/expert-basis statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1115"
   - official_outline_node: "HS-D2"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Forensic/expert-basis statements"
   - operating_description: "Absent analyst, substitute expert, statements used for truth, Smith v. Arizona overlay"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "expert independently retests sample"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forensic/expert-basis statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1116"
   - official_outline_node: "HS-D2"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Forensic/expert-basis statements"
   - operating_description: "Absent analyst, substitute expert, statements used for truth, Smith v. Arizona overlay"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "basis-only forensic report"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-013"
     - "WAL-HS-020"
     - "WAL-HS-027"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 373 — slots HS-1117 to HS-1119

Copy/paste or ask the Project session: `Generate Batch 373 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forensic/expert-basis statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1117"
   - official_outline_node: "HS-D2"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Forensic/expert-basis statements"
   - operating_description: "Absent analyst, substitute expert, statements used for truth, Smith v. Arizona overlay"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "testimonial lab certificate"
   - evidence_vehicle: "business record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
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

2. Forensic/expert-basis statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1118"
   - official_outline_node: "HS-D2"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Forensic/expert-basis statements"
   - operating_description: "Absent analyst, substitute expert, statements used for truth, Smith v. Arizona overlay"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "substitute analyst repeats absent lab notes"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forensic/expert-basis statements / Forensic/expert-basis testimonial hearsay
   - slot_id: "HS-1119"
   - official_outline_node: "HS-D2"
   - official_section: "D. Confrontation Clause"
   - official_topic: "Forensic/expert-basis statements"
   - operating_description: "Absent analyst, substitute expert, statements used for truth, Smith v. Arizona overlay"
   - primary_tension_id: "HS-071"
   - legal_collision: "Forensic/expert-basis testimonial hearsay"
   - fact_pattern_frame: "expert independently retests sample"
   - evidence_vehicle: "computer record"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-045"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-016"
     - "WAL-HS-023"
     - "WAL-HS-030"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.