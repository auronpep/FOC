---
name: hearsay-qa-repair
description: Validate and repair BarMatrix Hearsay YAML drafts before packaging.
---

# Hearsay QA/Repair Skill

Use this skill after generation and whenever the user asks to audit or repair a Hearsay YAML draft.

## Validator Command

Run the local validator from the hearsay workspace:

```powershell
python scripts\validate_hearsay_yaml.py <yaml-file> --packet-root packet --mode single --json
```

For batch output:

```powershell
python scripts\validate_hearsay_yaml.py <yaml-file> --packet-root packet --mode batch --json
```

## Repair Loop

1. Run the validator.
2. If there are no errors, save the validator JSON under `validation\`.
3. If errors exist, repair only the fields that fail the gate.
4. Save the repaired YAML with `-repaired` in the filename.
5. Rerun the validator.
6. Repeat at most two repair passes.

If errors remain after two repair passes, stop and create a blocker report. Do not call the run successful.

## Required Gates

The draft must pass:

- YAML parse.
- Exact required top-level sections and order.
- Exact statement, declarant, offered purpose, layer, route, vehicle, and scope.
- Four answer choices and exactly one best answer.
- WAL IDs and REP IDs exist in packet docs.
- Outline code exists in `packet\OUTLINE_CODES_COMPLETE.md`.
- Human review flags remain true.
- Christian surface is explicit and legally sterile.
- Copy-safety fields do not admit source copying.

## Handoff To Packaging

When validation succeeds or a blocker report is required, run `hearsay-package-report`.
