---
name: hearsay-generate
description: Generate BarMatrix Hearsay Christian Study Group YAML drafts from slot targets or batch handoffs.
---

# Hearsay Generate Skill

Use this skill when the user asks the `hearsay` agent to generate a Hearsay slot, batch, draft, or finished question.

## Inputs

Accept either:

- A single slot target such as `HS-0401`.
- A batch command such as `Generate Batch 050`.
- A pasted slot target.
- A handoff file path under `packet\handoffs`.

## Required Reads

Before drafting, read:

1. `packet\README.md`
2. `packet\AGENTS.md`
3. `packet\PROMPT.md`
4. `packet\SKILL.md`
5. `packet\controlled_vocabularies.md`
6. Relevant `packet\OUTLINE_CODES_COMPLETE.md` entries
7. Relevant source or handoff file
8. `packet\templates\hearsay_finished_question_template.yaml`

Use `packet\source_docs\hearsay_wrong_answer_mechanics.md` and `packet\source_docs\hearsay_bootcamp_repairs.md` whenever assigning WAL or REP IDs.

## Drafting Rules

- Return YAML in the packet template shape.
- Preserve the required top-level section order from `packet\SKILL.md`.
- Use `artifact_type: hearsay_finished_question_draft`.
- Use `review_status: draft_internal_only`.
- Use `source_mode: synthetic_from_tension_not_source_question` unless the user expressly requests a transform.
- Use a valid outline code from `packet\OUTLINE_CODES_COMPLETE.md`; default to `33040000` only when no deeper valid Hearsay code fits.
- Include exact statement, declarant, offered purpose, route, layer, vehicle, and scope.
- Include WAL and REP IDs that exist in the packet.
- Keep Christian surface explicit and legally sterile.
- Keep legal authority in `source_law_trace`, not in student-facing C3 logic.
- Keep all required human-review flags true.

## Handoff To QA

When the user asks for a finished draft or saved output, do not stop after drafting. Save the draft YAML under `drafts\`, then immediately run `hearsay-qa-repair`.
