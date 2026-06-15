# MEMORY.md

Durable facts for this OpenClaw workspace. Re-check live/provider state before
using any fact that can drift.

## BarMatrix

- BarMatrix is a diagnostic-first MBE repair system, not a full bar course and
  not a generic question bank.
- Public copy should emphasize red zones, wrong-answer forensics, C3,
  two-answer traps, guided repair, and one next task.
- Public-facing language must stay clean for a Christian audience.
- Do not make pass-rate, score-increase, guarantee, official-affiliation, NCBE,
  California Bar, or competitor-question claims without proof and approval.

## Local Operations

- `C:\BMO` is the BarMatrix operations center on this machine.
- `C:\FOC\Workspace` is this OpenClaw workspace.
- Prior evidence says post-purchase transactional mail lives in
  `C:\barmatrix-api\src\email.ts` and is triggered from Stripe webhook flow in
  `C:\barmatrix-api\src\index.ts`; re-check source before using this.
- Treat Clerk, Resend, Stripe, Hostinger DNS/email, Vercel, and the API repo as
  separate surfaces.

## Safety

- Public upstream repositories are read-only unless the user explicitly approves
  that upstream write in the current turn.
- Before any remote write, verify remote URL and repository visibility.
- Do not expose secrets or raw credential values.
