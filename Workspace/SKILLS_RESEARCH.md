# SKILLS_RESEARCH.md

Research date: 2026-06-13

Purpose: recommended skills for an OpenClaw workspace helping get BarMatrix
live. No new skills were installed during this research pass.

## Current Project Skills

- `cq-transform-qa` at `C:\FOC\Workspace\skills\cq-transform-qa`
  - Already installed for OpenClaw.
  - Keep for C3/CQ transform work.

`npx --yes skills list --json` showed no other project-scoped skills in
`C:\FOC\Workspace`.

## Useful Local/Global Skills Already On This Machine

These are not project-scoped OpenClaw skills in `C:\FOC\Workspace`, but they
are useful references when deciding what to install or mirror later.

- `vercel-deploy`:
  `C:\Users\JesusLovesMe\.codex\skills\vercel-deploy\SKILL.md`
- Vercel plugin cache:
  `deployments-cicd`, `vercel-cli`, `env-vars`, `nextjs`,
  `react-best-practices`, `agent-browser`, `agent-browser-verify`
- GitHub plugin cache:
  `github`, `gh-fix-ci`, `gh-address-comments`, `yeet`
- Windows/git tooling:
  `powershell-operator`, `tool-git`, `playwright`, `graphify`
- BarMatrix marketing/C3:
  `barmatrix-page-rewrite`, `copywriting`, `copy-editing`, `cro`, `signup`,
  `pricing`, `product-marketing`, `c3-case-study`,
  `c3-gold-standard-checker`

## Best Candidates To Add After Approval

### Vercel / Next.js Launch Work

- `vercel-labs/agent-skills` skills:
  - `deploy-to-vercel`
  - `vercel-react-best-practices`
  - `web-design-guidelines`
  - `vercel-optimize`
  - `vercel-cli-with-tokens`
- Why: strong fit for BarMatrix frontend deployment, Next.js review, UI checks,
  and Vercel operations.
- Quality note: `skills.sh` leaderboard lists Vercel skills among the highest
  install-count sources. Local listing found 9 skills in this repository.
- Suggested install after approval:

```powershell
npx skills add vercel-labs/agent-skills --skill deploy-to-vercel vercel-react-best-practices web-design-guidelines vercel-optimize vercel-cli-with-tokens -y
```

### Browser / Webapp Verification

- `anthropics/skills` skill:
  - `webapp-testing`
- Why: local web app testing with Playwright, screenshots, browser logs, and UI
  verification.
- Quality note: official/high-trust source; `skills.sh` leaderboard showed
  `webapp-testing` with meaningful adoption.
- Suggested install after approval:

```powershell
npx skills add anthropics/skills --skill webapp-testing -y
```

### Launch Copy / CRO / SEO

- `coreyhaines31/marketingskills` skills:
  - `copywriting`
  - `copy-editing`
  - `cro`
  - `signup`
  - `pricing`
  - `launch`
  - `seo-audit`
  - `product-marketing`
- Why: BarMatrix public launch work needs claim-safe copy, conversion review,
  signup/checkout friction review, and pricing-page judgment.
- Quality note: `skills.sh` leaderboard shows several marketing skills with
  high adoption. This workspace already has similar global skills for other
  agents, but not project-scoped OpenClaw skills.
- Suggested install after approval:

```powershell
npx skills add coreyhaines31/marketingskills --skill copywriting copy-editing cro signup pricing launch seo-audit product-marketing -y
```

### Planning / Debugging / Verification Discipline

- `obra/superpowers` skills:
  - `writing-plans`
  - `systematic-debugging`
  - `test-driven-development`
  - `verification-before-completion`
  - `subagent-driven-development`
  - `using-git-worktrees`
  - `finishing-a-development-branch`
- Why: matches the BMO operating style: plan first, root-cause bugs, verify
  before done, use isolated worktrees, and coordinate parallel lanes.
- Quality note: high adoption on `skills.sh` leaderboard.
- Suggested install after approval:

```powershell
npx skills add obra/superpowers --skill writing-plans systematic-debugging test-driven-development verification-before-completion subagent-driven-development using-git-worktrees finishing-a-development-branch -y
```

### Local Skill Mirroring Candidates

If OpenClaw needs the exact local guidance already used by Codex/BMO, prefer
copying or installing these trusted local skills into this workspace before
adding low-install community alternatives:

- `powershell-operator`
- `tool-git`
- `playwright`
- `vercel-deploy`
- `barmatrix-page-rewrite`
- `copywriting`
- `copy-editing`
- `cro`
- `signup`
- `pricing`
- `product-marketing`
- `graphify`

## Avoid For Now

- Low-install community Playwright/browser skills returned by `npx skills find
  "playwright browser verification"` should not be installed first. Prefer
  `anthropics/skills@webapp-testing` or the existing local browser/Codex
  Playwright tooling.
- Generic GitHub/PR skills found by search had low install counts. Prefer the
  existing local GitHub/Codex workflows unless OpenClaw specifically needs a
  project-scoped GitHub skill later.

## Commands Run

```powershell
npx --yes skills --help
npx --yes skills list --json
npx --yes skills list -g --json
npx --yes skills find "vercel deployment"
npx --yes skills find "playwright browser verification"
npx --yes skills find "github pull request ci"
npx --yes skills find "marketing copy conversion"
npx --yes skills add vercel-labs/agent-skills -l
npx --yes skills add anthropics/skills -l
npx --yes skills add coreyhaines31/marketingskills -l
```
