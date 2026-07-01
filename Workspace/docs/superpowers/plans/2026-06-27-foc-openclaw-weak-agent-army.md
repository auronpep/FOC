# FOC OpenClaw Weak Agent Army Implementation Plan

> **Execution rule:** Do not use Codex subagents for this work. This plan creates isolated FOC OpenClaw agents, each with its own workspace. Execute inline against `C:\FOC\bin\openclaw.ps1`.

**Goal:** Create a 20-agent FOC OpenClaw model army where each short agent name maps to one model and one BarMatrix student persona.

**Architecture:** Use `C:\FOC\bin\openclaw.ps1` exclusively so every command targets `C:\FOC\.openclaw` and `C:\FOC\Workspace`. Create one isolated OpenClaw agent per model with a matching workspace under `C:\FOC\Workspace\agents\<agent-id>`, then add short PowerShell helpers so day-to-day use is `bmqask abel "..."` or `bmqarmy "..."` instead of repeated model/workspace flags.

**Tech Stack:** FOC OpenClaw 2026.6.6, PowerShell 7, Windows PowerShell profile helpers, JSON roster, Markdown soul files.

---

## File Structure

- Create: `C:\FOC\Workspace\WeakSwarm\agents.roster.json`
  - The source of truth for the 20 agents: id, model, student type, and workspace path.
- Create: `C:\FOC\Workspace\WeakSwarm\souls\<agent-id>.md`
  - One editable soul/persona file per agent. User can revise these without changing model routing.
- Create: `C:\FOC\Workspace\agents\<agent-id>\skills\mbe-answer-picker\SKILL.md`
  - One MBE-taking skill per isolated agent workspace. Keep the legal-task skill separate from the soul/persona so the user can make the student weaker or stronger without changing the answer-format discipline.
- Create: `C:\FOC\Workspace\WeakSwarm\scripts\New-FocWeakSwarmAgents.ps1`
  - Idempotently creates any missing OpenClaw agents from the roster.
- Create: `C:\FOC\Workspace\WeakSwarm\scripts\Test-FocWeakSwarmAgents.ps1`
  - Smoke-tests each agent with a short MBE-style pick-only prompt.
- Create: `C:\FOC\Workspace\WeakSwarm\scripts\Invoke-FocWeakSwarm.ps1`
  - Runs one message through one agent or all enabled agents.
- Create: `C:\FOC\Workspace\WeakSwarm\scripts\WeakSwarm.Profile.ps1`
  - Defines short helper commands.
- Modify: `C:\Users\Blessed\Documents\PowerShell\BMQ.Commands.ps1`
  - Dot-source `WeakSwarm.Profile.ps1` if it exists.
- Modify: `C:\Users\Blessed\Documents\PowerShell\profile.ps1`
  - No direct change expected if `BMQ.Commands.ps1` remains the shared helper surface.
- Modify: `C:\Users\Blessed\Documents\WindowsPowerShell\profile.ps1`
  - No direct change expected if `BMQ.Commands.ps1` remains the shared helper surface.

## Wave 1 Agent Roster

These are the first 20 agents. Agent ids are Bible names, lowercase ASCII letters only, no punctuation, no spaces, and 7 characters or less. The roster intentionally favors free OpenRouter models, fixed-plan Copilot models, and the weakest/cheapest direct-provider options. Avoid direct NVIDIA custom-provider routes in Wave 1; use at most one OpenRouter-hosted NVIDIA nano model as a weak/free oddball. Failed smoke tests get replaced from the backup pool in Task 5.

Research update, 2026-06-28:

- MiniMax docs list older/weaker M2-family models beyond the current FOC configured `MiniMax-M2.7` and `MiniMax-M3` surface. Wave 1 should smoke-test `MiniMax-M2.7-highspeed` immediately and keep `MiniMax-M2.5`, `MiniMax-M2.1`, and `MiniMax-M2` as add-if-accepted candidates.
- OpenClaw currently discovers weak Gemini entries such as `google/gemini-2.5-flash-lite` and `google/gemini-3.1-flash-lite`, but Google models show unavailable until a direct Google/Gemini API-key route is configured.
- Kimi Coding should use the Kimi provider, not the Moonshot provider, if the user wants "Kimi Code, not Moonshot." OpenClaw docs identify `kimi/kimi-for-coding` as the stable Kimi Coding model reference.
- For Claude Code, the public weakest/cheapest Claude family is Haiku, but the local FOC Anthropic/Claude CLI surface currently exposes Sonnet/Opus/Fable rather than Haiku. Treat Claude as optional/control unless Haiku becomes available through the provider we choose.
- Z.AI Flash models are cheap/free enough to keep, but do not over-weight them if the goal is ten different model families.

Cost guardrails:

- Do not let weak-swarm runs inherit the global strong fallback chain. Cron/batch jobs should use a strict selected model with no hidden fallback append.
- Keep OpenAI direct, Anthropic direct, and stronger MiniMax models as backup/control lanes unless a batch is explicitly labeled as paid/control.
- Prefer free OpenRouter and fixed-plan Copilot agents for high-volume passes. For 100,000-request experiments, paid API agents should run on a sample first.
- Avoid heartbeat-driven grading. Use cron or explicit batch scripts so every model call is intentional, counted, and attributable to one agent/model.

| Agent | Model | Initial student soul |
| --- | --- | --- |
| `abel` | `openrouter/liquid/lfm-2.5-1.2b-instruct:free` | Fast skimmer |
| `enoch` | `openrouter/liquid/lfm-2.5-1.2b-thinking:free` | Thinks too long for simple rules |
| `noah` | `openrouter/meta-llama/llama-3.2-3b-instruct:free` | Knows broad black-letter law poorly |
| `abraham` | `openrouter/poolside/laguna-xs.2:free` | Code-trained surface matcher |
| `isaac` | `openrouter/cohere/north-mini-code:free` | Literal mini-coder |
| `jacob` | `openrouter/openai/gpt-oss-20b:free` | Open-source small-reasoner |
| `joseph` | `github-copilot/gpt-5.4-mini-free-auto` | Free-auto plan user |
| `moses` | `github-copilot/gpt-5.4-nano` | Nano GPT skimmer |
| `aaron` | `github-copilot/raptor-mini` | Mini coding assistant |
| `joshua` | `github-copilot/gpt-5.3-codex` | Weakest Codex-specific local route |
| `caleb` | `minimax/MiniMax-M2.7-highspeed` | Speed-biased MiniMax reader |
| `boaz` | `minimax/MiniMax-M2.7` | Broad but shallow MiniMax reader |
| `ruth` | `zai/glm-4.5-flash` | Fast flash guesser |
| `naomi` | `zai/glm-4.7-flash` | Newer free flash guesser |
| `samuel` | `google/gemini-3.1-flash-lite` | Cheapest Gemini skimmer |
| `david` | `google/gemini-2.5-flash-lite` | Stable Gemini Lite fallback |
| `elijah` | `kimi/kimi-for-coding` | Kimi Coding-only analyst |
| `elisha` | `openrouter/nvidia/nemotron-nano-9b-v2:free` | One NVIDIA nano oddball |
| `daniel` | `openrouter/openrouter/free` | Free-router chaos tester |
| `ezra` | `github-copilot/gpt-4-0125-preview` | Older-model repeater |

Backup pool after smoke test:

- `openrouter/nvidia/nemotron-nano-12b-v2-vl:free`
- `openrouter/openai/gpt-oss-120b:free`
- `openrouter/qwen/qwen3-next-80b-a3b-instruct:free`
- `github-copilot/gpt-5.4-mini`
- `github-copilot/gpt-4.1-2025-04-14`
- `minimax/MiniMax-M2.5`
- `minimax/MiniMax-M2.1`
- `minimax/MiniMax-M2`
- `zai/glm-4.7-flashx`
- `anthropic/claude-haiku-4-5` if the Anthropic provider exposes it
- `openai/gpt-5.4`

## Task 1: Baseline FOC OpenClaw

**Files:**
- Read: `C:\FOC\bin\openclaw.ps1`
- Read: `C:\FOC\.openclaw\openclaw.json`
- Read: `C:\FOC\.openclaw\agents\main\agent\models.json`

- [ ] **Step 1: Verify the wrapper is the active command**

Run:

```powershell
Get-Content -LiteralPath 'C:\FOC\bin\openclaw.ps1'
```

Expected output includes:

```powershell
$env:OPENCLAW_STATE_DIR = 'C:\FOC\.openclaw'
$env:OPENCLAW_CONFIG_PATH = 'C:\FOC\.openclaw\openclaw.json'
$env:OPENCLAW_WORKSPACE = 'C:\FOC\Workspace'
$env:OPENCLAW_GATEWAY_PORT = '7421'
```

- [ ] **Step 2: Verify FOC config and current agents**

Run:

```powershell
& 'C:\FOC\bin\openclaw.ps1' --version
& 'C:\FOC\bin\openclaw.ps1' config validate --json
& 'C:\FOC\bin\openclaw.ps1' agents list --json
& 'C:\FOC\bin\openclaw.ps1' models status --json
```

Expected:

```text
OpenClaw 2026.6.6
{"valid":true,"path":"C:\\FOC\\.openclaw\\openclaw.json"}
```

Current known starting point:

```text
Only main agent exists before this project.
```

## Task 2: Create Roster And Soul Files

**Files:**
- Create: `C:\FOC\Workspace\WeakSwarm\agents.roster.json`
- Create: `C:\FOC\Workspace\WeakSwarm\souls\*.md`
- Create: `C:\FOC\Workspace\agents\<agent-id>\skills\mbe-answer-picker\SKILL.md`

- [ ] **Step 1: Create folders**

Run:

```powershell
New-Item -ItemType Directory -Force -Path `
  'C:\FOC\Workspace\WeakSwarm', `
  'C:\FOC\Workspace\WeakSwarm\souls', `
  'C:\FOC\Workspace\WeakSwarm\scripts', `
  'C:\FOC\Workspace\WeakSwarm\results', `
  'C:\FOC\Workspace\agents' | Out-Null
```

- [ ] **Step 2: Write `agents.roster.json`**

Create `C:\FOC\Workspace\WeakSwarm\agents.roster.json` with this structure:

```json
{
  "schema": "barmatrix-foc-weak-swarm.v1",
  "openclawPath": "C:\\FOC\\bin\\openclaw.ps1",
  "agentRoot": "C:\\FOC\\.openclaw\\agents",
  "workspaceRoot": "C:\\FOC\\Workspace\\agents",
  "agents": [
    {"id":"abel","name":"BM Abel","model":"openrouter/liquid/lfm-2.5-1.2b-instruct:free","soul":"fast skimmer","enabled":true},
    {"id":"enoch","name":"BM Enoch","model":"openrouter/liquid/lfm-2.5-1.2b-thinking:free","soul":"thinks too long for simple rules","enabled":true},
    {"id":"noah","name":"BM Noah","model":"openrouter/meta-llama/llama-3.2-3b-instruct:free","soul":"knows broad black-letter law poorly","enabled":true},
    {"id":"abraham","name":"BM Abraham","model":"openrouter/poolside/laguna-xs.2:free","soul":"code-trained surface matcher","enabled":true},
    {"id":"isaac","name":"BM Isaac","model":"openrouter/cohere/north-mini-code:free","soul":"literal mini-coder","enabled":true},
    {"id":"jacob","name":"BM Jacob","model":"openrouter/openai/gpt-oss-20b:free","soul":"open-source small-reasoner","enabled":true},
    {"id":"joseph","name":"BM Joseph","model":"github-copilot/gpt-5.4-mini-free-auto","soul":"free-auto plan user","enabled":true},
    {"id":"moses","name":"BM Moses","model":"github-copilot/gpt-5.4-nano","soul":"nano GPT skimmer","enabled":true},
    {"id":"aaron","name":"BM Aaron","model":"github-copilot/raptor-mini","soul":"mini coding assistant","enabled":true},
    {"id":"joshua","name":"BM Joshua","model":"github-copilot/gpt-5.3-codex","soul":"weakest codex-specific local route","enabled":true},
    {"id":"caleb","name":"BM Caleb","model":"minimax/MiniMax-M2.7-highspeed","soul":"speed-biased minimax reader","enabled":true},
    {"id":"boaz","name":"BM Boaz","model":"minimax/MiniMax-M2.7","soul":"broad but shallow minimax reader","enabled":true},
    {"id":"ruth","name":"BM Ruth","model":"zai/glm-4.5-flash","soul":"fast flash guesser","enabled":true},
    {"id":"naomi","name":"BM Naomi","model":"zai/glm-4.7-flash","soul":"newer free flash guesser","enabled":true},
    {"id":"samuel","name":"BM Samuel","model":"google/gemini-3.1-flash-lite","soul":"cheapest gemini skimmer","enabled":true},
    {"id":"david","name":"BM David","model":"google/gemini-2.5-flash-lite","soul":"stable gemini lite fallback","enabled":true},
    {"id":"elijah","name":"BM Elijah","model":"kimi/kimi-for-coding","soul":"kimi coding-only analyst","enabled":true},
    {"id":"elisha","name":"BM Elisha","model":"openrouter/nvidia/nemotron-nano-9b-v2:free","soul":"one nvidia nano oddball","enabled":true},
    {"id":"daniel","name":"BM Daniel","model":"openrouter/openrouter/free","soul":"free-router chaos tester","enabled":true},
    {"id":"ezra","name":"BM Ezra","model":"github-copilot/gpt-4-0125-preview","soul":"older-model repeater","enabled":true}
  ]
}
```

- [ ] **Step 3: Write editable soul files**

For each agent, create `C:\FOC\Workspace\WeakSwarm\souls\<id>.md`:

```markdown
# <agent name>

Model: `<model id>`

Student soul: <initial student soul>

Behavior rules:
- Pick exactly one answer choice.
- Explain why that choice looked attractive.
- State which stem fact or legal phrase pulled the choice.
- Do not rewrite the question.
- Do not act as a perfect legal auditor.
```

- [ ] **Step 4: Write per-agent MBE skill files**

For each agent workspace, create `C:\FOC\Workspace\agents\<id>\skills\mbe-answer-picker\SKILL.md`:

```markdown
---
name: mbe-answer-picker
description: Pick the most tempting MBE answer choice from the perspective of this agent's student soul.
---

# MBE Answer Picker

Use this skill only for BarMatrix MBE answer-choice evaluation.

Rules:
- Pick exactly one answer choice.
- Stay in the capability level described by the agent's `soul.md`.
- Prefer the answer a real student with that weakness would choose, not the answer a perfect bar tutor would choose.
- Explain the tempting hook in one or two sentences.
- Output structured JSON when the batch runner asks for JSON.
```

## Task 3: Create Agents Idempotently

**Files:**
- Create: `C:\FOC\Workspace\WeakSwarm\scripts\New-FocWeakSwarmAgents.ps1`

- [ ] **Step 1: Write the creation script**

Create `C:\FOC\Workspace\WeakSwarm\scripts\New-FocWeakSwarmAgents.ps1`:

```powershell
[CmdletBinding()]
param(
  [string]$RosterPath = 'C:\FOC\Workspace\WeakSwarm\agents.roster.json'
)

$ErrorActionPreference = 'Stop'
$roster = Get-Content -Raw -LiteralPath $RosterPath | ConvertFrom-Json
$openclaw = $roster.openclawPath
$existing = & $openclaw agents list --json | ConvertFrom-Json
$existingIds = @($existing | ForEach-Object { $_.id })

foreach ($agent in $roster.agents | Where-Object { $_.enabled }) {
  $workspace = Join-Path $roster.workspaceRoot $agent.id
  $agentDir = Join-Path $roster.agentRoot (Join-Path $agent.id 'agent')
  New-Item -ItemType Directory -Force -Path $workspace | Out-Null

  if ($existingIds -contains $agent.id) {
    Write-Host "exists $($agent.id) -> $($agent.model)"
  } else {
    & $openclaw agents add $agent.id `
      --model $agent.model `
      --workspace $workspace `
      --agent-dir $agentDir `
      --non-interactive `
      --json | Out-Host
  }

  & $openclaw agents set-identity `
    --agent $agent.id `
    --name $agent.name `
    --theme "barmatrix weak-swarm" `
    --json | Out-Host
}

& $openclaw agents list --json
```

- [ ] **Step 2: Run the creation script**

Run:

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File 'C:\FOC\Workspace\WeakSwarm\scripts\New-FocWeakSwarmAgents.ps1'
```

Expected:

```text
20 non-main agents exist after the run.
Re-running the script prints exists lines instead of duplicating agents.
```

## Task 4: Add Short Command Helpers

**Files:**
- Create: `C:\FOC\Workspace\WeakSwarm\scripts\WeakSwarm.Profile.ps1`
- Modify: `C:\Users\Blessed\Documents\PowerShell\BMQ.Commands.ps1`

- [ ] **Step 1: Write helper profile**

Create `C:\FOC\Workspace\WeakSwarm\scripts\WeakSwarm.Profile.ps1`:

```powershell
$script:FocWeakSwarmRoot = 'C:\FOC\Workspace\WeakSwarm'
$script:FocWeakSwarmRoster = Join-Path $script:FocWeakSwarmRoot 'agents.roster.json'
$script:FocWeakSwarmOpenClaw = 'C:\FOC\bin\openclaw.ps1'

function bmqagents {
  $roster = Get-Content -Raw -LiteralPath $script:FocWeakSwarmRoster | ConvertFrom-Json
  $roster.agents | Where-Object enabled | Select-Object id, model, soul | Format-Table -AutoSize
}

function bmqask {
  param(
    [Parameter(Mandatory, Position=0)][string]$Agent,
    [Parameter(Mandatory, Position=1)][string]$Message,
    [string]$SessionKey,
    [int]$TimeoutSeconds = 900
  )

  $keyArgs = @()
  if ($SessionKey) {
    $keyArgs = @('--session-key', $SessionKey)
  }

  & $script:FocWeakSwarmOpenClaw agent `
    --agent $Agent `
    --local `
    --timeout $TimeoutSeconds `
    --json `
    @keyArgs `
    --message $Message
}

function bmqarmy {
  param(
    [Parameter(Mandatory, Position=0)][string]$Message,
    [int]$TimeoutSeconds = 900
  )

  $roster = Get-Content -Raw -LiteralPath $script:FocWeakSwarmRoster | ConvertFrom-Json
  foreach ($agent in $roster.agents | Where-Object enabled) {
    Write-Host "=== $($agent.id) :: $($agent.model) ==="
    bmqask -Agent $agent.id -Message $Message -SessionKey "weak-swarm-$($agent.id)-$(Get-Date -Format yyyyMMddHHmmss)" -TimeoutSeconds $TimeoutSeconds
  }
}
```

- [ ] **Step 2: Dot-source helper profile from BMQ commands**

Append to `C:\Users\Blessed\Documents\PowerShell\BMQ.Commands.ps1` only if not already present:

```powershell
$weakSwarmProfile = 'C:\FOC\Workspace\WeakSwarm\scripts\WeakSwarm.Profile.ps1'
if (Test-Path -LiteralPath $weakSwarmProfile) {
    . $weakSwarmProfile
}
```

- [ ] **Step 3: Reload and verify short commands**

Run:

```powershell
. $PROFILE
Get-Command bmqagents, bmqask, bmqarmy
bmqagents
```

Expected:

```text
bmqagents, bmqask, and bmqarmy are available.
bmqagents prints the 20 enabled agent ids.
```

## Task 5: Smoke Test And Replace Failures

**Files:**
- Create: `C:\FOC\Workspace\WeakSwarm\scripts\Test-FocWeakSwarmAgents.ps1`
- Create: `C:\FOC\Workspace\WeakSwarm\results\smoke-<timestamp>.jsonl`

- [ ] **Step 1: Write smoke test script**

Create `C:\FOC\Workspace\WeakSwarm\scripts\Test-FocWeakSwarmAgents.ps1`:

```powershell
[CmdletBinding()]
param(
  [string]$RosterPath = 'C:\FOC\Workspace\WeakSwarm\agents.roster.json',
  [string]$ResultsRoot = 'C:\FOC\Workspace\WeakSwarm\results',
  [int]$TimeoutSeconds = 900
)

$ErrorActionPreference = 'Continue'
$roster = Get-Content -Raw -LiteralPath $RosterPath | ConvertFrom-Json
$openclaw = $roster.openclawPath
New-Item -ItemType Directory -Force -Path $ResultsRoot | Out-Null
$out = Join-Path $ResultsRoot ("smoke-{0}.jsonl" -f (Get-Date -Format yyyyMMdd-HHmmss))

$prompt = @'
You are taking a multiple-choice MBE question under time pressure.
Question: A buyer and seller form a valid contract for goods. Before delivery, the seller clearly repudiates. What is the best answer?
A. The buyer must always wait until the delivery date before suing.
B. The buyer may treat the repudiation as breach and pursue remedies.
C. The seller wins because goods contracts do not allow anticipatory repudiation.
D. The contract is automatically void because performance is now impossible.
Return compact JSON only: {"pick":"A|B|C|D","why_attractive":"one sentence","confidence":"low|medium|high"}.
'@

foreach ($agent in $roster.agents | Where-Object { $_.enabled }) {
  $record = [ordered]@{
    timestamp = (Get-Date).ToString('o')
    agent = $agent.id
    model = $agent.model
    ok = $false
    output = $null
    error = $null
  }

  try {
    $raw = & $openclaw agent --agent $agent.id --local --timeout $TimeoutSeconds --json --message $prompt 2>&1
    $record.ok = ($LASTEXITCODE -eq 0)
    $record.output = ($raw -join "`n")
  } catch {
    $record.error = $_.Exception.Message
  }

  ($record | ConvertTo-Json -Compress -Depth 8) | Add-Content -LiteralPath $out -Encoding UTF8
}

Write-Host "Smoke results: $out"
Get-Content -LiteralPath $out
```

- [ ] **Step 2: Run smoke test**

Run:

```powershell
pwsh -NoProfile -ExecutionPolicy Bypass -File 'C:\FOC\Workspace\WeakSwarm\scripts\Test-FocWeakSwarmAgents.ps1'
```

Expected:

```text
At least 15 of 20 agents return JSON-like output.
Any failed model id is replaced from the backup pool.
```

## Task 6: Decide Final 20 And Persona Categories

**Files:**
- Modify: `C:\FOC\Workspace\WeakSwarm\agents.roster.json`
- Modify: `C:\FOC\Workspace\WeakSwarm\souls\*.md`

- [ ] **Step 1: Keep only passing agents**

Use the latest smoke `jsonl` to identify failures:

```powershell
$latest = Get-ChildItem 'C:\FOC\Workspace\WeakSwarm\results\smoke-*.jsonl' | Sort-Object LastWriteTime -Descending | Select-Object -First 1
Get-Content $latest.FullName | ConvertFrom-Json | Where-Object { -not $_.ok } | Select-Object agent,model,error
```

- [ ] **Step 2: Assign 20 student souls**

Use these 20 soul slots as the user-editable baseline:

```text
fast skimmer
exception-blind student
overconfident repeater
anxious retaker
rule-memorizer with weak application
fact-pattern matcher
conclusion-first guesser
absolute-word flincher
minority-rule confuser
element skipper
call-of-question misreader
true-but-not-responsive sucker
policy-intuition guesser
terminology chaser
time-pressure simplifier
prior-question anchoring student
bar-prep cliché follower
hearsay/procedure overgeneralizer
property/formality overgeneralizer
strong control referee
```

The user owns the final wording of these souls. The implementation only ensures each soul has a file and each file is connected to one agent id.

## Task 7: First Real BarMatrix Dry Run

**Files:**
- Create: `C:\FOC\Workspace\WeakSwarm\results\bar-dryrun-<timestamp>.jsonl`

- [ ] **Step 1: Run one prompt through one agent**

Run:

```powershell
bmqask abel "Pick A/B/C/D for this MBE item and explain only why the choice attracted you: <paste one question here>"
```

Expected:

```text
One JSON result from the abel agent.
```

- [ ] **Step 2: Run the same prompt through the whole army**

Run:

```powershell
bmqarmy "Pick A/B/C/D for this MBE item and explain only why the choice attracted you: <paste one question here>"
```

Expected:

```text
20 agent outputs, one per enabled agent.
```

- [ ] **Step 3: Decide whether to build batch aggregation**

If the one-question army run works, the next plan is a separate batch aggregator that:

```text
reads 10,000 questions
runs selected agents
stores pick counts by question_id, choice, agent, model, soul
flags distractors with zero or low pull
exports a hardening queue
```

That aggregator should be planned separately because it touches question-bank parsing and result scoring, not just OpenClaw setup.

## Self-Review

- Spec coverage: This plan covers the user's requested FOC-only OpenClaw surface, one-agent-per-model setup, short command-line usage, and editable souls/personas.
- Placeholder scan: No `TBD`, `TODO`, or missing command shapes are present. The only user-provided future work is soul copy refinement, which is intentionally owned by the user.
- Type consistency: Agent ids are Bible names with lowercase ASCII letters only and 7 characters or less. Commands use `foc-openclaw` indirectly through `C:\FOC\bin\openclaw.ps1`.
- Scope check: Agent setup and short command helpers are included. Large-scale 10,000-question aggregation is intentionally split into a later plan after the army smoke test passes.
