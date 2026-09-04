# OpenClaw BarMatrix Launch Workspace

This workspace is for helping get BarMatrix live and keep it live: public site,
paid-user flow, launch copy, DNS/email/provider checks, and C3 content work when
explicitly requested.

## Session Start

1. Read `SOUL.md`, `IDENTITY.md`, `USER.md`, `TOOLS.md`, and `MEMORY.md` if it
   exists.
2. For non-trivial tasks, write a short plan before editing. Use
   `C:\BMO\tasks\todo.md` as the operations ledger when working on BarMatrix
   launch tasks from this machine.
3. If a repo has `graphify-out\graph.json`, start codebase questions with
   `graphify query "<question>"` before broad source browsing.
4. Prefer `rg` for search. Use PowerShell deliberately on Windows, with quoted
   paths and `-LiteralPath` for file operations.
5. Read the relevant local skill `SKILL.md` before relying on that skill.

## PowerShell Command Rules

- Do not pass a parent-session PowerShell array variable through a new
  `pwsh -File` process, such as
  `pwsh -File script.ps1 -Questions $qs`. The child process receives separate
  native argv tokens and can bind extra values into later parameters.
- For long lists through `pwsh -File`, pass one quoted scalar and let the script
  parse it, for example:
  `pwsh -NoProfile -File RUN_Cod.ps1 -Questions '14707,14708,14709' -Mode CodexEphemeral`.
- If you already have a PowerShell array variable, invoke the script in the
  same PowerShell session instead:
  `& RUN_Cod.ps1 -Questions $qs -Mode CodexEphemeral`.
- Scripts that accept long numeric lists should use
  `[CmdletBinding(PositionalBinding = $false)]`, accept a string/list input,
  and parse comma or whitespace-delimited values explicitly.

## Mission

Help BarMatrix move from "almost live" to "live and verified" with concrete
proof. The useful output is not generic advice; it is an exact checklist, a
small patch, a verified deployment state, or a clear blocker with evidence.

BarMatrix positioning:

- BarMatrix is a diagnostic-first MBE repair system.
- It is not a full bar course and not a generic question bank.
- Public copy should push visitors toward the free diagnostic / Red-Zone Map.
- Use language such as red zones, wrong-answer forensics, two-answer traps,
  guided repair, MBE precision, and one next task.
- Prefer "guided repair path" over "dashboard" or "resource library."

## Safety Gates

- Never push to public repositories. Public upstream repositories are read-only
  reference sources unless the user explicitly authorizes an upstream
  contribution in that exact turn.
- Before any `git push`, PR creation, release, tag push, branch mutation, or
  remote write, verify the target remote and repository visibility.
- Do not configure a public upstream as a push target.
- Do not deploy, mutate DNS, change Stripe, Clerk, Resend, Hostinger, Vercel,
  production databases, or production environment variables unless the user has
  explicitly approved that live/provider write in the current task.
- Never print secrets, tokens, private keys, raw env files, cookies, browser
  auth, or provider credentials. Confirm presence by key name only.
- Treat SSH/runtime access and control-plane access as separate facts. Verify
  which one exists before claiming you can change a provider.
- If provider or live state may have drifted, re-check it before acting.

## Launch Workflow

Use this order for site-live work:

1. Identify the canonical source repo/worktree and current branch.
2. Check git status and remote visibility before any write path.
3. Reproduce the reported issue with the smallest credible test, browser check,
   HTTP probe, log query, or provider read.
4. Make the narrowest source/config change that fixes the verified issue.
5. Run focused tests first, then broader checks proportional to risk.
6. For frontend changes, verify in a browser at desktop and mobile widths when
   the change affects UI, copy, routing, or forms.
7. For launch/provider work, record exact evidence: URLs, deployment ids,
   commit ids, resolver/provider output, and log checks.
8. Update `C:\BMO\tasks\todo.md` with plan progress and review results.

If something goes sideways, stop and re-plan from the new evidence. Do not keep
pushing guesses.

## Copy Rules

Public-facing BarMatrix language must stay clean for a Christian audience.
Avoid profanity, crude slang, innuendo, and faith-inappropriate jokes.

Do not make unsupported claims:

- pass-rate or score-increase guarantees
- official affiliation or endorsement claims
- NCBE, California Bar, or competitor-question claims
- invented testimonials, statistics, or proof

When proof is missing, use method screenshots, sample deconstructions, or
"See how it works" style proof instead of inventing external validation.

## Repo And Provider Map

Verify these paths before relying on them; they reflect the current machine's
working convention, not a permanent guarantee.

- Operations center: `C:\BMO`
- Frontend app: `C:\barmatrix-app` and BMO-linked app worktrees
- API: `C:\barmatrix-api`
- Strong recent app recovery baseline: `C:\barmatrix-app\.worktrees\old-app-marketing-transplant`
- Live public site: `https://barmatrix.app`
- Live API health: `https://api.barmatrix.app/health`
- Provider surfaces: Vercel, Stripe, Clerk, Resend, Hostinger DNS/email

For post-purchase email and deliverability work, inspect the actual sender path
first. Prior evidence points to API transactional mail in
`C:\barmatrix-api\src\email.ts` and Stripe webhook flow in
`C:\barmatrix-api\src\index.ts`, but re-check current source and provider state.

## Skills

Workspace skills live in `skills\`. The current project skill is
`skills\cq-transform-qa\SKILL.md`. Skill research and suggested additions are
tracked in `SKILLS_RESEARCH.md`; do not install new third-party skills without
user approval.

## C3 / CQ Transform Mode

This workspace also contains a portable C3 question-transform packet. Use this
mode only when the user says:

- `Do Q{N}` for one question
- `Do Q{A}-{B}` for an explicit range
- `Do next {K}` for the K lowest-numbered unfinished files in `QBank\`

Session cap: 3 questions per session, hard max 5 only with explicit approval.

Per question:

1. Skip if `Finished\CQ{N}.md` already exists.
2. Read `PROMPT.md` in full.
3. Read `skills\cq-transform-qa\SKILL.md` before drafting.
4. Read `controlled_vocabularies.md`.
5. Read only the relevant subject section of `OUTLINE_CODES_COMPLETE.md`.
6. Read `QBank\{N}.md`.
7. Produce the full output at `Finished\CQ{N}.md`.

Never edit files in `QBank\`. Never invent controlled vocabulary values,
outline codes, legal authority, case names, citations, or source facts.
