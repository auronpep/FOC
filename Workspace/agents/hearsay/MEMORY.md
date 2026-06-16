# Hearsay Agent Memory

## Architecture Decision - 2026-06-16

Use one named OpenClaw agent: `hearsay`.

Do not create three named agents for generation, QA, and packaging at this stage. The workflow is sequential and domain-cohesive, so one workspace should own the packet, validator, run ledger, and session memory.

Use three per-agent skills:

1. `hearsay-generate`
2. `hearsay-qa-repair`
3. `hearsay-package-report`

Sub-agents are deferred. They can be introduced later for expensive current-law research or independent QA review if real runs show that the single-agent pipeline is a bottleneck.

## Packet

Current packet version: `BM-HS-CHRISTIAN-PACKET-v2026-06-16`.

Canonical local copy: `C:\FOC\Workspace\agents\hearsay\packet`.

The packet is copied into the workspace so the agent is not dependent on Downloads.

## Defaults

Default model target: `openai/gpt-5.5`.

Default draft status: `draft_internal_only`.

Human review flags remain true for all generated items.
