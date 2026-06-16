# Hearsay Agent Tool Notes

## Validator

Run validation from the hearsay workspace:

```powershell
python scripts\validate_hearsay_yaml.py drafts\HS-0401.yaml --packet-root packet --mode single --json
```

Batch validation expects exactly three YAML documents:

```powershell
python scripts\validate_hearsay_yaml.py drafts\batch-040.yaml --packet-root packet --mode batch --json
```

Use `--mode auto` when auditing an unknown file shape.

## Output Paths

- Save generated YAML in `drafts\`.
- Save validator JSON in `validation\`.
- Save markdown package/status reports in `reports\`.
- Append one JSON object per completed or blocked run to `ledger\runs.jsonl`.

## OpenClaw Checks

Use these for local readiness checks:

```powershell
openclaw agents list --json
openclaw skills list --agent hearsay --json
```

## Packaging Rule

The packaged response must include the full YAML or a pointer to the YAML file, the validator result, remaining human-review flags, and any blocker errors. A silent success is a failure.
