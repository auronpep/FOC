# FOC

An OpenClaw install plus the BarMatrix question-processing workspace.

## Layout

| Path | Contents |
|---|---|
| `bin/` | `openclaw` wrapper scripts and the shared `barmatrix-openclaw-functions.ps1` helpers |
| `.openclaw/` | OpenClaw state, config, and the gateway launcher |
| `Workspace/` | The agent workspace — question bank, outputs, agents, skills, batch runners |
| `tasks/` | Repo-level task scripts and notes |

Inside `Workspace/`:

| Path | Contents |
|---|---|
| `QBank/` | Source questions |
| `Finished/` | Completed `CQ*.md` outputs |
| `OCQ/`, `OCQAgent/` | Blind-answer question set and the agent tooling around it |
| `agents/bible/` | Per-agent workspaces |
| `skills/` | Skill definitions (`SKILL.md` per skill) |
| `OpenClawBatchResults/` | Batch run artifacts |

## Requirements

- **PowerShell 7+** — the batch runners use `ForEach-Object -Parallel` and refuse to run on Windows PowerShell 5.1
- **Node 18+** — `openclaw` is pinned in `package.json`; install it with `npm install`
- **Python 3** — for the OCQ agent tooling and the outline mappers (`openpyxl`, `pyyaml`, `jsonschema`)

## Running the wrapper

The wrappers resolve their own location, so run them from wherever the repo is checked out:

```powershell
.\bin\openclaw.ps1 --version
.\bin\openclaw.ps1 status
```

They set `OPENCLAW_STATE_DIR` and `OPENCLAW_CONFIG_PATH` to `<repo>\.openclaw`, and
`OPENCLAW_WORKSPACE` to `<repo>\Workspace`.

## Batch runners

Each lives in `Workspace/` and defaults its output roots to the checkout. All support a dry run —
omit `-Launch` to see the plan without starting agents:

```powershell
pwsh -NoProfile -File .\Workspace\Start-OpenClawC3FourGroupTest.ps1 -Group 1
pwsh -NoProfile -File .\Workspace\Start-OpenClawLPOCBatch.ps1
```

## Verifying output

```powershell
pwsh -NoProfile -File .\Workspace\verify_json.ps1 -Path .\Workspace\Finished\CQ14881.md
```

## Tests

```powershell
python -m pytest .\Workspace\OCQAgent\tests\
```

## Maintainers

- auronpep (owner)
