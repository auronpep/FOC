# BarMatrix Hearsay — Handoffs Batch 146 to 157

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

## Batch 146 — slots HS-0436 to HS-0438

Copy/paste or ask the Project session: `Generate Batch 146 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Declarant/victim state of mind as nontruth/condition proof / Hillmon intent / future conduct inference
   - slot_id: "HS-0436"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-028"
   - legal_collision: "Hillmon intent / future conduct inference"
   - fact_pattern_frame: "declarant says 'I remember he hit me'"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-005"
     - "WAL-HS-012"
     - "WAL-HS-019"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Declarant/victim state of mind as nontruth/condition proof / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0437"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "missing person says she will use pen name"
   - evidence_vehicle: "business record"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-006"
     - "WAL-HS-013"
     - "WAL-HS-020"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Declarant/victim state of mind as nontruth/condition proof / Bias/motive statement as nonhearsay
   - slot_id: "HS-0438"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "victim says she loves/fears defendant"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-023"
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
## Batch 147 — slots HS-0439 to HS-0441

Copy/paste or ask the Project session: `Generate Batch 147 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Declarant/victim state of mind as nontruth/condition proof / Limiting instruction mechanics
   - slot_id: "HS-0439"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "declarant plans trip"
   - evidence_vehicle: "computer record"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-008"
     - "WAL-HS-015"
     - "WAL-HS-022"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Declarant/victim state of mind as nontruth/condition proof / Declarant/victim state of mind vs remembered fact
   - slot_id: "HS-0440"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-027"
   - legal_collision: "Declarant/victim state of mind vs remembered fact"
   - fact_pattern_frame: "declarant says 'I remember he hit me'"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-009"
     - "WAL-HS-016"
     - "WAL-HS-023"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Declarant/victim state of mind as nontruth/condition proof / Hillmon intent / future conduct inference
   - slot_id: "HS-0441"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-028"
   - legal_collision: "Hillmon intent / future conduct inference"
   - fact_pattern_frame: "missing person says she will use pen name"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
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
## Batch 148 — slots HS-0442 to HS-0444

Copy/paste or ask the Project session: `Generate Batch 148 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Declarant/victim state of mind as nontruth/condition proof / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0442"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "victim says she loves/fears defendant"
   - evidence_vehicle: "business record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-011"
     - "WAL-HS-018"
     - "WAL-HS-025"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Declarant/victim state of mind as nontruth/condition proof / Bias/motive statement as nonhearsay
   - slot_id: "HS-0443"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "declarant plans trip"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-012"
     - "WAL-HS-019"
     - "WAL-HS-026"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Declarant/victim state of mind as nontruth/condition proof / Limiting instruction mechanics
   - slot_id: "HS-0444"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "declarant says 'I remember he hit me'"
   - evidence_vehicle: "computer record"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-007"
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
## Batch 149 — slots HS-0445 to HS-0447

Copy/paste or ask the Project session: `Generate Batch 149 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Declarant/victim state of mind as nontruth/condition proof / Declarant/victim state of mind vs remembered fact
   - slot_id: "HS-0445"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-027"
   - legal_collision: "Declarant/victim state of mind vs remembered fact"
   - fact_pattern_frame: "missing person says she will use pen name"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-014"
     - "WAL-HS-021"
     - "WAL-HS-028"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Declarant/victim state of mind as nontruth/condition proof / Hillmon intent / future conduct inference
   - slot_id: "HS-0446"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-028"
   - legal_collision: "Hillmon intent / future conduct inference"
   - fact_pattern_frame: "victim says she loves/fears defendant"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "truth"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-015"
     - "WAL-HS-022"
     - "WAL-HS-029"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Declarant/victim state of mind as nontruth/condition proof / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0447"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "declarant plans trip"
   - evidence_vehicle: "business record"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-022"
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
## Batch 150 — slots HS-0448 to HS-0450

Copy/paste or ask the Project session: `Generate Batch 150 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Declarant/victim state of mind as nontruth/condition proof / Bias/motive statement as nonhearsay
   - slot_id: "HS-0448"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "declarant says 'I remember he hit me'"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-017"
     - "WAL-HS-024"
     - "WAL-HS-031"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Declarant/victim state of mind as nontruth/condition proof / Limiting instruction mechanics
   - slot_id: "HS-0449"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "missing person says she will use pen name"
   - evidence_vehicle: "computer record"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-018"
     - "WAL-HS-025"
     - "WAL-HS-032"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Declarant/victim state of mind as nontruth/condition proof / Declarant/victim state of mind vs remembered fact
   - slot_id: "HS-0450"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-027"
   - legal_collision: "Declarant/victim state of mind vs remembered fact"
   - fact_pattern_frame: "victim says she loves/fears defendant"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
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
## Batch 151 — slots HS-0451 to HS-0453

Copy/paste or ask the Project session: `Generate Batch 151 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Declarant/victim state of mind as nontruth/condition proof / Hillmon intent / future conduct inference
   - slot_id: "HS-0451"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-028"
   - legal_collision: "Hillmon intent / future conduct inference"
   - fact_pattern_frame: "declarant plans trip"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-020"
     - "WAL-HS-027"
     - "WAL-HS-034"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Declarant/victim state of mind as nontruth/condition proof / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0452"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "declarant says 'I remember he hit me'"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-021"
     - "WAL-HS-028"
     - "WAL-HS-035"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Declarant/victim state of mind as nontruth/condition proof / Bias/motive statement as nonhearsay
   - slot_id: "HS-0453"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "missing person says she will use pen name"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-023"
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
## Batch 152 — slots HS-0454 to HS-0456

Copy/paste or ask the Project session: `Generate Batch 152 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Declarant/victim state of mind as nontruth/condition proof / Limiting instruction mechanics
   - slot_id: "HS-0454"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "victim says she loves/fears defendant"
   - evidence_vehicle: "computer record"
   - offered_purpose: "read-only"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-023"
     - "WAL-HS-030"
     - "WAL-HS-037"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Declarant/victim state of mind as nontruth/condition proof / Declarant/victim state of mind vs remembered fact
   - slot_id: "HS-0455"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-027"
   - legal_collision: "Declarant/victim state of mind vs remembered fact"
   - fact_pattern_frame: "declarant plans trip"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "chain-pass/fail"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-024"
     - "WAL-HS-031"
     - "WAL-HS-038"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Declarant/victim state of mind as nontruth/condition proof / Hillmon intent / future conduct inference
   - slot_id: "HS-0456"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-028"
   - legal_collision: "Hillmon intent / future conduct inference"
   - fact_pattern_frame: "declarant says 'I remember he hit me'"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "confrontation-safe/unsafe"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
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
## Batch 153 — slots HS-0457 to HS-0459

Copy/paste or ask the Project session: `Generate Batch 153 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Declarant/victim state of mind as nontruth/condition proof / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0457"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "missing person says she will use pen name"
   - evidence_vehicle: "business record"
   - offered_purpose: "truth"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-022"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: required
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-026"
     - "WAL-HS-033"
     - "WAL-HS-040"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Declarant/victim state of mind as nontruth/condition proof / Bias/motive statement as nonhearsay
   - slot_id: "HS-0458"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "victim says she loves/fears defendant"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "notice/effect"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-027"
     - "WAL-HS-034"
     - "WAL-HS-041"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Declarant/victim state of mind as nontruth/condition proof / Limiting instruction mechanics
   - slot_id: "HS-0459"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "declarant plans trip"
   - evidence_vehicle: "computer record"
   - offered_purpose: "reason-for-action"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-007"
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
## Batch 154 — slots HS-0460 to HS-0462

Copy/paste or ask the Project session: `Generate Batch 154 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Declarant/victim state of mind as nontruth/condition proof / Declarant/victim state of mind vs remembered fact
   - slot_id: "HS-0460"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-027"
   - legal_collision: "Declarant/victim state of mind vs remembered fact"
   - fact_pattern_frame: "declarant says 'I remember he hit me'"
   - evidence_vehicle: "live testimony"
   - offered_purpose: "knowledge/mens-rea"
   - jurisdiction_mode: "FRE baseline"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Which items are admissible?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-029"
     - "WAL-HS-036"
     - "WAL-HS-043"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Declarant/victim state of mind as nontruth/condition proof / Hillmon intent / future conduct inference
   - slot_id: "HS-0461"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-028"
   - legal_collision: "Hillmon intent / future conduct inference"
   - fact_pattern_frame: "missing person says she will use pen name"
   - evidence_vehicle: "recording/tape"
   - offered_purpose: "impeachment-only"
   - jurisdiction_mode: "California distinction"
   - ca_source_flag: "California flag"
   - stem_archetype: "The document should be..."
   - difficulty_band: "Calibration"
   - accuracy_target: "75-90%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-019"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-030"
     - "WAL-HS-037"
     - "WAL-HS-044"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Declarant/victim state of mind as nontruth/condition proof / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0462"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "victim says she loves/fears defendant"
   - evidence_vehicle: "business record"
   - offered_purpose: "substantive exemption"
   - jurisdiction_mode: "Criminal confrontation overlay"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Admissible for which purpose?"
   - difficulty_band: "Core diagnostic"
   - accuracy_target: "60-74%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-022"
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
## Batch 155 — slots HS-0463 to HS-0465

Copy/paste or ask the Project session: `Generate Batch 155 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Declarant/victim state of mind as nontruth/condition proof / Bias/motive statement as nonhearsay
   - slot_id: "HS-0463"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "declarant plans trip"
   - evidence_vehicle: "oral statement"
   - offered_purpose: "substantive exception"
   - jurisdiction_mode: "FRE with presentation crossover"
   - ca_source_flag: "FRE default"
   - stem_archetype: "Is the statement admissible as substantive evidence, impeachment, both, or neither?"
   - difficulty_band: "Trap repair"
   - accuracy_target: "45-59%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-023"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: none
   - required_wrong_answer_mechanics:
     - "WAL-HS-032"
     - "WAL-HS-039"
     - "WAL-HS-046"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Declarant/victim state of mind as nontruth/condition proof / Limiting instruction mechanics
   - slot_id: "HS-0464"
   - official_outline_node: "HS-B3b"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Declarant/victim state of mind as nontruth/condition proof"
   - operating_description: "Emotion, intent, plan, fear, love, future conduct; memory-belief limits"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "declarant says 'I remember he hit me'"
   - evidence_vehicle: "computer record"
   - offered_purpose: "dual route"
   - jurisdiction_mode: "Mixed FRE/CA comparison"
   - ca_source_flag: "FRE default"
   - stem_archetype: "How should the court rule after a limiting-instruction request?"
   - difficulty_band: "Elite discriminator"
   - accuracy_target: "20-44%"
   - sample_rows: "100, 112, 118"
   - repair_id: "REP-HS-007"
   - qa_focus: "Must name statement layer, route, and admitted scope; reject broad hearsay labels."
   - confrontation_flag: none
   - california_distinction_flag: needs_review
   - required_wrong_answer_mechanics:
     - "WAL-HS-033"
     - "WAL-HS-040"
     - "WAL-HS-047"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Legally operative facts and verbal acts / Legally operative words / verbal acts
   - slot_id: "HS-0465"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-029"
   - legal_collision: "Legally operative words / verbal acts"
   - fact_pattern_frame: "acceptance of contract offer"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "substantive exception"
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
     - "WAL-HS-034"
     - "WAL-HS-041"
     - "WAL-HS-048"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 156 — slots HS-0466 to HS-0468

Copy/paste or ask the Project session: `Generate Batch 156 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Legally operative facts and verbal acts / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0466"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "threat words offered as threat"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "dual route"
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
     - "WAL-HS-035"
     - "WAL-HS-042"
     - "WAL-HS-001"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Legally operative facts and verbal acts / Bias/motive statement as nonhearsay
   - slot_id: "HS-0467"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "defamation words as publication"
   - evidence_vehicle: "report with embedded statement"
   - offered_purpose: "read-only"
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
     - "WAL-HS-036"
     - "WAL-HS-043"
     - "WAL-HS-002"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Legally operative facts and verbal acts / Limiting instruction mechanics
   - slot_id: "HS-0468"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-034"
   - legal_collision: "Limiting instruction mechanics"
   - fact_pattern_frame: "notice words as legal notice"
   - evidence_vehicle: "document/copy"
   - offered_purpose: "chain-pass/fail"
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
     - "WAL-HS-037"
     - "WAL-HS-044"
     - "WAL-HS-003"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.
## Batch 157 — slots HS-0469 to HS-0471

Copy/paste or ask the Project session: `Generate Batch 157 from the Hearsay Project Knowledge handoff file.`

### Batch-specific targets

1. Legally operative facts and verbal acts / Legally operative words / verbal acts
   - slot_id: "HS-0469"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-029"
   - legal_collision: "Legally operative words / verbal acts"
   - fact_pattern_frame: "acceptance of contract offer"
   - evidence_vehicle: "transcript"
   - offered_purpose: "confrontation-safe/unsafe"
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
     - "WAL-HS-038"
     - "WAL-HS-045"
     - "WAL-HS-004"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

2. Legally operative facts and verbal acts / Circumstantial identity / nonassertive identity
   - slot_id: "HS-0470"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-032"
   - legal_collision: "Circumstantial identity / nonassertive identity"
   - fact_pattern_frame: "threat words offered as threat"
   - evidence_vehicle: "public record/certification"
   - offered_purpose: "truth"
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
     - "WAL-HS-039"
     - "WAL-HS-046"
     - "WAL-HS-005"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

3. Legally operative facts and verbal acts / Bias/motive statement as nonhearsay
   - slot_id: "HS-0471"
   - official_outline_node: "HS-B3c"
   - official_section: "B. Hearsay Exemptions"
   - official_topic: "Legally operative facts and verbal acts"
   - operating_description: "Offer/acceptance, defamation, threats, contract words, notice words as acts"
   - primary_tension_id: "HS-033"
   - legal_collision: "Bias/motive statement as nonhearsay"
   - fact_pattern_frame: "defamation words as publication"
   - evidence_vehicle: "note/letter"
   - offered_purpose: "notice/effect"
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
     - "WAL-HS-040"
     - "WAL-HS-047"
     - "WAL-HS-006"
   - drafting_note: "Use the slot as a mechanics target, not as final question text. Change actors, setting, timing, vehicle, and answer-choice grammar to preserve copy safety."

### Output reminder

Return exactly three YAML documents separated by `---`. Each target becomes one `hearsay_finished_question_draft`.