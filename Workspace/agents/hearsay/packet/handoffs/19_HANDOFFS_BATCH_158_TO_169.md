# BarMatrix Hearsay — Handoffs Batch 158 to 169

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

## Batch 158 — slots HS-0472 to HS-0474

Copy/paste or ask the Project session: `Generate Batch 158 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Legally operative facts and verbal acts / Limiting instruction mechanics
   - slot_id: "HS-0472"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "notice words as legal notice"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Legally operative facts and verbal acts / Legally operative words / verbal acts
   - slot_id: "HS-0473"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-029"
   - legal_collision: "Legally operative words / verbal acts"
   - fact_pattern_frame: "acceptance of contract offer"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-020"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Legally operative facts and verbal acts / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0474"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "threat words offered as threat"
   - evidence_vehicle: "transcript"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-022"
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
## Batch 159 — slots HS-0475 to HS-0477

Copy/paste or ask the Project session: `Generate Batch 159 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Legally operative facts and verbal acts / Bias/motive statement as nonhearsay
   - slot_id: "HS-0475"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "defamation words as publication"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Legally operative facts and verbal acts / Limiting instruction mechanics
   - slot_id: "HS-0476"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "notice words as legal notice"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Legally operative facts and verbal acts / Legally operative words / verbal acts
   - slot_id: "HS-0477"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-029"
   - legal_collision: "Legally operative words / verbal acts"
   - fact_pattern_frame: "acceptance of contract offer"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-020"
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
## Batch 160 — slots HS-0478 to HS-0480

Copy/paste or ask the Project session: `Generate Batch 160 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Legally operative facts and verbal acts / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0478"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "threat words offered as threat"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Legally operative facts and verbal acts / Bias/motive statement as nonhearsay
   - slot_id: "HS-0479"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "defamation words as publication"
   - evidence_vehicle: "transcript"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Legally operative facts and verbal acts / Limiting instruction mechanics
   - slot_id: "HS-0480"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "notice words as legal notice"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-007"
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
## Batch 161 — slots HS-0481 to HS-0483

Copy/paste or ask the Project session: `Generate Batch 161 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Legally operative facts and verbal acts / Legally operative words / verbal acts
   - slot_id: "HS-0481"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-029"
   - legal_collision: "Legally operative words / verbal acts"
   - fact_pattern_frame: "acceptance of contract offer"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-020"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Legally operative facts and verbal acts / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0482"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "threat words offered as threat"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Legally operative facts and verbal acts / Bias/motive statement as nonhearsay
   - slot_id: "HS-0483"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "defamation words as publication"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-023"
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
## Batch 162 — slots HS-0484 to HS-0486

Copy/paste or ask the Project session: `Generate Batch 162 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Legally operative facts and verbal acts / Limiting instruction mechanics
   - slot_id: "HS-0484"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "notice words as legal notice"
   - evidence_vehicle: "transcript"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Legally operative facts and verbal acts / Legally operative words / verbal acts
   - slot_id: "HS-0485"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-029"
   - legal_collision: "Legally operative words / verbal acts"
   - fact_pattern_frame: "acceptance of contract offer"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-020"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Legally operative facts and verbal acts / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0486"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "threat words offered as threat"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-022"
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
## Batch 163 — slots HS-0487 to HS-0489

Copy/paste or ask the Project session: `Generate Batch 163 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Legally operative facts and verbal acts / Bias/motive statement as nonhearsay
   - slot_id: "HS-0487"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "defamation words as publication"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Legally operative facts and verbal acts / Limiting instruction mechanics
   - slot_id: "HS-0488"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "notice words as legal notice"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Legally operative facts and verbal acts / Legally operative words / verbal acts
   - slot_id: "HS-0489"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-029"
   - legal_collision: "Legally operative words / verbal acts"
   - fact_pattern_frame: "acceptance of contract offer"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-020"
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
## Batch 164 — slots HS-0490 to HS-0492

Copy/paste or ask the Project session: `Generate Batch 164 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Legally operative facts and verbal acts / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0490"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "threat words offered as threat"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Legally operative facts and verbal acts / Bias/motive statement as nonhearsay
   - slot_id: "HS-0491"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "defamation words as publication"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Legally operative facts and verbal acts / Limiting instruction mechanics
   - slot_id: "HS-0492"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "notice words as legal notice"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119, 117, 145"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-013"
     - "WAL-HS-020"
     - "WAL-HS-027"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 165 — slots HS-0493 to HS-0495

Copy/paste or ask the Project session: `Generate Batch 165 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statements showing declarant’s knowledge / Knowledge/belief proof
   - slot_id: "HS-0493"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-030"
   - legal_collision: "Knowledge/belief proof"
   - fact_pattern_frame: "friend says TV belongs to him, offered for defendant belief"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statements showing declarant’s knowledge / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0494"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "employer says applicant unproductive, offered for reason"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "dual route"
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
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statements showing declarant’s knowledge / Bias/motive statement as nonhearsay
   - slot_id: "HS-0495"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "letter says defect complaints, offered for manufacturer knowledge"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-023"
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
## Batch 166 — slots HS-0496 to HS-0498

Copy/paste or ask the Project session: `Generate Batch 166 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statements showing declarant’s knowledge / Limiting instruction mechanics
   - slot_id: "HS-0496"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "friend says TV belongs to him, offered for defendant belief"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statements showing declarant’s knowledge / Knowledge/belief proof
   - slot_id: "HS-0497"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-030"
   - legal_collision: "Knowledge/belief proof"
   - fact_pattern_frame: "employer says applicant unproductive, offered for reason"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-021"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statements showing declarant’s knowledge / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0498"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "letter says defect complaints, offered for manufacturer knowledge"
   - evidence_vehicle: "transcript"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-022"
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
## Batch 167 — slots HS-0499 to HS-0501

Copy/paste or ask the Project session: `Generate Batch 167 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statements showing declarant’s knowledge / Bias/motive statement as nonhearsay
   - slot_id: "HS-0499"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "friend says TV belongs to him, offered for defendant belief"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statements showing declarant’s knowledge / Limiting instruction mechanics
   - slot_id: "HS-0500"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "employer says applicant unproductive, offered for reason"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statements showing declarant’s knowledge / Knowledge/belief proof
   - slot_id: "HS-0501"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-030"
   - legal_collision: "Knowledge/belief proof"
   - fact_pattern_frame: "letter says defect complaints, offered for manufacturer knowledge"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-021"
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
## Batch 168 — slots HS-0502 to HS-0504

Copy/paste or ask the Project session: `Generate Batch 168 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statements showing declarant’s knowledge / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0502"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "friend says TV belongs to him, offered for defendant belief"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statements showing declarant’s knowledge / Bias/motive statement as nonhearsay
   - slot_id: "HS-0503"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "employer says applicant unproductive, offered for reason"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statements showing declarant’s knowledge / Limiting instruction mechanics
   - slot_id: "HS-0504"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "letter says defect complaints, offered for manufacturer knowledge"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-007"
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
## Batch 169 — slots HS-0505 to HS-0507

Copy/paste or ask the Project session: `Generate Batch 169 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Statements showing declarant’s knowledge / Knowledge/belief proof
   - slot_id: "HS-0505"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-030"
   - legal_collision: "Knowledge/belief proof"
   - fact_pattern_frame: "friend says TV belongs to him, offered for defendant belief"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-021"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Statements showing declarant’s knowledge / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0506"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "employer says applicant unproductive, offered for reason"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Statements showing declarant’s knowledge / Bias/motive statement as nonhearsay
   - slot_id: "HS-0507"
   - official_outline_node: "HS-B3d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Statements showing declarant’s knowledge"
   - operating_description: "Knowledge/belief proof not truth of asserted ownership/condition"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "letter says defect complaints, offered for manufacturer knowledge"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "145, 121"
   - repair_id: "REP-HS-023"
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