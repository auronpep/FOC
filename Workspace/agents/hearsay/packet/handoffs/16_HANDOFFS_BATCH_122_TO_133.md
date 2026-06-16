# BarMatrix Hearsay — Handoffs Batch 122 to 133

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

## Batch 122 — slots HS-0364 to HS-0366

Copy/paste or ask the Project session: `Generate Batch 122 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Direct party admission vs exception/against-interest confusion
   - slot_id: "HS-0364"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-017"
   - legal_collision: "Direct party admission vs exception/against-interest confusion"
   - fact_pattern_frame: "tax letter admission"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Party admission vs public-policy exclusion decoy
   - slot_id: "HS-0365"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-022"
   - legal_collision: "Party admission vs public-policy exclusion decoy"
   - fact_pattern_frame: "plumber apology/offer to redo"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-010"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Opposing-party statement in writing + authentication
   - slot_id: "HS-0366"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party's taped private statement"
   - evidence_vehicle: "business record"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
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
## Batch 123 — slots HS-0367 to HS-0369

Copy/paste or ask the Project session: `Generate Batch 123 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Statement against principal vs statement by declarant party
   - slot_id: "HS-0367"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant's payment statement after rat bite"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-014"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Direct party admission vs exception/against-interest confusion
   - slot_id: "HS-0368"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-017"
   - legal_collision: "Direct party admission vs exception/against-interest confusion"
   - fact_pattern_frame: "tax letter admission"
   - evidence_vehicle: "computer record"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Party admission vs public-policy exclusion decoy
   - slot_id: "HS-0369"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-022"
   - legal_collision: "Party admission vs public-policy exclusion decoy"
   - fact_pattern_frame: "plumber apology/offer to redo"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "substantive exemption"
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
     - "WAL-HS-034"
     - "WAL-HS-041"
     - "WAL-HS-048"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 124 — slots HS-0370 to HS-0372

Copy/paste or ask the Project session: `Generate Batch 124 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Opposing-party statement in writing + authentication
   - slot_id: "HS-0370"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party's taped private statement"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Statement against principal vs statement by declarant party
   - slot_id: "HS-0371"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant's payment statement after rat bite"
   - evidence_vehicle: "business record"
   - offered_purpose: "dual route"
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
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Direct party admission vs exception/against-interest confusion
   - slot_id: "HS-0372"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-017"
   - legal_collision: "Direct party admission vs exception/against-interest confusion"
   - fact_pattern_frame: "tax letter admission"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "read-only"
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
     - "WAL-HS-037"
     - "WAL-HS-044"
     - "WAL-HS-003"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 125 — slots HS-0373 to HS-0375

Copy/paste or ask the Project session: `Generate Batch 125 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Party admission vs public-policy exclusion decoy
   - slot_id: "HS-0373"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-022"
   - legal_collision: "Party admission vs public-policy exclusion decoy"
   - fact_pattern_frame: "plumber apology/offer to redo"
   - evidence_vehicle: "computer record"
   - offered_purpose: "chain-pass/fail"
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
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Opposing-party statement in writing + authentication
   - slot_id: "HS-0374"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party's taped private statement"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "confrontation-safe/unsafe"
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
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Statement against principal vs statement by declarant party
   - slot_id: "HS-0375"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant's payment statement after rat bite"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "truth"
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
     - "WAL-HS-040"
     - "WAL-HS-047"
     - "WAL-HS-006"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 126 — slots HS-0376 to HS-0378

Copy/paste or ask the Project session: `Generate Batch 126 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Direct party admission vs exception/against-interest confusion
   - slot_id: "HS-0376"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-017"
   - legal_collision: "Direct party admission vs exception/against-interest confusion"
   - fact_pattern_frame: "tax letter admission"
   - evidence_vehicle: "business record"
   - offered_purpose: "notice/effect"
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
     - "WAL-HS-041"
     - "WAL-HS-048"
     - "WAL-HS-007"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Party admission vs public-policy exclusion decoy
   - slot_id: "HS-0377"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-022"
   - legal_collision: "Party admission vs public-policy exclusion decoy"
   - fact_pattern_frame: "plumber apology/offer to redo"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "reason-for-action"
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
     - "WAL-HS-042"
     - "WAL-HS-001"
     - "WAL-HS-008"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Opposing-party statement in writing + authentication
   - slot_id: "HS-0378"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party's taped private statement"
   - evidence_vehicle: "computer record"
   - offered_purpose: "knowledge/mens-rea"
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
     - "WAL-HS-043"
     - "WAL-HS-002"
     - "WAL-HS-009"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 127 — slots HS-0379 to HS-0381

Copy/paste or ask the Project session: `Generate Batch 127 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Statement against principal vs statement by declarant party
   - slot_id: "HS-0379"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant's payment statement after rat bite"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "impeachment-only"
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
     - "WAL-HS-044"
     - "WAL-HS-003"
     - "WAL-HS-010"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Direct party admission vs exception/against-interest confusion
   - slot_id: "HS-0380"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-017"
   - legal_collision: "Direct party admission vs exception/against-interest confusion"
   - fact_pattern_frame: "tax letter admission"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exemption"
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
     - "WAL-HS-045"
     - "WAL-HS-004"
     - "WAL-HS-011"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Party admission vs public-policy exclusion decoy
   - slot_id: "HS-0381"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-022"
   - legal_collision: "Party admission vs public-policy exclusion decoy"
   - fact_pattern_frame: "plumber apology/offer to redo"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-046"
     - "WAL-HS-005"
     - "WAL-HS-012"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 128 — slots HS-0382 to HS-0384

Copy/paste or ask the Project session: `Generate Batch 128 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Opposing-party statement in writing + authentication
   - slot_id: "HS-0382"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-023"
   - legal_collision: "Opposing-party statement in writing + authentication"
   - fact_pattern_frame: "party's taped private statement"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "dual route"
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
     - "WAL-HS-047"
     - "WAL-HS-006"
     - "WAL-HS-013"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Direct party admissions / Statement against principal vs statement by declarant party
   - slot_id: "HS-0383"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-024"
   - legal_collision: "Statement against principal vs statement by declarant party"
   - fact_pattern_frame: "defendant's payment statement after rat bite"
   - evidence_vehicle: "computer record"
   - offered_purpose: "read-only"
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
     - "WAL-HS-048"
     - "WAL-HS-007"
     - "WAL-HS-014"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Direct party admissions / Direct party admission vs exception/against-interest confusion
   - slot_id: "HS-0384"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-017"
   - legal_collision: "Direct party admission vs exception/against-interest confusion"
   - fact_pattern_frame: "tax letter admission"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "110, 130, 133, 137, 148"
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
## Batch 129 — slots HS-0385 to HS-0387

Copy/paste or ask the Project session: `Generate Batch 129 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Direct party admissions / Party admission vs public-policy exclusion decoy
   - slot_id: "HS-0385"
   - official_outline_node: "HS-B2e"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Direct party admissions"
   - operating_description: "Own statement offered against party; settlement/payment/policy decoys"
   - primary_tension_id: "HS-022"
   - legal_collision: "Party admission vs public-policy exclusion decoy"
   - fact_pattern_frame: "plumber apology/offer to redo"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "110, 130, 133, 137, 148"
   - repair_id: "REP-HS-010"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-002"
     - "WAL-HS-009"
     - "WAL-HS-016"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Effect on listener / Effect on listener / notice vs truth
   - slot_id: "HS-0386"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-025"
   - legal_collision: "Effect on listener / notice vs truth"
   - fact_pattern_frame: "consumer letters to manufacturer for notice"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-003"
     - "WAL-HS-010"
     - "WAL-HS-017"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Effect on listener / Reasonable belief / motive for action
   - slot_id: "HS-0387"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-026"
   - legal_collision: "Reasonable belief / motive for action"
   - fact_pattern_frame: "warning relayed to manager through wrong listener"
   - evidence_vehicle: "computer record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-001"
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
## Batch 130 — slots HS-0388 to HS-0390

Copy/paste or ask the Project session: `Generate Batch 130 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Effect on listener / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0388"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "radio dispatch heard by officer"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Effect on listener / Bias/motive statement as nonhearsay
   - slot_id: "HS-0389"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "contract notice letter and routine mailing"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Effect on listener / Limiting instruction mechanics
   - slot_id: "HS-0390"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "consumer letters to manufacturer for notice"
   - evidence_vehicle: "business record"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-007"
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
## Batch 131 — slots HS-0391 to HS-0393

Copy/paste or ask the Project session: `Generate Batch 131 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Effect on listener / Effect on listener / notice vs truth
   - slot_id: "HS-0391"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-025"
   - legal_collision: "Effect on listener / notice vs truth"
   - fact_pattern_frame: "warning relayed to manager through wrong listener"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "truth"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Effect on listener / Reasonable belief / motive for action
   - slot_id: "HS-0392"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-026"
   - legal_collision: "Reasonable belief / motive for action"
   - fact_pattern_frame: "radio dispatch heard by officer"
   - evidence_vehicle: "computer record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Effect on listener / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0393"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "contract notice letter and routine mailing"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-022"
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
## Batch 132 — slots HS-0394 to HS-0396

Copy/paste or ask the Project session: `Generate Batch 132 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Effect on listener / Bias/motive statement as nonhearsay
   - slot_id: "HS-0394"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "consumer letters to manufacturer for notice"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Effect on listener / Limiting instruction mechanics
   - slot_id: "HS-0395"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "warning relayed to manager through wrong listener"
   - evidence_vehicle: "business record"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Effect on listener / Effect on listener / notice vs truth
   - slot_id: "HS-0396"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-025"
   - legal_collision: "Effect on listener / notice vs truth"
   - fact_pattern_frame: "radio dispatch heard by officer"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-001"
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
## Batch 133 — slots HS-0397 to HS-0399

Copy/paste or ask the Project session: `Generate Batch 133 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Effect on listener / Reasonable belief / motive for action
   - slot_id: "HS-0397"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-026"
   - legal_collision: "Reasonable belief / motive for action"
   - fact_pattern_frame: "contract notice letter and routine mailing"
   - evidence_vehicle: "computer record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-001"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Effect on listener / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0398"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "consumer letters to manufacturer for notice"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Effect on listener / Bias/motive statement as nonhearsay
   - slot_id: "HS-0399"
   - official_outline_node: "HS-B3a"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Effect on listener"
   - operating_description: "Notice, reasonable belief, motive, reason for action, wrong-listener traps"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "warning relayed to manager through wrong listener"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "92, 105, 108, 120, 121, 141"
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