# BarMatrix Hearsay — Handoffs Batch 110 to 121

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

## Batch 110 — slots HS-0328 to HS-0330

Copy/paste or ask the Project session: `Generate Batch 110 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Co-conspirator statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0328"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "idle narrative after conspiracy ended"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0329"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "co-conspirator operational instruction"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Co-conspirator statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0330"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "post-arrest confession to girlfriend"
   - evidence_vehicle: "transcript"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
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
## Batch 111 — slots HS-0331 to HS-0333

Copy/paste or ask the Project session: `Generate Batch 111 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Co-conspirator statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0331"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "statement allocating proceeds during scheme"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0332"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "idle narrative after conspiracy ended"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Co-conspirator statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0333"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "co-conspirator operational instruction"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
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
## Batch 112 — slots HS-0334 to HS-0336

Copy/paste or ask the Project session: `Generate Batch 112 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Co-conspirator statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0334"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "post-arrest confession to girlfriend"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0335"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "statement allocating proceeds during scheme"
   - evidence_vehicle: "transcript"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Co-conspirator statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0336"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "idle narrative after conspiracy ended"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
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
## Batch 113 — slots HS-0337 to HS-0339

Copy/paste or ask the Project session: `Generate Batch 113 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Co-conspirator statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0337"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "co-conspirator operational instruction"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0338"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "post-arrest confession to girlfriend"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Co-conspirator statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0339"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "statement allocating proceeds during scheme"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
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
## Batch 114 — slots HS-0340 to HS-0342

Copy/paste or ask the Project session: `Generate Batch 114 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Co-conspirator statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0340"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "idle narrative after conspiracy ended"
   - evidence_vehicle: "transcript"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0341"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "co-conspirator operational instruction"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Co-conspirator statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0342"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "post-arrest confession to girlfriend"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
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
## Batch 115 — slots HS-0343 to HS-0345

Copy/paste or ask the Project session: `Generate Batch 115 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Co-conspirator statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0343"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "statement allocating proceeds during scheme"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which exception, if any, applies?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0344"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "idle narrative after conspiracy ended"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "The testimony is..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Co-conspirator statements / Opposing-party statement in writing + authentication
   - slot_id: "HS-0345"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "co-conspirator operational instruction"
   - evidence_vehicle: "transcript"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Should the court admit the statement?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
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
## Batch 116 — slots HS-0346 to HS-0348

Copy/paste or ask the Project session: `Generate Batch 116 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Co-conspirator statements / Statement against principal vs statement by declarant party
   - slot_id: "HS-0346"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "post-arrest confession to girlfriend"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which statement is most likely admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "98"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Co-conspirator statements / Co-conspirator during and in furtherance
   - slot_id: "HS-0347"
   - official_outline_node: "HS-B2d"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Co-conspirator statements"
   - operating_description: "During and in furtherance; post-arrest narratives; proof independent of statement"
   - primary_tension_id: "HS-021"
   - legal_collision: "Co-conspirator during and in furtherance"
   - fact_pattern_frame: "statement allocating proceeds during scheme"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "Which evidence vehicle avoids the objection?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "98"
   - repair_id: "REP-HS-018"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Direct party admission vs exception/against-interest confusion
   - slot_id: "HS-0348"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-017"
   - legal_collision: "Direct party admission vs exception/against-interest confusion"
   - fact_pattern_frame: "tax letter admission"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "110, 130, 133, 137, 148"
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
## Batch 117 — slots HS-0349 to HS-0351

Copy/paste or ask the Project session: `Generate Batch 117 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Party admission vs public-policy exclusion decoy
   - slot_id: "HS-0349"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-022"
   - legal_collision: "Party admission vs public-policy exclusion decoy"
   - fact_pattern_frame: "plumber apology/offer to redo"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-010"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Opposing-party statement in writing + authentication
   - slot_id: "HS-0350"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party's taped private statement"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Statement against principal vs statement by declarant party
   - slot_id: "HS-0351"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant's payment statement after rat bite"
   - evidence_vehicle: "business record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "110, 130, 133, 137, 148"
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
## Batch 118 — slots HS-0352 to HS-0354

Copy/paste or ask the Project session: `Generate Batch 118 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Direct party admission vs exception/against-interest confusion
   - slot_id: "HS-0352"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-017"
   - legal_collision: "Direct party admission vs exception/against-interest confusion"
   - fact_pattern_frame: "tax letter admission"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Party admission vs public-policy exclusion decoy
   - slot_id: "HS-0353"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-022"
   - legal_collision: "Party admission vs public-policy exclusion decoy"
   - fact_pattern_frame: "plumber apology/offer to redo"
   - evidence_vehicle: "computer record"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-010"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Opposing-party statement in writing + authentication
   - slot_id: "HS-0354"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party's taped private statement"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
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
## Batch 119 — slots HS-0355 to HS-0357

Copy/paste or ask the Project session: `Generate Batch 119 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Statement against principal vs statement by declarant party
   - slot_id: "HS-0355"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant's payment statement after rat bite"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Direct party admission vs exception/against-interest confusion
   - slot_id: "HS-0356"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-017"
   - legal_collision: "Direct party admission vs exception/against-interest confusion"
   - fact_pattern_frame: "tax letter admission"
   - evidence_vehicle: "business record"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Party admission vs public-policy exclusion decoy
   - slot_id: "HS-0357"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-022"
   - legal_collision: "Party admission vs public-policy exclusion decoy"
   - fact_pattern_frame: "plumber apology/offer to redo"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-010"
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
## Batch 120 — slots HS-0358 to HS-0360

Copy/paste or ask the Project session: `Generate Batch 120 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Opposing-party statement in writing + authentication
   - slot_id: "HS-0358"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party's taped private statement"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Statement against principal vs statement by declarant party
   - slot_id: "HS-0359"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant's payment statement after rat bite"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Direct party admission vs exception/against-interest confusion
   - slot_id: "HS-0360"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-017"
   - legal_collision: "Direct party admission vs exception/against-interest confusion"
   - fact_pattern_frame: "tax letter admission"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
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
## Batch 121 — slots HS-0361 to HS-0363

Copy/paste or ask the Project session: `Generate Batch 121 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Party admission vs public-policy exclusion decoy
   - slot_id: "HS-0361"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-022"
   - legal_collision: "Party admission vs public-policy exclusion decoy"
   - fact_pattern_frame: "plumber apology/offer to redo"
   - evidence_vehicle: "business record"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-010"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Opposing-party statement in writing + authentication
   - slot_id: "HS-0362"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party's taped private statement"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Statement against principal vs statement by declarant party
   - slot_id: "HS-0363"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant's payment statement after rat bite"
   - evidence_vehicle: "computer record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
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