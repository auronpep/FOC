# BarMatrix Hearsay — Handoffs Batch 182 to 193

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

## Batch 182 — slots HS-0544 to HS-0546

Copy/paste or ask the Project session: `Generate Batch 182 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0544"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "deposition from related civil action"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0545"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "prior bankruptcy testimony"
   - evidence_vehicle: "transcript"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0546"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "criminal trial transcript offered in civil case"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
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
## Batch 183 — slots HS-0547 to HS-0549

Copy/paste or ask the Project session: `Generate Batch 183 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0547"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "preliminary hearing testimony"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0548"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "deposition from related civil action"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0549"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "prior bankruptcy testimony"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
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
## Batch 184 — slots HS-0550 to HS-0552

Copy/paste or ask the Project session: `Generate Batch 184 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0550"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "criminal trial transcript offered in civil case"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0551"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "preliminary hearing testimony"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0552"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "deposition from related civil action"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
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
## Batch 185 — slots HS-0553 to HS-0555

Copy/paste or ask the Project session: `Generate Batch 185 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0553"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "prior bankruptcy testimony"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0554"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "criminal trial transcript offered in civil case"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0555"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "preliminary hearing testimony"
   - evidence_vehicle: "transcript"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
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
## Batch 186 — slots HS-0556 to HS-0558

Copy/paste or ask the Project session: `Generate Batch 186 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0556"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "deposition from related civil action"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0557"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "prior bankruptcy testimony"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0558"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "criminal trial transcript offered in civil case"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
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
## Batch 187 — slots HS-0559 to HS-0561

Copy/paste or ask the Project session: `Generate Batch 187 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0559"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "preliminary hearing testimony"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0560"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "deposition from related civil action"
   - evidence_vehicle: "transcript"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0561"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "prior bankruptcy testimony"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
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
## Batch 188 — slots HS-0562 to HS-0564

Copy/paste or ask the Project session: `Generate Batch 188 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0562"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "criminal trial transcript offered in civil case"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0563"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "preliminary hearing testimony"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0564"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "deposition from related civil action"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
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
## Batch 189 — slots HS-0565 to HS-0567

Copy/paste or ask the Project session: `Generate Batch 189 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0565"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "prior bankruptcy testimony"
   - evidence_vehicle: "transcript"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0566"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "criminal trial transcript offered in civil case"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0567"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "preliminary hearing testimony"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
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
## Batch 190 — slots HS-0568 to HS-0570

Copy/paste or ask the Project session: `Generate Batch 190 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0568"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "deposition from related civil action"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0569"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "prior bankruptcy testimony"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0570"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "criminal trial transcript offered in civil case"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-004"
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
## Batch 191 — slots HS-0571 to HS-0573

Copy/paste or ask the Project session: `Generate Batch 191 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0571"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "preliminary hearing testimony"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "106, 116"
   - repair_id: "REP-HS-024"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statement against interest / Statement against interest: declarant's own risk
   - slot_id: "HS-0572"
   - official_outline_node: "HS-C1b"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement against interest"
   - operating_description: "Declarant’s own disserving statement; unavailable; collateral/self-serving portions"
   - primary_tension_id: "HS-037"
   - legal_collision: "Statement against interest: declarant's own risk"
   - fact_pattern_frame: "friend confesses arson"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 111, 140"
   - repair_id: "REP-HS-025"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statement against interest / Collateral/inculpatory portions of against-interest statement
   - slot_id: "HS-0573"
   - official_outline_node: "HS-C1b"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement against interest"
   - operating_description: "Declarant’s own disserving statement; unavailable; collateral/self-serving portions"
   - primary_tension_id: "HS-038"
   - legal_collision: "Collateral/inculpatory portions of against-interest statement"
   - fact_pattern_frame: "driver says crash was his fault"
   - evidence_vehicle: "business record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 111, 140"
   - repair_id: "REP-HS-025"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-046"
     - "WAL-HS-005"
     - "WAL-HS-012"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 192 — slots HS-0574 to HS-0576

Copy/paste or ask the Project session: `Generate Batch 192 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statement against interest / Statement against interest: declarant's own risk
   - slot_id: "HS-0574"
   - official_outline_node: "HS-C1b"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement against interest"
   - operating_description: "Declarant’s own disserving statement; unavailable; collateral/self-serving portions"
   - primary_tension_id: "HS-037"
   - legal_collision: "Statement against interest: declarant's own risk"
   - fact_pattern_frame: "conspirator says defendant owes proceeds"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 111, 140"
   - repair_id: "REP-HS-025"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statement against interest / Collateral/inculpatory portions of against-interest statement
   - slot_id: "HS-0575"
   - official_outline_node: "HS-C1b"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement against interest"
   - operating_description: "Declarant’s own disserving statement; unavailable; collateral/self-serving portions"
   - primary_tension_id: "HS-038"
   - legal_collision: "Collateral/inculpatory portions of against-interest statement"
   - fact_pattern_frame: "statement partly self-serving and partly disserving"
   - evidence_vehicle: "computer record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 111, 140"
   - repair_id: "REP-HS-025"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statement against interest / Statement against interest: declarant's own risk
   - slot_id: "HS-0576"
   - official_outline_node: "HS-C1b"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement against interest"
   - operating_description: "Declarant’s own disserving statement; unavailable; collateral/self-serving portions"
   - primary_tension_id: "HS-037"
   - legal_collision: "Statement against interest: declarant's own risk"
   - fact_pattern_frame: "friend confesses arson"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98, 111, 140"
   - repair_id: "REP-HS-025"
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
## Batch 193 — slots HS-0577 to HS-0579

Copy/paste or ask the Project session: `Generate Batch 193 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statement against interest / Collateral/inculpatory portions of against-interest statement
   - slot_id: "HS-0577"
   - official_outline_node: "HS-C1b"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement against interest"
   - operating_description: "Declarant’s own disserving statement; unavailable; collateral/self-serving portions"
   - primary_tension_id: "HS-038"
   - legal_collision: "Collateral/inculpatory portions of against-interest statement"
   - fact_pattern_frame: "driver says crash was his fault"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98, 111, 140"
   - repair_id: "REP-HS-025"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statement against interest / Statement against interest: declarant's own risk
   - slot_id: "HS-0578"
   - official_outline_node: "HS-C1b"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement against interest"
   - operating_description: "Declarant’s own disserving statement; unavailable; collateral/self-serving portions"
   - primary_tension_id: "HS-037"
   - legal_collision: "Statement against interest: declarant's own risk"
   - fact_pattern_frame: "conspirator says defendant owes proceeds"
   - evidence_vehicle: "business record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98, 111, 140"
   - repair_id: "REP-HS-025"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statement against interest / Collateral/inculpatory portions of against-interest statement
   - slot_id: "HS-0579"
   - official_outline_node: "HS-C1b"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Statement against interest"
   - operating_description: "Declarant’s own disserving statement; unavailable; collateral/self-serving portions"
   - primary_tension_id: "HS-038"
   - legal_collision: "Collateral/inculpatory portions of against-interest statement"
   - fact_pattern_frame: "statement partly self-serving and partly disserving"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98, 111, 140"
   - repair_id: "REP-HS-025"
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