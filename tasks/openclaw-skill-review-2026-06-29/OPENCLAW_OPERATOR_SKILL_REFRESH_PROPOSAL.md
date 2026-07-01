# OpenClaw Operator Skill Refresh Proposal: Two OpenClaws

Date: 2026-06-29
Workspace: C:\FOC

This is a proposal for refreshing the installed Codex skill at:

- C:\Users\Blessed\.codex\skills\openclaw-operator

No live skill files were edited. The skill's own refresh procedure says not to
overwrite live Codex skill installs unless the user explicitly asks for an
install/apply step.

## Evidence Reviewed

- GitHub repo: https://github.com/openclaw/openclaw
  - Cloned to C:\FOC\tasks\openclaw-skill-review-2026-06-29\openclaw-repo
  - HEAD: 6de357ad477260bb60a6c9196ca0a8f23ad68d7e
  - Repo package version: 2026.6.10
- Local installed CLI and FOC wrapper:
  - openclaw --version: OpenClaw 2026.6.6 (8c802aa)
  - openclaw resolves to: C:\Users\Blessed\AppData\Roaming\npm\openclaw.ps1
  - foc-openclaw resolves to a PowerShell function in the user profiles and
    C:\FOC\bin\barmatrix-openclaw-functions.ps1
  - foc-openclaw delegates to: C:\FOC\bin\openclaw.ps1
  - C:\FOC\bin\openclaw.ps1 invokes the same npm OpenClaw package but sets
    OpenClaw environment values before launch.
- FOC-local runtime evidence:
  - foc-openclaw config file: ~\.openclaw\openclaw.json
  - foc-openclaw config validate: valid
  - wrapper currently sets OPENCLAW_GATEWAY_PORT=7923
  - gateway configured for lan bind on 0.0.0.0:7923
  - gateway probe target: ws://127.0.0.1:7923
  - gateway RPC currently not reachable; service registered but stopped
  - dangerouslyDisableDeviceAuth is true in local status output
  - plugin drift seen in status: several installed plugins at 2026.6.5 while
    gateway package is 2026.6.6
  - scheduled task name observed in local artifacts: OpenClaw Gateway FOC
  - gateway command artifacts may contain raw environment secrets; do not copy
    their contents into skill docs, reports, memory, commits, or chat.
- OpenClaw docs:
  - https://docs.openclaw.ai/llms.txt
  - https://docs.openclaw.ai/cli.md
  - https://docs.openclaw.ai/cli/config.md
  - https://docs.openclaw.ai/cli/gateway.md
  - https://docs.openclaw.ai/cli/models.md
  - https://docs.openclaw.ai/cli/plugins.md
  - https://docs.openclaw.ai/cli/skills.md
  - https://docs.openclaw.ai/cli/security.md
  - https://docs.openclaw.ai/cli/secrets.md
  - https://docs.openclaw.ai/cli/backup.md
  - https://docs.openclaw.ai/cli/update.md
- ClawHub security signals paper:
  - https://openclaw.ai/publications/clawhub-security-signals.pdf
- CrabFleet docs:
  - https://crabfleet.openclaw.ai/docs/
  - https://crabfleet.openclaw.ai/docs/spec.md
  - https://crabfleet.openclaw.ai/docs/spec-v2.md
  - https://docs.crabfleet.ai/api/
  - https://docs.crabfleet.ai/quickstart/

## Summary Finding

The most important correction is not just version drift. The skill must
distinguish two OpenClaw targets on this system:

1. The global/upstream OpenClaw CLI, invoked as openclaw. This is the public
   command surface tied to the npm package, upstream repository, ClawHub, docs,
   and general OpenClaw operator work.
2. The FOC-local OpenClaw wrapper, invoked as foc-openclaw. This is the command
   prefix to use for the other OpenClaw running on this system: the BarMatrix
   / C:\FOC runtime path that delegates through C:\FOC\bin\openclaw.ps1 and
   pins the FOC gateway/service behavior.

The installed openclaw-operator skill is directionally useful but stale because
it only talks about openclaw as a single CLI. It still treats the 2026.4.22 CLI,
loopback gateway port 14080, and older command shape as current. The current
package is 2026.6.6 locally, upstream is 2026.6.10, and the command surface now
includes important operator paths that the skill does not cover: models,
secrets, backup, dashboard, update, sandbox, approvals, acp, mcp, expanded
gateway lifecycle/probe behavior, ClawHub trust handling, CrabFleet handoff
guidance, and the foc-openclaw naming boundary.

CrabFleet should be integrated into the skill as an external OpenClaw fleet
control plane and CLI/API workflow, not as an OpenClaw subcommand. On this
machine, no crabfleet, crabd, or crabbox executable is currently installed, and
neither openclaw nor foc-openclaw exposes a crabfleet command.

## Proposed Skill Changes

### 1. Add A Required Command-Target Boundary

The skill should lead with this rule before any command examples:

````markdown
## Command Target Boundary

This machine has two OpenClaw entrypoints. Do not treat them as interchangeable.

- `openclaw` is the global/upstream OpenClaw CLI.
- `foc-openclaw` is the FOC-local OpenClaw wrapper for the other OpenClaw
  running on this system. It delegates to `C:\FOC\bin\openclaw.ps1`.

Use `foc-openclaw` for BarMatrix, C:\FOC, FOC Gateway, C3/CQ batch, or local
FOC agent/runtime work. Use `openclaw` only for upstream OpenClaw package/docs
checks or when the user explicitly wants the global CLI.

```powershell
Get-Command openclaw,foc-openclaw
Get-Content C:\FOC\bin\openclaw.ps1
openclaw --version
foc-openclaw --version
openclaw config file
foc-openclaw config file
```

On 2026-06-29:

- `openclaw` resolved to `C:\Users\Blessed\AppData\Roaming\npm\openclaw.ps1`.
- `foc-openclaw` resolved to a PowerShell function that calls
  `C:\FOC\bin\openclaw.ps1`.
- `foc-openclaw config file` reported `~\.openclaw\openclaw.json`.
- `C:\FOC\bin\openclaw.ps1` set `OPENCLAW_GATEWAY_PORT=7923`.
- The FOC gateway service name surfaced as `OpenClaw Gateway FOC`.

Reverify these facts every session. Wrapper paths, service names, config roots,
and ports drift.
````

### 2. Replace Stale Local Baseline Notes

Replace old local notes that mention OpenClaw 2026.4.22, user paths under
JesusLovesMe, and gateway port 14080 with a two-target recheck note. The skill
should say that C:\FOC work uses `foc-openclaw` unless the user explicitly asks
for the global CLI.

### 3. Expand Read-Only Baseline Checks

Current baseline checks are too narrow. Add these read-only checks when the
task involves FOC setup, model selection, gateway health, or security posture:

```powershell
Get-Command openclaw,foc-openclaw
foc-openclaw --version
foc-openclaw --help
foc-openclaw config file
foc-openclaw config validate --json
foc-openclaw status --json
foc-openclaw gateway status --json
foc-openclaw gateway probe --json
foc-openclaw models status --json
foc-openclaw models list --json
foc-openclaw security audit --json
```

Use targeted checks when relevant:

```powershell
foc-openclaw secrets audit --json
foc-openclaw backup create --dry-run --json
foc-openclaw update status --json
foc-openclaw plugins list --json
foc-openclaw skills list --json
```

For upstream CLI/package review, run the same read-only shape with `openclaw`
and clearly label it as the global CLI target.

### 4. Update Config Guidance

Add current config semantics:

- OPENCLAW_NIX_MODE=1 makes openclaw.json immutable. Read-only commands still
  work; mutating config commands should refuse writes.
- Prefer `foc-openclaw config patch --dry-run` before FOC config writes.
- Prefer `openclaw config patch --dry-run` only when intentionally editing the
  global/upstream OpenClaw target.
- config set supports direct path/value, SecretRef builder, provider builder,
  and batch JSON/batch-file.
- Values parse as JSON5 by default; use --strict-json for standard JSON.
- Writes validate the full config and save rejected payloads as
  openclaw.json.rejected.*.
- Exec SecretRefs are skipped unless explicitly allowed for dry-run with
  --allow-exec.

### 5. Update Gateway Guidance

Add the current gateway lifecycle and safety model:

- Gateway refuses start unless gateway.mode=local.
- Binding beyond loopback without auth should be treated as unsafe and blocked
  by the CLI.
- --allow-unconfigured is for ad-hoc/dev bootstrap only.
- Use gateway restart instead of stop/start when changing config.
- Use gateway restart --safe for config-safe restarts.
- Use gateway status --json --require-rpc when a task needs proof the Gateway
  RPC is alive.
- Use gateway probe --json for detailed diagnosis. It should not create first
  time device auth; it reports capability such as read-only, write-capable,
  admin-capable, pairing-pending, or connect-only.
- Use gateway diagnostics export for sanitized support bundles. Do not assume
  it includes raw user/chat/tool payloads or secrets.
- Include service commands install/start/stop/restart/uninstall, discover,
  health, stability, and usage-cost in command-recipes.md.
- In C:\FOC, write gateway examples with `foc-openclaw`, not bare `openclaw`.

### 6. Add Models Command Coverage

The skill should stop guessing provider/model names and use the CLI:

```powershell
foc-openclaw models status --json
foc-openclaw models list --json
foc-openclaw models list --all --provider <provider-id>
foc-openclaw models set <provider-id>/<model-id>
foc-openclaw models fallbacks
foc-openclaw models aliases
foc-openclaw models auth list --provider <provider-id>
foc-openclaw models auth login --provider <provider-id>
foc-openclaw models auth paste-api-key --provider <provider-id>
foc-openclaw models scan
```

Important command rule: provider filters take provider IDs, not display labels.
Model refs split on the first slash. OpenRouter-style IDs must include an
explicit provider prefix, for example openrouter/moonshotai/kimi-k2.

### 7. Add ClawHub Trust Rules From The Security Paper

Add a ClawHub section to command-recipes.md and portable-rules.md:

- Treat ClawHub installs and updates as code execution.
- Do not collapse an advisory into a malicious verdict.
- Treat suspicious as review-needed, not proof of abuse.
- SkillSpector advisories are semantic risk signals, not install-blocking
  verdicts by themselves.
- VirusTotal positives, static dangerous execution findings, exposed secrets,
  and untrusted install sources need stronger caution.
- Use layered review because scanners intentionally disagree; the paper shows
  most flagged skills were identified by only one scanner.
- Prefer this flow before ClawHub installs:

```powershell
foc-openclaw skills search <query>
foc-openclaw skills verify @owner/slug
foc-openclaw skills verify @owner/slug --card
foc-openclaw skills install @owner/slug --version <version>
foc-openclaw skills check
```

- For plugins:

```powershell
foc-openclaw plugins search <query>
foc-openclaw plugins inspect <locator>
foc-openclaw plugins install clawhub:<package>
foc-openclaw plugins list --json
foc-openclaw gateway restart --safe
```

- Use --acknowledge-clawhub-risk only after explicit operator review of a
  non-blocking risky status.
- Never recommend --dangerously-force-unsafe-install. Current docs describe it
  as deprecated/no-op and not a ClawHub bypass.
- Malicious, quarantined, or blocked downloads should be treated as refused.

### 8. Add Security, Secrets, And Backup Recipes

Add these command families:

```powershell
foc-openclaw security audit --json
foc-openclaw security audit --deep --json
foc-openclaw secrets audit --json
foc-openclaw secrets configure
foc-openclaw secrets apply --dry-run
foc-openclaw secrets reload
foc-openclaw backup create --dry-run --json
foc-openclaw backup create --verify
foc-openclaw backup verify <backup-path>
```

Skill safety rule: security audit --fix, secrets apply without --dry-run,
backup restore-like operations, uninstall/reset, update repair, gateway
install/uninstall, and plugin/skill install/update require explicit user
authorization.

### 9. Add New Operator Surfaces

The command-recipes reference should include at least short recipes for:

- dashboard: open the local control UI, preferably with --no-open when only
  checking availability.
- approvals: inspect and set exec approvals/allowlist.
- sandbox: list/explain/recreate sandbox policies.
- acp: gateway-backed ACP bridge/client.
- mcp: add/configure/doctor/list/login/logout/probe/reload/serve/status/tools.
- node and nodes: local node service plus fleet/device node operations.
- sessions: list, tail, cleanup, export-trajectory.
- tasks, webhooks, hooks, terminal, transcripts when relevant.
- update: status, wizard, repair, --dry-run, --json, --no-restart.

### 10. Add CrabFleet Integration Section

Recommended skill text:

````markdown
## CrabFleet

CrabFleet is the OpenClaw fleet control plane for visible, attachable Codex
workspaces. Treat it as an external app/API/CLI workflow unless the local
OpenClaw CLI exposes a dedicated command in the future.

On this machine, keep the command target explicit:

- Use `foc-openclaw docs crabfleet` when checking CrabFleet docs from the
  FOC-local OpenClaw wrapper.
- Use `openclaw docs crabfleet` only when intentionally checking the
  global/upstream CLI.

Canonical app/API: https://crabfleet.openclaw.ai
Public docs host: https://crabfleet.ai
SSH onboarding and CLI gateway: crabd.sh

Before using CrabFleet, verify local tools and docs:

```powershell
Get-Command crabfleet -ErrorAction SilentlyContinue
Get-Command crabd -ErrorAction SilentlyContinue
Get-Command crabbox -ErrorAction SilentlyContinue
foc-openclaw docs crabfleet
```

If the crabfleet CLI is installed, use:

```powershell
crabfleet doctor
crabfleet new --repo owner/repo "task"
crabfleet status <session-id>
crabfleet logs <session-id>
crabfleet transcript <session-id>
crabfleet message <session-id> "message"
crabfleet summary <session-id> "summary"
crabfleet vnc --open <session-id>
crabfleet delete <session-id>
```

If the CLI is not installed, do not invent OpenClaw subcommands. Use the app,
SSH onboarding with ssh link@crabd.sh, or authenticated API only when the user
has approved credentials for that task.

CrabFleet API safety:

- GitHub OAuth requires active OpenClaw org membership.
- Native device tokens are read-only fleet:read, expire in 24 hours, and are
  accepted only by native session, fleet, and revocation endpoints.
- Device link codes expire in 10 minutes.
- Fleet endpoints must not expose raw secrets, raw provider VNC credentials,
  signed provider endpoints, GitHub tokens, or internal auth tokens.
- Use GET /api/state, GET /api/fleet, and authenticated
  GET /api/native/v1/fleet for read-only fleet inspection.
- Do not store native bearer tokens in docs, reports, or skill files.
````

Current local status on 2026-06-29:

- Get-Command crabfleet: not found
- Get-Command crabd: not found
- Get-Command crabbox: not found
- openclaw --help: no crabfleet or crabbox subcommand exposed
- foc-openclaw --help: no crabfleet or crabbox subcommand exposed
- openclaw docs crabfleet said crabfleet is the deployment/host-fleet profile
  for CRAB machines, while the reusable plugin is codex-supervisor. Recheck with
  foc-openclaw docs crabfleet before applying a FOC-local change.

### 11. Update Refresh Procedure

Add these refresh sources:

```powershell
Get-Command openclaw,foc-openclaw
openclaw --version
foc-openclaw --version
openclaw --help
foc-openclaw --help
foc-openclaw config --help
foc-openclaw gateway --help
foc-openclaw models --help
foc-openclaw plugins --help
foc-openclaw skills --help
foc-openclaw security --help
foc-openclaw secrets --help
foc-openclaw backup --help
foc-openclaw update --help
foc-openclaw mcp --help
foc-openclaw acp --help
```

Add docs fetch targets:

- https://docs.openclaw.ai/llms.txt
- https://docs.openclaw.ai/cli.md
- https://docs.openclaw.ai/cli/config.md
- https://docs.openclaw.ai/cli/gateway.md
- https://docs.openclaw.ai/cli/models.md
- https://docs.openclaw.ai/cli/plugins.md
- https://docs.openclaw.ai/cli/skills.md
- https://docs.openclaw.ai/cli/security.md
- https://docs.openclaw.ai/cli/secrets.md
- https://docs.openclaw.ai/cli/backup.md
- https://docs.openclaw.ai/cli/update.md
- https://crabfleet.openclaw.ai/docs/spec.md
- https://crabfleet.openclaw.ai/docs/spec-v2.md
- https://docs.crabfleet.ai/api/
- https://docs.crabfleet.ai/quickstart/

## Suggested File-Level Edits

1. C:\Users\Blessed\.codex\skills\openclaw-operator\SKILL.md
   - Add the two-OpenClaw command-target boundary at the top.
   - Replace stale local note with openclaw vs foc-openclaw rechecks.
   - Expand start checks and default C:\FOC examples to foc-openclaw.
   - Add CrabFleet routing note.
   - Add ClawHub trust rule summary.

2. C:\Users\Blessed\.codex\skills\openclaw-operator\references\command-recipes.md
   - Rewrite command map around current 2026.6.x command surface.
   - Split recipes into "global openclaw" and "FOC foc-openclaw" paths.
   - Add recipes for models, security, secrets, backup, update, dashboard,
     approvals, sandbox, acp, mcp, sessions, node/nodes, CrabFleet.

3. C:\Users\Blessed\.codex\skills\openclaw-operator\references\portable-rules.md
   - Add "use foc-openclaw for C:\FOC/BarMatrix runtime work" rule.
   - Add ClawHub trust semantics.
   - Add CrabFleet token and endpoint safety rules.
   - Add "verify local CLI first" rule.

4. C:\Users\Blessed\.codex\skills\openclaw-operator\references\refresh-procedure.md
   - Update command inventory and docs sources.
   - Remove assumptions tied to 2026.4.22 and port 14080.
   - Require comparing openclaw and foc-openclaw before updating local notes.
   - Keep the existing rule that live skill installs are not overwritten unless
     explicitly requested.

## Open Questions Before Applying

- Should the local machine update from OpenClaw 2026.6.6 to the upstream
  2026.6.10 package before finalizing skill examples, or should examples stay
  pinned to the installed CLI until the user asks to update OpenClaw?
- Should CrabFleet CLI installation be added as a future operational recipe, or
  should the skill only document how to use it if already present?
- Should the FOC wrapper keep using ~\.openclaw, as it currently does, or should
  it be restored to a C:\FOC\.openclaw state/config root? Historical FOC notes
  suggest C:\FOC\.openclaw, but live wrapper evidence on 2026-06-29 points to
  ~\.openclaw.
- Should local gateway LAN/device-auth findings be documented in the skill, or
  only in a separate local audit note to avoid making volatile runtime state
  look like a durable command rule?
