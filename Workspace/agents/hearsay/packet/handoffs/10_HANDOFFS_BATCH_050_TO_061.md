# BarMatrix Hearsay — Handoffs Batch 050 to 061

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

## Batch 050 — slots HS-0148 to HS-0150

Copy/paste or ask the Project session: `Generate Batch 050 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior sworn inconsistent statement / Prior inconsistent statement: impeachment vs substantive
   - slot_id: "HS-0148"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-011"
   - legal_collision: "Prior inconsistent statement: impeachment vs substantive"
   - fact_pattern_frame: "tape of witness statement offered"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior sworn inconsistent statement / Declarant still subject to recall vs unavailable exception
   - slot_id: "HS-0149"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-012"
   - legal_collision: "Declarant still subject to recall vs unavailable exception"
   - fact_pattern_frame: "trial witness contradicted by casual conversation"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior sworn inconsistent statement / Impeachment vehicle: tape, transcript, second witness
   - slot_id: "HS-0150"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-016"
   - legal_collision: "Impeachment vehicle: tape, transcript, second witness"
   - fact_pattern_frame: "deponent contradicted by deposition transcript"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
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
## Batch 051 — slots HS-0151 to HS-0153

Copy/paste or ask the Project session: `Generate Batch 051 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior sworn inconsistent statement / Prior inconsistent statement: impeachment vs substantive
   - slot_id: "HS-0151"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-011"
   - legal_collision: "Prior inconsistent statement: impeachment vs substantive"
   - fact_pattern_frame: "police interview inconsistent with testimony"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior sworn inconsistent statement / Declarant still subject to recall vs unavailable exception
   - slot_id: "HS-0152"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-012"
   - legal_collision: "Declarant still subject to recall vs unavailable exception"
   - fact_pattern_frame: "tape of witness statement offered"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior sworn inconsistent statement / Impeachment vehicle: tape, transcript, second witness
   - slot_id: "HS-0153"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-016"
   - legal_collision: "Impeachment vehicle: tape, transcript, second witness"
   - fact_pattern_frame: "trial witness contradicted by casual conversation"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
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
## Batch 052 — slots HS-0154 to HS-0156

Copy/paste or ask the Project session: `Generate Batch 052 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior sworn inconsistent statement / Prior inconsistent statement: impeachment vs substantive
   - slot_id: "HS-0154"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-011"
   - legal_collision: "Prior inconsistent statement: impeachment vs substantive"
   - fact_pattern_frame: "deponent contradicted by deposition transcript"
   - evidence_vehicle: "transcript"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior sworn inconsistent statement / Declarant still subject to recall vs unavailable exception
   - slot_id: "HS-0155"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-012"
   - legal_collision: "Declarant still subject to recall vs unavailable exception"
   - fact_pattern_frame: "police interview inconsistent with testimony"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior sworn inconsistent statement / Impeachment vehicle: tape, transcript, second witness
   - slot_id: "HS-0156"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-016"
   - legal_collision: "Impeachment vehicle: tape, transcript, second witness"
   - fact_pattern_frame: "tape of witness statement offered"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
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
## Batch 053 — slots HS-0157 to HS-0159

Copy/paste or ask the Project session: `Generate Batch 053 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior sworn inconsistent statement / Prior inconsistent statement: impeachment vs substantive
   - slot_id: "HS-0157"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-011"
   - legal_collision: "Prior inconsistent statement: impeachment vs substantive"
   - fact_pattern_frame: "trial witness contradicted by casual conversation"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior sworn inconsistent statement / Declarant still subject to recall vs unavailable exception
   - slot_id: "HS-0158"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-012"
   - legal_collision: "Declarant still subject to recall vs unavailable exception"
   - fact_pattern_frame: "deponent contradicted by deposition transcript"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior sworn inconsistent statement / Impeachment vehicle: tape, transcript, second witness
   - slot_id: "HS-0159"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-016"
   - legal_collision: "Impeachment vehicle: tape, transcript, second witness"
   - fact_pattern_frame: "police interview inconsistent with testimony"
   - evidence_vehicle: "transcript"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
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
## Batch 054 — slots HS-0160 to HS-0162

Copy/paste or ask the Project session: `Generate Batch 054 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior sworn inconsistent statement / Prior inconsistent statement: impeachment vs substantive
   - slot_id: "HS-0160"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-011"
   - legal_collision: "Prior inconsistent statement: impeachment vs substantive"
   - fact_pattern_frame: "tape of witness statement offered"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior sworn inconsistent statement / Declarant still subject to recall vs unavailable exception
   - slot_id: "HS-0161"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-012"
   - legal_collision: "Declarant still subject to recall vs unavailable exception"
   - fact_pattern_frame: "trial witness contradicted by casual conversation"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior sworn inconsistent statement / Impeachment vehicle: tape, transcript, second witness
   - slot_id: "HS-0162"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-016"
   - legal_collision: "Impeachment vehicle: tape, transcript, second witness"
   - fact_pattern_frame: "deponent contradicted by deposition transcript"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-019"
     - "WAL-HS-026"
     - "WAL-HS-033"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 055 — slots HS-0163 to HS-0165

Copy/paste or ask the Project session: `Generate Batch 055 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior sworn inconsistent statement / Prior inconsistent statement: impeachment vs substantive
   - slot_id: "HS-0163"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-011"
   - legal_collision: "Prior inconsistent statement: impeachment vs substantive"
   - fact_pattern_frame: "police interview inconsistent with testimony"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior sworn inconsistent statement / Declarant still subject to recall vs unavailable exception
   - slot_id: "HS-0164"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-012"
   - legal_collision: "Declarant still subject to recall vs unavailable exception"
   - fact_pattern_frame: "tape of witness statement offered"
   - evidence_vehicle: "transcript"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior sworn inconsistent statement / Impeachment vehicle: tape, transcript, second witness
   - slot_id: "HS-0165"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-016"
   - legal_collision: "Impeachment vehicle: tape, transcript, second witness"
   - fact_pattern_frame: "trial witness contradicted by casual conversation"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-022"
     - "WAL-HS-029"
     - "WAL-HS-036"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 056 — slots HS-0166 to HS-0168

Copy/paste or ask the Project session: `Generate Batch 056 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior sworn inconsistent statement / Prior inconsistent statement: impeachment vs substantive
   - slot_id: "HS-0166"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-011"
   - legal_collision: "Prior inconsistent statement: impeachment vs substantive"
   - fact_pattern_frame: "deponent contradicted by deposition transcript"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior sworn inconsistent statement / Declarant still subject to recall vs unavailable exception
   - slot_id: "HS-0167"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-012"
   - legal_collision: "Declarant still subject to recall vs unavailable exception"
   - fact_pattern_frame: "police interview inconsistent with testimony"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior sworn inconsistent statement / Impeachment vehicle: tape, transcript, second witness
   - slot_id: "HS-0168"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-016"
   - legal_collision: "Impeachment vehicle: tape, transcript, second witness"
   - fact_pattern_frame: "tape of witness statement offered"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
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
## Batch 057 — slots HS-0169 to HS-0171

Copy/paste or ask the Project session: `Generate Batch 057 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior sworn inconsistent statement / Prior inconsistent statement: impeachment vs substantive
   - slot_id: "HS-0169"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-011"
   - legal_collision: "Prior inconsistent statement: impeachment vs substantive"
   - fact_pattern_frame: "trial witness contradicted by casual conversation"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior sworn inconsistent statement / Declarant still subject to recall vs unavailable exception
   - slot_id: "HS-0170"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-012"
   - legal_collision: "Declarant still subject to recall vs unavailable exception"
   - fact_pattern_frame: "deponent contradicted by deposition transcript"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-006"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior sworn inconsistent statement / Impeachment vehicle: tape, transcript, second witness
   - slot_id: "HS-0171"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-016"
   - legal_collision: "Impeachment vehicle: tape, transcript, second witness"
   - fact_pattern_frame: "police interview inconsistent with testimony"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
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
## Batch 058 — slots HS-0172 to HS-0174

Copy/paste or ask the Project session: `Generate Batch 058 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior sworn inconsistent statement / Prior inconsistent statement: impeachment vs substantive
   - slot_id: "HS-0172"
   - official_outline_node: "HS-B1a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior sworn inconsistent statement"
   - operating_description: "Declarant testifies, subject to cross, under-oath/proceeding/deposition requirement; impeachment-only alternatives"
   - primary_tension_id: "HS-011"
   - legal_collision: "Prior inconsistent statement: impeachment vs substantive"
   - fact_pattern_frame: "tape of witness statement offered"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "99, 114, 128, 137"
   - repair_id: "REP-HS-011"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0173"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement before motive arose"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0174"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement after motive arose"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
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
## Batch 059 — slots HS-0175 to HS-0177

Copy/paste or ask the Project session: `Generate Batch 059 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0175"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "memory attack rehabilitated by earlier consistent detail"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0176"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "general bolstering before attack"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0177"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement before motive arose"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
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
## Batch 060 — slots HS-0178 to HS-0180

Copy/paste or ask the Project session: `Generate Batch 060 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0178"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement after motive arose"
   - evidence_vehicle: "transcript"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0179"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "memory attack rehabilitated by earlier consistent detail"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0180"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "general bolstering before attack"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
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
## Batch 061 — slots HS-0181 to HS-0183

Copy/paste or ask the Project session: `Generate Batch 061 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0181"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement before motive arose"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0182"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement after motive arose"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0183"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "memory attack rehabilitated by earlier consistent detail"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
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