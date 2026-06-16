# Example Single-Slot Request

Use this as a test prompt after uploading the packet.

```text
Generate one Hearsay Christian Study Group question from this target:

slot_id: HS-0401
official_outline_node: HS-B3a
official_section: B. Hearsay Exemptions
official_topic: Effect on listener
primary_tension_id: HS-025
legal_collision: Effect on listener / notice vs truth
fact_pattern_frame: contract notice letter and routine mailing
evidence_vehicle: oral statement
offered_purpose: confrontation-safe/unsafe
jurisdiction_mode: FRE with presentation crossover
ca_source_flag: FRE default
stem_archetype: Is the statement admissible as substantive evidence, impeachment, both, or neither?
difficulty_band: Calibration
accuracy_target: 75-90%
repair_id: REP-HS-001
confrontation_flag: none
california_distinction_flag: none
required_wrong_answer_mechanics:
  - WAL-HS-018
  - WAL-HS-025
  - WAL-HS-032
qa_focus: Must name statement layer, route, and admitted scope; reject broad hearsay labels.

Use PROMPT.md and SKILL.md. Return one YAML document only.
```
