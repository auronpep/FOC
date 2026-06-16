# BarMatrix Hearsay — Handoffs Batch 302 to 313

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

## Batch 302 — slots HS-0904 to HS-0906

Copy/paste or ask the Project session: `Generate Batch 302 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Route underuse / route overuse
   - slot_id: "HS-0904"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "computer record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Public record official duty
   - slot_id: "HS-0905"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-057"
   - legal_collision: "Public record official duty"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-036"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Absence of public record / certification
   - slot_id: "HS-0906"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-058"
   - legal_collision: "Absence of public record / certification"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-031"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-043"
     - "WAL-HS-002"
     - "WAL-HS-009"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 303 — slots HS-0907 to HS-0909

Copy/paste or ask the Project session: `Generate Batch 303 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Public report embedded outsider statement
   - slot_id: "HS-0907"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-059"
   - legal_collision: "Public report embedded outsider statement"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "business record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Exception scope boundary
   - slot_id: "HS-0908"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Route underuse / route overuse
   - slot_id: "HS-0909"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "computer record"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-009"
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
## Batch 304 — slots HS-0910 to HS-0912

Copy/paste or ask the Project session: `Generate Batch 304 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Public record official duty
   - slot_id: "HS-0910"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-057"
   - legal_collision: "Public record official duty"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Absence of public record / certification
   - slot_id: "HS-0911"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-058"
   - legal_collision: "Absence of public record / certification"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exemption"
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
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Public report embedded outsider statement
   - slot_id: "HS-0912"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-059"
   - legal_collision: "Public report embedded outsider statement"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-001"
     - "WAL-HS-008"
     - "WAL-HS-015"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 305 — slots HS-0913 to HS-0915

Copy/paste or ask the Project session: `Generate Batch 305 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Exception scope boundary
   - slot_id: "HS-0913"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "dual route"
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
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Route underuse / route overuse
   - slot_id: "HS-0914"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "computer record"
   - offered_purpose: "read-only"
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
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Public record official duty
   - slot_id: "HS-0915"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-057"
   - legal_collision: "Public record official duty"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "chain-pass/fail"
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
     - "WAL-HS-004"
     - "WAL-HS-011"
     - "WAL-HS-018"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 306 — slots HS-0916 to HS-0918

Copy/paste or ask the Project session: `Generate Batch 306 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Absence of public record / certification
   - slot_id: "HS-0916"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-058"
   - legal_collision: "Absence of public record / certification"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "confrontation-safe/unsafe"
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
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Public report embedded outsider statement
   - slot_id: "HS-0917"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-059"
   - legal_collision: "Public report embedded outsider statement"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "business record"
   - offered_purpose: "truth"
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
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Exception scope boundary
   - slot_id: "HS-0918"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "notice/effect"
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
     - "WAL-HS-007"
     - "WAL-HS-014"
     - "WAL-HS-021"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 307 — slots HS-0919 to HS-0921

Copy/paste or ask the Project session: `Generate Batch 307 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Route underuse / route overuse
   - slot_id: "HS-0919"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "computer record"
   - offered_purpose: "reason-for-action"
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
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Public record official duty
   - slot_id: "HS-0920"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-057"
   - legal_collision: "Public record official duty"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "knowledge/mens-rea"
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
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Absence of public record / certification
   - slot_id: "HS-0921"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-058"
   - legal_collision: "Absence of public record / certification"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-010"
     - "WAL-HS-017"
     - "WAL-HS-024"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 308 — slots HS-0922 to HS-0924

Copy/paste or ask the Project session: `Generate Batch 308 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Public report embedded outsider statement
   - slot_id: "HS-0922"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-059"
   - legal_collision: "Public report embedded outsider statement"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exemption"
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
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Exception scope boundary
   - slot_id: "HS-0923"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Route underuse / route overuse
   - slot_id: "HS-0924"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "computer record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-009"
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
## Batch 309 — slots HS-0925 to HS-0927

Copy/paste or ask the Project session: `Generate Batch 309 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Public record official duty
   - slot_id: "HS-0925"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-057"
   - legal_collision: "Public record official duty"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-036"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Absence of public record / certification
   - slot_id: "HS-0926"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-058"
   - legal_collision: "Absence of public record / certification"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-031"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Public report embedded outsider statement
   - slot_id: "HS-0927"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-059"
   - legal_collision: "Public report embedded outsider statement"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "business record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-004"
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
## Batch 310 — slots HS-0928 to HS-0930

Copy/paste or ask the Project session: `Generate Batch 310 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Exception scope boundary
   - slot_id: "HS-0928"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-043"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Route underuse / route overuse
   - slot_id: "HS-0929"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "computer record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "107, 126, 131, 136, 146"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Public record official duty
   - slot_id: "HS-0930"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-057"
   - legal_collision: "Public record official duty"
   - fact_pattern_frame: "fire marshal official report"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "reason-for-action"
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
     - "WAL-HS-019"
     - "WAL-HS-026"
     - "WAL-HS-033"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 311 — slots HS-0931 to HS-0933

Copy/paste or ask the Project session: `Generate Batch 311 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Public records and reports / Absence of public record / certification
   - slot_id: "HS-0931"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-058"
   - legal_collision: "Absence of public record / certification"
   - fact_pattern_frame: "motor vehicle registration"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "knowledge/mens-rea"
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
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Public records and reports / Public report embedded outsider statement
   - slot_id: "HS-0932"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-059"
   - legal_collision: "Public report embedded outsider statement"
   - fact_pattern_frame: "jail record search absence"
   - evidence_vehicle: "business record"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Public records and reports / Exception scope boundary
   - slot_id: "HS-0933"
   - official_outline_node: "HS-C2g"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Public records and reports"
   - operating_description: "Official duty, factual findings, absence of public record, criminal limitations, embedded hearsay"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "police report with eyewitness quote"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exemption"
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
     - "WAL-HS-022"
     - "WAL-HS-029"
     - "WAL-HS-036"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 312 — slots HS-0934 to HS-0936

Copy/paste or ask the Project session: `Generate Batch 312 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Learned treatises / Learned treatise reliability foundation
   - slot_id: "HS-0934"
   - official_outline_node: "HS-C2h"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Learned treatises"
   - operating_description: "Reliable authority; called to attention or relied on by expert; read but not exhibit"
   - primary_tension_id: "HS-060"
   - legal_collision: "Learned treatise reliability foundation"
   - fact_pattern_frame: "expert reads treatise passage"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "104, 127"
   - repair_id: "REP-HS-037"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Learned treatises / Learned treatise read-only vs exhibit
   - slot_id: "HS-0935"
   - official_outline_node: "HS-C2h"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Learned treatises"
   - operating_description: "Reliable authority; called to attention or relied on by expert; read but not exhibit"
   - primary_tension_id: "HS-061"
   - legal_collision: "Learned treatise read-only vs exhibit"
   - fact_pattern_frame: "jury requests treatise exhibit"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "104, 127"
   - repair_id: "REP-HS-037"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Learned treatises / Exception scope boundary
   - slot_id: "HS-0936"
   - official_outline_node: "HS-C2h"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Learned treatises"
   - operating_description: "Reliable authority; called to attention or relied on by expert; read but not exhibit"
   - primary_tension_id: "HS-067"
   - legal_collision: "Exception scope boundary"
   - fact_pattern_frame: "expert denies treatise reliability"
   - evidence_vehicle: "computer record"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "104, 127"
   - repair_id: "REP-HS-043"
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
## Batch 313 — slots HS-0937 to HS-0939

Copy/paste or ask the Project session: `Generate Batch 313 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Learned treatises / Route underuse / route overuse
   - slot_id: "HS-0937"
   - official_outline_node: "HS-C2h"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Learned treatises"
   - operating_description: "Reliable authority; called to attention or relied on by expert; read but not exhibit"
   - primary_tension_id: "HS-068"
   - legal_collision: "Route underuse / route overuse"
   - fact_pattern_frame: "treatise called to expert's attention on cross"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "104, 127"
   - repair_id: "REP-HS-009"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Learned treatises / Learned treatise reliability foundation
   - slot_id: "HS-0938"
   - official_outline_node: "HS-C2h"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Learned treatises"
   - operating_description: "Reliable authority; called to attention or relied on by expert; read but not exhibit"
   - primary_tension_id: "HS-060"
   - legal_collision: "Learned treatise reliability foundation"
   - fact_pattern_frame: "expert reads treatise passage"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "104, 127"
   - repair_id: "REP-HS-037"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Learned treatises / Learned treatise read-only vs exhibit
   - slot_id: "HS-0939"
   - official_outline_node: "HS-C2h"
   - official_section: "C. Hearsay Exceptions not requiring unavailability"
   - official_topic: "Learned treatises"
   - operating_description: "Reliable authority; called to attention or relied on by expert; read but not exhibit"
   - primary_tension_id: "HS-061"
   - legal_collision: "Learned treatise read-only vs exhibit"
   - fact_pattern_frame: "jury requests treatise exhibit"
   - evidence_vehicle: "business record"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "104, 127"
   - repair_id: "REP-HS-037"
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