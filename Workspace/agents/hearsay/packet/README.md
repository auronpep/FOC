# BarMatrix Hearsay Christian Study Group Packet

Version: `BM-HS-CHRISTIAN-PACKET-v2026-06-16`

This packet is a ready-to-upload / ready-to-attach Hearsay question-generation kit for BarMatrix as a Christian study group for bar takers.

## Use order

For a generation session, attach or load these files in this order:

1. `AGENTS.md`
2. `PROMPT.md`
3. `SKILL.md`
4. `controlled_vocabularies.md`
5. `OUTLINE_CODES_COMPLETE.md`
6. `source_docs/02_HEARSAY_SOURCE_OF_TRUTH_TABLES.md`
7. The relevant `handoffs/*_HANDOFFS_BATCH_*.md` file or a single slot target

Optional but useful:

- `source_docs/hearsay_wrong_answer_mechanics.md`
- `source_docs/hearsay_bootcamp_repairs.md`
- `source_docs/hearsay_confrontation_matrix.md`
- `source_docs/hearsay_california_distinctions.md`
- `templates/hearsay_finished_question_template.yaml`

## Default task commands

Use one of these commands with an AI session:

```text
Generate Batch 050 from handoffs/10_HANDOFFS_BATCH_050_TO_061.md using PROMPT.md and SKILL.md.
```

```text
Generate one Hearsay Christian Study Group question for slot HS-0401 using the attached slot target.
```

```text
Audit this Hearsay YAML against SKILL.md and repair only fields that fail the gate.
```

## What changed in this packet

- The root prompt is now Hearsay-first rather than generic MBE-transform-first.
- The Christian flavor is intentionally explicit, not incidental.
- Religious texture is required in the surface facts and student-facing study frame, but it must not create a new legal issue.
- Every item must still identify the exact statement, declarant, purpose, layer count, route, vehicle, scope, overlays, WAL trap, REP repair, and source-law trace.
- The packet separates:
  - legal mechanics;
  - answer-choice forensics;
  - Christian study-group presentation;
  - QA / provenance / copy-safety.

## Output modes

### Batch YAML mode

Default for handoff batches. Return exactly three YAML documents separated by `---`, no narrative outside YAML.

### Single-question YAML mode

Return one YAML document only.

### Full C3 study mode

When explicitly requested, return:

1. Hearsay YAML artifact.
2. 17-section Christian study-group case study.
3. `c3_annotation` JSON.
4. `program_elements` JSON.
5. `program_intelligence` JSON.

## File map

- `PROMPT.md` — binding generation prompt.
- `SKILL.md` — binding QA gate.
- `AGENTS.md` — operating rules for sessions.
- `controlled_vocabularies.md` — original C3 vocabulary plus Hearsay additions.
- `OUTLINE_CODES_COMPLETE.md` — unchanged 8-digit outline-code reference.
- `schemas/hearsay_finished_question_draft.schema.yaml` — schema-style contract.
- `templates/hearsay_finished_question_template.yaml` — copyable YAML skeleton.
- `guides/CHRISTIAN_SURFACE_STYLE_GUIDE.md` — faith-forward drafting rules.
- `guides/HEARSAY_CAPTURE_FIELD_SPEC.md` — field-by-field capture guide.
- `handoffs/` — current production batch handoffs.
- `source_docs/` — Hearsay source-of-truth files.
- `legacy_reference/` — original uploaded files for comparison.

## Non-negotiable design principle

Hearsay is a routing problem, not an exception-label quiz. Christian flavor should make the item memorable, but the legal item must still be routed through statement → declarant → purpose → layer → route → vehicle → scope → overlay.
