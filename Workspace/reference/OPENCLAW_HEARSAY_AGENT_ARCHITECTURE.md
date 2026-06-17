# OpenClaw Hearsay Agent Architecture

Date: 2026-06-16

## Decision

Use one named OpenClaw agent:

`hearsay`

Use three per-agent skills inside that agent workspace:

1. `hearsay-generate`
2. `hearsay-qa-repair`
3. `hearsay-package-report`

The agent owns the full workflow. The skills define the workflow phases.

## Why One Agent

OpenClaw's Gateway can host multiple agents, but each named agent is a full scoped brain with its own workspace, state directory, auth/model profile, and session history. The Hearsay workflow does not currently need that level of separation. It needs one consistent packet, one memory file, one validator, one run ledger, and one session lineage for generation and repair decisions.

Creating three named agents now would create avoidable friction:

- Three workspaces to keep synced.
- Three session stores with fragmented packet memory.
- More routing and handoff state.
- Higher chance that QA and packaging do not see the same draft context as generation.

## How Skills Fit

OpenClaw skills are markdown instruction files with YAML frontmatter and a markdown body. Workspace skills load from `<workspace>\skills`, which makes them appropriate for agent-local phase instructions.

Skills are not independent workers. They do not automatically run after each other. The `hearsay` agent's `AGENTS.md` mandates the sequence:

Generate -> QA/Repair -> Package/Report

That means a command asking for a finished draft must not stop after YAML generation. It must validate, repair if needed, save artifacts, update the ledger, and report.

## Sub-Agents

Sub-agents are background runs spawned from an existing agent run. They are useful for parallel research, long tasks, or independent checks, but they carry separate context and token usage.

For Hearsay, sub-agents are deferred. Add them only if real runs show a need, such as:

- Current-law research that should happen in parallel.
- Independent adversarial QA of a generated YAML draft.
- Large batch review where one agent becomes a bottleneck.

## Implemented Workspace

`C:\FOC\Workspace\agents\hearsay`

Workspace files:

- `AGENTS.md`
- `SOUL.md`
- `TOOLS.md`
- `MEMORY.md`
- `packet\`
- `scripts\validate_hearsay_yaml.py`
- `skills\hearsay-generate\SKILL.md`
- `skills\hearsay-qa-repair\SKILL.md`
- `skills\hearsay-package-report\SKILL.md`

Output folders:

- `drafts\`
- `validation\`
- `reports\`
- `ledger\`

## Validation Contract

The local validator checks:

- YAML parse.
- Single or batch document count.
- Required top-level sections and order.
- Schema contract.
- Exact statement, declarant, offered purpose, layer, route, vehicle, and scope fields.
- Four choices and exactly one best answer.
- WAL IDs in `packet\source_docs\hearsay_wrong_answer_mechanics.md`.
- REP IDs in `packet\source_docs\hearsay_bootcamp_repairs.md`.
- Outline code in `packet\OUTLINE_CODES_COMPLETE.md`.
- Human review flags remain true.
- Christian surface is explicit.
- Copy-safety flags do not admit source copying.

## Sources

- [Gateway architecture](https://docs.openclaw.ai/concepts/architecture)
- [Agent runtime](https://docs.openclaw.ai/concepts/agent)
- [Agent workspace](https://docs.openclaw.ai/concepts/agent-workspace)
- [Multi-agent routing](https://docs.openclaw.ai/concepts/multi-agent)
- [Skills](https://docs.openclaw.ai/tools/skills)
- [Sub-agents](https://docs.openclaw.ai/tools/subagents)
