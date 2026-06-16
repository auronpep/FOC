# BarMatrix Hearsay — Handoffs Batch 170 to 181

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

## Batch 170 — slots HS-0508 to HS-0510

Copy/paste or ask the Project session: `Generate Batch 170 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statements showing declarant’s knowledge / Limiting instruction mechanics
   - slot_id: "HS-0508"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "friend says TV belongs to him, offered for defendant belief"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statements showing declarant’s knowledge / Knowledge/belief proof
   - slot_id: "HS-0509"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-030"
   - legal_collision: "Knowledge/belief proof"
   - fact_pattern_frame: "employer says applicant unproductive, offered for reason"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-021"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statements showing declarant’s knowledge / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0510"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "letter says defect complaints, offered for manufacturer knowledge"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-022"
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
## Batch 171 — slots HS-0511 to HS-0513

Copy/paste or ask the Project session: `Generate Batch 171 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statements showing declarant’s knowledge / Bias/motive statement as nonhearsay
   - slot_id: "HS-0511"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "friend says TV belongs to him, offered for defendant belief"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statements showing declarant’s knowledge / Limiting instruction mechanics
   - slot_id: "HS-0512"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "employer says applicant unproductive, offered for reason"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statements showing declarant’s knowledge / Knowledge/belief proof
   - slot_id: "HS-0513"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-030"
   - legal_collision: "Knowledge/belief proof"
   - fact_pattern_frame: "letter says defect complaints, offered for manufacturer knowledge"
   - evidence_vehicle: "transcript"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-021"
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
## Batch 172 — slots HS-0514 to HS-0516

Copy/paste or ask the Project session: `Generate Batch 172 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statements showing declarant’s knowledge / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0514"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "friend says TV belongs to him, offered for defendant belief"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Absence of mistake / mens rea / Absence of mistake / mens rea via statement
   - slot_id: "HS-0515"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-031"
   - legal_collision: "Absence of mistake / mens rea via statement"
   - fact_pattern_frame: "warning creates knowledge of danger"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-021"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Absence of mistake / mens rea / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0516"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "advice creates reasonable belief"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-022"
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
## Batch 173 — slots HS-0517 to HS-0519

Copy/paste or ask the Project session: `Generate Batch 173 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Absence of mistake / mens rea / Bias/motive statement as nonhearsay
   - slot_id: "HS-0517"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "statement negates mistake in possession"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Absence of mistake / mens rea / Limiting instruction mechanics
   - slot_id: "HS-0518"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "statement shows mens rea/intent"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Absence of mistake / mens rea / Absence of mistake / mens rea via statement
   - slot_id: "HS-0519"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-031"
   - legal_collision: "Absence of mistake / mens rea via statement"
   - fact_pattern_frame: "warning creates knowledge of danger"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-021"
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
## Batch 174 — slots HS-0520 to HS-0522

Copy/paste or ask the Project session: `Generate Batch 174 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Absence of mistake / mens rea / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0520"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "advice creates reasonable belief"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Absence of mistake / mens rea / Bias/motive statement as nonhearsay
   - slot_id: "HS-0521"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "statement negates mistake in possession"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Absence of mistake / mens rea / Limiting instruction mechanics
   - slot_id: "HS-0522"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "statement shows mens rea/intent"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-007"
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
## Batch 175 — slots HS-0523 to HS-0525

Copy/paste or ask the Project session: `Generate Batch 175 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Absence of mistake / mens rea / Absence of mistake / mens rea via statement
   - slot_id: "HS-0523"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-031"
   - legal_collision: "Absence of mistake / mens rea via statement"
   - fact_pattern_frame: "warning creates knowledge of danger"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-021"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Absence of mistake / mens rea / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0524"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "advice creates reasonable belief"
   - evidence_vehicle: "transcript"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Absence of mistake / mens rea / Bias/motive statement as nonhearsay
   - slot_id: "HS-0525"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "statement negates mistake in possession"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-023"
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
## Batch 176 — slots HS-0526 to HS-0528

Copy/paste or ask the Project session: `Generate Batch 176 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Absence of mistake / mens rea / Limiting instruction mechanics
   - slot_id: "HS-0526"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "statement shows mens rea/intent"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Absence of mistake / mens rea / Absence of mistake / mens rea via statement
   - slot_id: "HS-0527"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-031"
   - legal_collision: "Absence of mistake / mens rea via statement"
   - fact_pattern_frame: "warning creates knowledge of danger"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-021"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Absence of mistake / mens rea / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0528"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "advice creates reasonable belief"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-022"
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
## Batch 177 — slots HS-0529 to HS-0531

Copy/paste or ask the Project session: `Generate Batch 177 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Absence of mistake / mens rea / Bias/motive statement as nonhearsay
   - slot_id: "HS-0529"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "statement negates mistake in possession"
   - evidence_vehicle: "transcript"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Absence of mistake / mens rea / Limiting instruction mechanics
   - slot_id: "HS-0530"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "statement shows mens rea/intent"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Absence of mistake / mens rea / Absence of mistake / mens rea via statement
   - slot_id: "HS-0531"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-031"
   - legal_collision: "Absence of mistake / mens rea via statement"
   - fact_pattern_frame: "warning creates knowledge of danger"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-021"
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
## Batch 178 — slots HS-0532 to HS-0534

Copy/paste or ask the Project session: `Generate Batch 178 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Absence of mistake / mens rea / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0532"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "advice creates reasonable belief"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Absence of mistake / mens rea / Bias/motive statement as nonhearsay
   - slot_id: "HS-0533"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "statement negates mistake in possession"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Absence of mistake / mens rea / Limiting instruction mechanics
   - slot_id: "HS-0534"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "statement shows mens rea/intent"
   - evidence_vehicle: "transcript"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-007"
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
## Batch 179 — slots HS-0535 to HS-0537

Copy/paste or ask the Project session: `Generate Batch 179 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Absence of mistake / mens rea / Absence of mistake / mens rea via statement
   - slot_id: "HS-0535"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-031"
   - legal_collision: "Absence of mistake / mens rea via statement"
   - fact_pattern_frame: "warning creates knowledge of danger"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-021"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Absence of mistake / mens rea / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0536"
   - official_outline_node: "HS-B3e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Absence of mistake / mens rea"
   - operating_description: "Statement offered to show state of knowledge or mistake, not asserted fact"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "advice creates reasonable belief"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "121, 145"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0537"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "prior bankruptcy testimony"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-010"
     - "WAL-HS-017"
     - "WAL-HS-024"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 180 — slots HS-0538 to HS-0540

Copy/paste or ask the Project session: `Generate Batch 180 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0538"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "criminal trial transcript offered in civil case"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "dual route"
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
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0539"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "preliminary hearing testimony"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "read-only"
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
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0540"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "deposition from related civil action"
   - evidence_vehicle: "transcript"
   - offered_purpose: "chain-pass/fail"
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
     - "WAL-HS-013"
     - "WAL-HS-020"
     - "WAL-HS-027"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 181 — slots HS-0541 to HS-0543

Copy/paste or ask the Project session: `Generate Batch 181 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0541"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "prior bankruptcy testimony"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "confrontation-safe/unsafe"
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
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Former testimony / Former testimony transcript vehicle vs embedded statements
   - slot_id: "HS-0542"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-036"
   - legal_collision: "Former testimony transcript vehicle vs embedded statements"
   - fact_pattern_frame: "criminal trial transcript offered in civil case"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "truth"
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
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Former testimony / Former testimony opportunity + similar motive
   - slot_id: "HS-0543"
   - official_outline_node: "HS-C1a"
   - official_section: "C. Hearsay Exceptions requiring unavailability"
   - official_topic: "Former testimony"
   - operating_description: "Unavailable, prior opportunity, similar motive, predecessor in civil cases, transcript vehicle"
   - primary_tension_id: "HS-035"
   - legal_collision: "Former testimony opportunity + similar motive"
   - fact_pattern_frame: "preliminary hearing testimony"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "notice/effect"
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
     - "WAL-HS-016"
     - "WAL-HS-023"
     - "WAL-HS-030"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.