# BarMatrix Hearsay — Handoffs Batch 026 to 037

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

## Batch 026 — slots HS-0076 to HS-0078

Copy/paste or ask the Project session: `Generate Batch 026 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0076"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "hospital record includes patient and doctor statements"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0077"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "tenant repeats resident's statement about manager notice"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0078"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "police report contains eyewitness account"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
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
## Batch 027 — slots HS-0079 to HS-0081

Copy/paste or ask the Project session: `Generate Batch 027 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0079"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "trial transcript contains witness repeating agent instruction"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0080"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "hospital record includes patient and doctor statements"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0081"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "tenant repeats resident's statement about manager notice"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
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
## Batch 028 — slots HS-0082 to HS-0084

Copy/paste or ask the Project session: `Generate Batch 028 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0082"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "police report contains eyewitness account"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0083"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "trial transcript contains witness repeating agent instruction"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0084"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "hospital record includes patient and doctor statements"
   - evidence_vehicle: "transcript"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
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
## Batch 029 — slots HS-0085 to HS-0087

Copy/paste or ask the Project session: `Generate Batch 029 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0085"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "tenant repeats resident's statement about manager notice"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0086"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "police report contains eyewitness account"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0087"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "trial transcript contains witness repeating agent instruction"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
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
## Batch 030 — slots HS-0088 to HS-0090

Copy/paste or ask the Project session: `Generate Batch 030 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0088"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "hospital record includes patient and doctor statements"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0089"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "tenant repeats resident's statement about manager notice"
   - evidence_vehicle: "transcript"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0090"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "police report contains eyewitness account"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
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
## Batch 031 — slots HS-0091 to HS-0093

Copy/paste or ask the Project session: `Generate Batch 031 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0091"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "trial transcript contains witness repeating agent instruction"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0092"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "hospital record includes patient and doctor statements"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0093"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "tenant repeats resident's statement about manager notice"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
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
## Batch 032 — slots HS-0094 to HS-0096

Copy/paste or ask the Project session: `Generate Batch 032 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0094"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "police report contains eyewitness account"
   - evidence_vehicle: "transcript"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0095"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "trial transcript contains witness repeating agent instruction"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0096"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "hospital record includes patient and doctor statements"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
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
## Batch 033 — slots HS-0097 to HS-0099

Copy/paste or ask the Project session: `Generate Batch 033 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0097"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "tenant repeats resident's statement about manager notice"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0098"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "police report contains eyewitness account"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0099"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "trial transcript contains witness repeating agent instruction"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
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
## Batch 034 — slots HS-0100 to HS-0102

Copy/paste or ask the Project session: `Generate Batch 034 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0100"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "hospital record includes patient and doctor statements"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0101"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "tenant repeats resident's statement about manager notice"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0102"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "police report contains eyewitness account"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
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
## Batch 035 — slots HS-0103 to HS-0105

Copy/paste or ask the Project session: `Generate Batch 035 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0103"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "trial transcript contains witness repeating agent instruction"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0104"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "hospital record includes patient and doctor statements"
   - evidence_vehicle: "transcript"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0105"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "tenant repeats resident's statement about manager notice"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
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
## Batch 036 — slots HS-0106 to HS-0108

Copy/paste or ask the Project session: `Generate Batch 036 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0106"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "police report contains eyewitness account"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0107"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "trial transcript contains witness repeating agent instruction"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0108"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "hospital record includes patient and doctor statements"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
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
## Batch 037 — slots HS-0109 to HS-0111

Copy/paste or ask the Project session: `Generate Batch 037 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0109"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "tenant repeats resident's statement about manager notice"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0110"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "police report contains eyewitness account"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-005"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0111"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "trial transcript contains witness repeating agent instruction"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 105, 116, 117, 123, 146"
   - repair_id: "REP-HS-004"
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