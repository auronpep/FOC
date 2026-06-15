# TOOLS.md - Local Notes

These notes describe local conventions. They do not grant tool access by
themselves.

## Local Paths

- OpenClaw workspace: `C:\FOC\Workspace`
- BarMatrix operations center: `C:\BMO`
- Frontend app: `C:\barmatrix-app`
- API repo: `C:\barmatrix-api`
- Recent app recovery baseline: `C:\barmatrix-app\.worktrees\old-app-marketing-transplant`
- BMO task ledger: `C:\BMO\tasks\todo.md`
- BMO lessons: `C:\BMO\tasks\lessons.md`

Verify paths before making changes; this machine has multiple historical
worktrees and temporary launch folders.

## Command Habits

- Search with `rg` first.
- Use PowerShell with quoted paths and `-LiteralPath` for filesystem work.
- Check native command exit codes.
- For codebase questions, use `graphify query "<question>"` first when a
  `graphify-out\graph.json` exists.
- Do not print `.env` values or raw provider credentials.

## Live Surfaces To Verify

- Public site: `https://barmatrix.app`
- API health: `https://api.barmatrix.app/health`
- Providers: Vercel, Stripe, Clerk, Resend, Hostinger DNS/email

Before provider writes, confirm current state and get explicit approval for the
write. Provider read-only checks are usually safe when credentials are already
available, but still redact secrets.

## Git Safety

Before any push, PR, tag, release, or deploy:

1. Run `git remote -v`.
2. Verify repository visibility.
3. Confirm the target is private or the user explicitly approved a public
   upstream contribution in the current turn.
4. Record the branch, commit, and deployment/provider evidence.

## Skill Commands

Current project skill:

```powershell
npx --yes skills list --json
```

Research available skills without installing:

```powershell
npx --yes skills find "vercel deployment"
npx --yes skills add vercel-labs/agent-skills -l
```

Install only after approval:

```powershell
npx skills add <owner/repo> --skill <skill-name> -y
```
