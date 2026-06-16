# BarMatrix Hearsay — Handoffs Batch 062 to 073

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

## Batch 062 — slots HS-0184 to HS-0186

Copy/paste or ask the Project session: `Generate Batch 062 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0184"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "general bolstering before attack"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0185"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement before motive arose"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0186"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement after motive arose"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
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
## Batch 063 — slots HS-0187 to HS-0189

Copy/paste or ask the Project session: `Generate Batch 063 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0187"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "memory attack rehabilitated by earlier consistent detail"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0188"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "general bolstering before attack"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0189"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement before motive arose"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
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
## Batch 064 — slots HS-0190 to HS-0192

Copy/paste or ask the Project session: `Generate Batch 064 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0190"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement after motive arose"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0191"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "memory attack rehabilitated by earlier consistent detail"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0192"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "general bolstering before attack"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: ""
   - repair_id: "REP-HS-012"
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
## Batch 065 — slots HS-0193 to HS-0195

Copy/paste or ask the Project session: `Generate Batch 065 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0193"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement before motive arose"
   - evidence_vehicle: "transcript"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior consistent statement / Prior consistent statement: proper rehabilitative use
   - slot_id: "HS-0194"
   - official_outline_node: "HS-B1b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior consistent statement"
   - operating_description: "Rebut fabrication/improper influence or rehabilitate after attack; timing/attack type"
   - primary_tension_id: "HS-013"
   - legal_collision: "Prior consistent statement: proper rehabilitative use"
   - fact_pattern_frame: "prior consistent statement after motive arose"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
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
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0195"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "victim prior identification to passerby"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
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
## Batch 066 — slots HS-0196 to HS-0198

Copy/paste or ask the Project session: `Generate Batch 066 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0196"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "witness identifies defendant at lineup then lacks memory"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0197"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "witness refuses to testify after prior ID"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0198"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "officer recounts lineup ID by absent declarant"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
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
## Batch 067 — slots HS-0199 to HS-0201

Copy/paste or ask the Project session: `Generate Batch 067 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0199"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "victim prior identification to passerby"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0200"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "witness identifies defendant at lineup then lacks memory"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0201"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "witness refuses to testify after prior ID"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
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
## Batch 068 — slots HS-0202 to HS-0204

Copy/paste or ask the Project session: `Generate Batch 068 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0202"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "officer recounts lineup ID by absent declarant"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0203"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "victim prior identification to passerby"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0204"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "witness identifies defendant at lineup then lacks memory"
   - evidence_vehicle: "transcript"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
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
## Batch 069 — slots HS-0205 to HS-0207

Copy/paste or ask the Project session: `Generate Batch 069 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0205"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "witness refuses to testify after prior ID"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0206"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "officer recounts lineup ID by absent declarant"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0207"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "victim prior identification to passerby"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
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
## Batch 070 — slots HS-0208 to HS-0210

Copy/paste or ask the Project session: `Generate Batch 070 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0208"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "witness identifies defendant at lineup then lacks memory"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0209"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "witness refuses to testify after prior ID"
   - evidence_vehicle: "transcript"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0210"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "officer recounts lineup ID by absent declarant"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
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
## Batch 071 — slots HS-0211 to HS-0213

Copy/paste or ask the Project session: `Generate Batch 071 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0211"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "victim prior identification to passerby"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0212"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "witness identifies defendant at lineup then lacks memory"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0213"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "witness refuses to testify after prior ID"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
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
## Batch 072 — slots HS-0214 to HS-0216

Copy/paste or ask the Project session: `Generate Batch 072 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0214"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "officer recounts lineup ID by absent declarant"
   - evidence_vehicle: "transcript"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0215"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "victim prior identification to passerby"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0216"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "witness identifies defendant at lineup then lacks memory"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
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
## Batch 073 — slots HS-0217 to HS-0219

Copy/paste or ask the Project session: `Generate Batch 073 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0217"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "witness refuses to testify after prior ID"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0218"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "officer recounts lineup ID by absent declarant"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0219"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "victim prior identification to passerby"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "125, 149"
   - repair_id: "REP-HS-013"
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