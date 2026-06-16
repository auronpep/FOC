# BarMatrix Hearsay — Handoffs Batch 218 to 229

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

## Batch 218 — slots HS-0652 to HS-0654

Copy/paste or ask the Project session: `Generate Batch 218 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0652"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant threatens witness not to appear"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0653"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "party hides declarant"
   - evidence_vehicle: "computer record"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0654"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant kills witness for unrelated reason"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-031"
     - "WAL-HS-038"
     - "WAL-HS-045"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 219 — slots HS-0655 to HS-0657

Copy/paste or ask the Project session: `Generate Batch 219 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0655"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "wrongdoer causes absence without intent to stop testimony"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0656"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant threatens witness not to appear"
   - evidence_vehicle: "business record"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0657"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "party hides declarant"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
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
## Batch 220 — slots HS-0658 to HS-0660

Copy/paste or ask the Project session: `Generate Batch 220 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0658"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant kills witness for unrelated reason"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0659"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "wrongdoer causes absence without intent to stop testimony"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0660"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant threatens witness not to appear"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
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
## Batch 221 — slots HS-0661 to HS-0663

Copy/paste or ask the Project session: `Generate Batch 221 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0661"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "party hides declarant"
   - evidence_vehicle: "business record"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0662"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant kills witness for unrelated reason"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0663"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "wrongdoer causes absence without intent to stop testimony"
   - evidence_vehicle: "computer record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
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
## Batch 222 — slots HS-0664 to HS-0666

Copy/paste or ask the Project session: `Generate Batch 222 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0664"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant threatens witness not to appear"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0665"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "party hides declarant"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0666"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant kills witness for unrelated reason"
   - evidence_vehicle: "business record"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
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
## Batch 223 — slots HS-0667 to HS-0669

Copy/paste or ask the Project session: `Generate Batch 223 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0667"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "wrongdoer causes absence without intent to stop testimony"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0668"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant threatens witness not to appear"
   - evidence_vehicle: "computer record"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0669"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "party hides declarant"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "substantive exemption"
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
     - "WAL-HS-046"
     - "WAL-HS-005"
     - "WAL-HS-012"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 224 — slots HS-0670 to HS-0672

Copy/paste or ask the Project session: `Generate Batch 224 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0670"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant kills witness for unrelated reason"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0671"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "wrongdoer causes absence without intent to stop testimony"
   - evidence_vehicle: "business record"
   - offered_purpose: "dual route"
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
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0672"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant threatens witness not to appear"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
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
## Batch 225 — slots HS-0673 to HS-0675

Copy/paste or ask the Project session: `Generate Batch 225 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0673"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "party hides declarant"
   - evidence_vehicle: "computer record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0674"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "defendant kills witness for unrelated reason"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Forfeiture by wrongdoing / Forfeiture by wrongdoing
   - slot_id: "HS-0675"
   - official_outline_node: "HS-C1e"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Forfeiture by wrongdoing"
   - operating_description: "Wrongfully caused unavailability intending to prevent testimony; Confrontation intersection"
   - primary_tension_id: "HS-041"
   - legal_collision: "Forfeiture by wrongdoing"
   - fact_pattern_frame: "wrongdoer causes absence without intent to stop testimony"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-028"
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
## Batch 226 — slots HS-0676 to HS-0678

Copy/paste or ask the Project session: `Generate Batch 226 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Business records / Business record vs testimony about contents
   - slot_id: "HS-0676"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-043"
   - legal_collision: "Business record vs testimony about contents"
   - fact_pattern_frame: "hospital chart"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-029"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Business records / Business record source/recorder duty chain
   - slot_id: "HS-0677"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-044"
   - legal_collision: "Business record source/recorder duty chain"
   - fact_pattern_frame: "invoice records not produced"
   - evidence_vehicle: "computer record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-030"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Business records / Business record regular practice vs litigation/prepared memo
   - slot_id: "HS-0678"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-045"
   - legal_collision: "Business record regular practice vs litigation/prepared memo"
   - fact_pattern_frame: "daily memos prepared for litigation"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-030"
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
## Batch 227 — slots HS-0679 to HS-0681

Copy/paste or ask the Project session: `Generate Batch 227 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Business records / Absence of business record
   - slot_id: "HS-0679"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-046"
   - legal_collision: "Absence of business record"
   - fact_pattern_frame: "personal meeting notes"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-031"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Business records / Exception scope boundary
   - slot_id: "HS-0680"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "hospital chart"
   - evidence_vehicle: "business record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Business records / Route underuse / route overuse
   - slot_id: "HS-0681"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "invoice records not produced"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
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
## Batch 228 — slots HS-0682 to HS-0684

Copy/paste or ask the Project session: `Generate Batch 228 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Business records / Business record vs testimony about contents
   - slot_id: "HS-0682"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-043"
   - legal_collision: "Business record vs testimony about contents"
   - fact_pattern_frame: "daily memos prepared for litigation"
   - evidence_vehicle: "computer record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-029"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Business records / Business record source/recorder duty chain
   - slot_id: "HS-0683"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-044"
   - legal_collision: "Business record source/recorder duty chain"
   - fact_pattern_frame: "personal meeting notes"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-030"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Business records / Business record regular practice vs litigation/prepared memo
   - slot_id: "HS-0684"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-045"
   - legal_collision: "Business record regular practice vs litigation/prepared memo"
   - fact_pattern_frame: "hospital chart"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-030"
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
## Batch 229 — slots HS-0685 to HS-0687

Copy/paste or ask the Project session: `Generate Batch 229 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Business records / Absence of business record
   - slot_id: "HS-0685"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-046"
   - legal_collision: "Absence of business record"
   - fact_pattern_frame: "invoice records not produced"
   - evidence_vehicle: "business record"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-031"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Business records / Exception scope boundary
   - slot_id: "HS-0686"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "daily memos prepared for litigation"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Business records / Route underuse / route overuse
   - slot_id: "HS-0687"
   - official_outline_node: "HS-C2a"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Business records"
   - operating_description: "Regular course, near time, source/recorder duty, trustworthiness, absence of records, litigation-prepared records"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "personal meeting notes"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "94, 95, 113, 123, 139, 143"
   - repair_id: "REP-HS-009"
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