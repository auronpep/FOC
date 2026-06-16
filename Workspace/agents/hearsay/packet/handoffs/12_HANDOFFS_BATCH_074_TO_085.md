# BarMatrix Hearsay — Handoffs Batch 074 to 085

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

## Batch 074 — slots HS-0220 to HS-0222

Copy/paste or ask the Project session: `Generate Batch 074 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0220"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "witness identifies defendant at lineup then lacks memory"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
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
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Prior identification / Prior identification: subject-to-cross requirement
   - slot_id: "HS-0221"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-014"
   - legal_collision: "Prior identification: subject-to-cross requirement"
   - fact_pattern_frame: "witness refuses to testify after prior ID"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
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
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Prior identification / Prior ID vs excited utterance / present sense routes
   - slot_id: "HS-0222"
   - official_outline_node: "HS-B1c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Prior identification"
   - operating_description: "Earlier ID after perceiving person; declarant testifies and is subject to cross; memory loss/refusal contrasts"
   - primary_tension_id: "HS-015"
   - legal_collision: "Prior ID vs excited utterance / present sense routes"
   - fact_pattern_frame: "officer recounts lineup ID by absent declarant"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
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
     - "WAL-HS-031"
     - "WAL-HS-038"
     - "WAL-HS-045"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 075 — slots HS-0223 to HS-0225

Copy/paste or ask the Project session: `Generate Batch 075 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Adoptive statements / Adoptive admission by silence/conduct
   - slot_id: "HS-0223"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-018"
   - legal_collision: "Adoptive admission by silence/conduct"
   - fact_pattern_frame: "defendant introduced as partner and nods"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "124"
   - repair_id: "REP-HS-015"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Adoptive statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0224"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party silent after accusation in social setting"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Adoptive statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0225"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "employee accepts statement with handshake"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
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
## Batch 076 — slots HS-0226 to HS-0228

Copy/paste or ask the Project session: `Generate Batch 076 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Adoptive statements / Adoptive admission by silence/conduct
   - slot_id: "HS-0226"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-018"
   - legal_collision: "Adoptive admission by silence/conduct"
   - fact_pattern_frame: "accused in custody remains silent after police accusation"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "124"
   - repair_id: "REP-HS-015"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Adoptive statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0227"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "defendant introduced as partner and nods"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Adoptive statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0228"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "party silent after accusation in social setting"
   - evidence_vehicle: "transcript"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
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
## Batch 077 — slots HS-0229 to HS-0231

Copy/paste or ask the Project session: `Generate Batch 077 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Adoptive statements / Adoptive admission by silence/conduct
   - slot_id: "HS-0229"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-018"
   - legal_collision: "Adoptive admission by silence/conduct"
   - fact_pattern_frame: "employee accepts statement with handshake"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "124"
   - repair_id: "REP-HS-015"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Adoptive statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0230"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "accused in custody remains silent after police accusation"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Adoptive statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0231"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant introduced as partner and nods"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
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
## Batch 078 — slots HS-0232 to HS-0234

Copy/paste or ask the Project session: `Generate Batch 078 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Adoptive statements / Adoptive admission by silence/conduct
   - slot_id: "HS-0232"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-018"
   - legal_collision: "Adoptive admission by silence/conduct"
   - fact_pattern_frame: "party silent after accusation in social setting"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "124"
   - repair_id: "REP-HS-015"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Adoptive statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0233"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "employee accepts statement with handshake"
   - evidence_vehicle: "transcript"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Adoptive statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0234"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "accused in custody remains silent after police accusation"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
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
## Batch 079 — slots HS-0235 to HS-0237

Copy/paste or ask the Project session: `Generate Batch 079 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Adoptive statements / Adoptive admission by silence/conduct
   - slot_id: "HS-0235"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-018"
   - legal_collision: "Adoptive admission by silence/conduct"
   - fact_pattern_frame: "defendant introduced as partner and nods"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "124"
   - repair_id: "REP-HS-015"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Adoptive statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0236"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party silent after accusation in social setting"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Adoptive statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0237"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "employee accepts statement with handshake"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
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
## Batch 080 — slots HS-0238 to HS-0240

Copy/paste or ask the Project session: `Generate Batch 080 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Adoptive statements / Adoptive admission by silence/conduct
   - slot_id: "HS-0238"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-018"
   - legal_collision: "Adoptive admission by silence/conduct"
   - fact_pattern_frame: "accused in custody remains silent after police accusation"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "124"
   - repair_id: "REP-HS-015"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Adoptive statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0239"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "defendant introduced as partner and nods"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Adoptive statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0240"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "party silent after accusation in social setting"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
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
## Batch 081 — slots HS-0241 to HS-0243

Copy/paste or ask the Project session: `Generate Batch 081 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Adoptive statements / Adoptive admission by silence/conduct
   - slot_id: "HS-0241"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-018"
   - legal_collision: "Adoptive admission by silence/conduct"
   - fact_pattern_frame: "employee accepts statement with handshake"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "124"
   - repair_id: "REP-HS-015"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Adoptive statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0242"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "accused in custody remains silent after police accusation"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Adoptive statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0243"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant introduced as partner and nods"
   - evidence_vehicle: "transcript"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
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
## Batch 082 — slots HS-0244 to HS-0246

Copy/paste or ask the Project session: `Generate Batch 082 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Adoptive statements / Adoptive admission by silence/conduct
   - slot_id: "HS-0244"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-018"
   - legal_collision: "Adoptive admission by silence/conduct"
   - fact_pattern_frame: "party silent after accusation in social setting"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "124"
   - repair_id: "REP-HS-015"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Adoptive statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0245"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "employee accepts statement with handshake"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Adoptive statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0246"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "accused in custody remains silent after police accusation"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
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
## Batch 083 — slots HS-0247 to HS-0249

Copy/paste or ask the Project session: `Generate Batch 083 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Adoptive statements / Adoptive admission by silence/conduct
   - slot_id: "HS-0247"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-018"
   - legal_collision: "Adoptive admission by silence/conduct"
   - fact_pattern_frame: "defendant introduced as partner and nods"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "124"
   - repair_id: "REP-HS-015"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Adoptive statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0248"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party silent after accusation in social setting"
   - evidence_vehicle: "transcript"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Adoptive statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0249"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "employee accepts statement with handshake"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "124"
   - repair_id: "REP-HS-014"
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
## Batch 084 — slots HS-0250 to HS-0252

Copy/paste or ask the Project session: `Generate Batch 084 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Adoptive statements / Adoptive admission by silence/conduct
   - slot_id: "HS-0250"
   - official_outline_node: "HS-B2a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Adoptive statements"
   - operating_description: "Manifested adoption by silence/conduct; circumstances call for denial; party use limits"
   - primary_tension_id: "HS-018"
   - legal_collision: "Adoptive admission by silence/conduct"
   - fact_pattern_frame: "accused in custody remains silent after police accusation"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "124"
   - repair_id: "REP-HS-015"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Authorized statements / Authorized speaker foundation
   - slot_id: "HS-0251"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-019"
   - legal_collision: "Authorized speaker foundation"
   - fact_pattern_frame: "agent says 'I accept for principal'"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119"
   - repair_id: "REP-HS-016"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Authorized statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0252"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "lawyer authorized to negotiate statement"
   - evidence_vehicle: "transcript"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
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
## Batch 085 — slots HS-0253 to HS-0255

Copy/paste or ask the Project session: `Generate Batch 085 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Authorized statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0253"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "spokesperson press statement"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Authorized statements / Authorized speaker foundation
   - slot_id: "HS-0254"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-019"
   - legal_collision: "Authorized speaker foundation"
   - fact_pattern_frame: "employee with no authority purports to bind principal"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "119"
   - repair_id: "REP-HS-016"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Authorized statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0255"
   - official_outline_node: "HS-B2b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Authorized statements"
   - operating_description: "Statement by authorized speaker; independent foundation; apparent/actual authority traps"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "agent says 'I accept for principal'"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "119"
   - repair_id: "REP-HS-014"
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