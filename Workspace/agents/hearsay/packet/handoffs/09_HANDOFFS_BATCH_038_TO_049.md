# BarMatrix Hearsay — Handoffs Batch 038 to 049

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

## Batch 038 — slots HS-0112 to HS-0114

Copy/paste or ask the Project session: `Generate Batch 038 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0112"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "hospital record includes patient and doctor statements"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
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
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Multiple hearsay / Single-layer success vs multi-layer failure
   - slot_id: "HS-0113"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-004"
   - legal_collision: "Single-layer success vs multi-layer failure"
   - fact_pattern_frame: "tenant repeats resident's statement about manager notice"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
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
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Multiple hearsay / Wrong listener / wrong effect problem
   - slot_id: "HS-0114"
   - official_outline_node: "HS-A3"
   - official_section: "A. In General"
   - official_topic: "Multiple hearsay"
   - operating_description: "Layer-by-layer routing and embedded statements in records, transcripts, reports, testimony"
   - primary_tension_id: "HS-005"
   - legal_collision: "Wrong listener / wrong effect problem"
   - fact_pattern_frame: "police report contains eyewitness account"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
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
     - "WAL-HS-019"
     - "WAL-HS-026"
     - "WAL-HS-033"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 039 — slots HS-0115 to HS-0117

Copy/paste or ask the Project session: `Generate Batch 039 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0115"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant dead"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0116"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant refuses despite court order"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0117"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant lacks current memory"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
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
## Batch 040 — slots HS-0118 to HS-0120

Copy/paste or ask the Project session: `Generate Batch 040 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0118"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant present but refuses all cross"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0119"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant dead"
   - evidence_vehicle: "transcript"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0120"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant refuses despite court order"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
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
## Batch 041 — slots HS-0121 to HS-0123

Copy/paste or ask the Project session: `Generate Batch 041 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0121"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant lacks current memory"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0122"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant present but refuses all cross"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0123"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant dead"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
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
## Batch 042 — slots HS-0124 to HS-0126

Copy/paste or ask the Project session: `Generate Batch 042 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0124"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant refuses despite court order"
   - evidence_vehicle: "transcript"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0125"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant lacks current memory"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0126"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant present but refuses all cross"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
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
## Batch 043 — slots HS-0127 to HS-0129

Copy/paste or ask the Project session: `Generate Batch 043 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0127"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant dead"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0128"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant refuses despite court order"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0129"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant lacks current memory"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
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
## Batch 044 — slots HS-0130 to HS-0132

Copy/paste or ask the Project session: `Generate Batch 044 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0130"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant present but refuses all cross"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0131"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant dead"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0132"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant refuses despite court order"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
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
## Batch 045 — slots HS-0133 to HS-0135

Copy/paste or ask the Project session: `Generate Batch 045 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0133"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant lacks current memory"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0134"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant present but refuses all cross"
   - evidence_vehicle: "transcript"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0135"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant dead"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
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
## Batch 046 — slots HS-0136 to HS-0138

Copy/paste or ask the Project session: `Generate Batch 046 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0136"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant refuses despite court order"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0137"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant lacks current memory"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0138"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant present but refuses all cross"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
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
## Batch 047 — slots HS-0139 to HS-0141

Copy/paste or ask the Project session: `Generate Batch 047 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0139"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant dead"
   - evidence_vehicle: "transcript"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0140"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant refuses despite court order"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0141"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant lacks current memory"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-046"
     - "WAL-HS-005"
     - "WAL-HS-012"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 048 — slots HS-0142 to HS-0144

Copy/paste or ask the Project session: `Generate Batch 048 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0142"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant present but refuses all cross"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Unavailability necessary/unnecessary / Availability necessary vs irrelevant
   - slot_id: "HS-0143"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-006"
   - legal_collision: "Availability necessary vs irrelevant"
   - fact_pattern_frame: "declarant dead"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Unavailability necessary/unnecessary / Unavailability caused by proponent
   - slot_id: "HS-0144"
   - official_outline_node: "HS-A4"
   - official_section: "A. In General"
   - official_topic: "Unavailability necessary/unnecessary"
   - operating_description: "Declarant status as required/unnecessary depending route; subject-to-cross vs unavailable"
   - primary_tension_id: "HS-042"
   - legal_collision: "Unavailability caused by proponent"
   - fact_pattern_frame: "declarant refuses despite court order"
   - evidence_vehicle: "transcript"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 106, 111, 125, 149"
   - repair_id: "REP-HS-006"
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
## Batch 049 — slots HS-0145 to HS-0147

Copy/paste or ask the Project session: `Generate Batch 049 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior sworn inconsistent statement / Prior inconsistent statement: impeachment vs substantive
   - slot_id: "HS-0145"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-011"
   - legal_collision: "Prior inconsistent statement: impeachment vs substantive"
   - fact_pattern_frame: "trial witness contradicted by casual conversation"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior sworn inconsistent statement / Declarant still subject to recall vs unavailable exception
   - slot_id: "HS-0146"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-012"
   - legal_collision: "Declarant still subject to recall vs unavailable exception"
   - fact_pattern_frame: "deponent contradicted by deposition transcript"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior sworn inconsistent statement / Impeachment vehicle: tape, transcript, second witness
   - slot_id: "HS-0147"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-016"
   - legal_collision: "Impeachment vehicle: tape, transcript, second witness"
   - fact_pattern_frame: "police interview inconsistent with testimony"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
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