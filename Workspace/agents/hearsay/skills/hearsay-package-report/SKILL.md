---
name: hearsay-package-report
description: Package validated Hearsay YAML drafts, validation reports, and ledger entries.
---

# Hearsay Package/Report Skill

Use this skill after QA/repair has either passed or produced a blocker.

## Save Artifacts

For every run, save:

- YAML draft or repaired YAML under `drafts\`.
- Validator JSON under `validation\`.
- Markdown status report under `reports\`.
- One ledger entry under `ledger\runs.jsonl`.

## Ledger Entry

Append one compact JSON object per run:

```json
{"timestamp":"2026-06-16T00:00:00-07:00","session_key":"","mode":"single","slot_id":"","batch_id":"","yaml_path":"","validation_path":"","report_path":"","status":"passed","remaining_errors":[],"human_review_flags":["legal_review_required","calibration_review_required","copy_safety_review_required","christian_surface_review_required"]}
```

Use `status: "blocked"` when validation still fails.

## Markdown Report

The report must include:

- Run mode and target.
- Model if known.
- Source packet version.
- YAML path.
- Validation path.
- Pass/fail status.
- Remaining validator errors if any.
- Human-review flags.

## Final Reply

Keep the final reply short. Include paths to the YAML, validation JSON, markdown report, and ledger. If blocked, name the blocker errors.
