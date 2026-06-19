# BarMatrix Practice Answer-Key Case Study Repair - 2026-06-19

## Plan

- [x] Compare the live `/practice` answer-key debrief and `/preview/answer-key` against the Claude Combo B handoff.
- [x] Wire the practice answer-key actions: Red-Zone Map navigation and Start repair drill.
- [x] Tighten `AnswerKeyDebrief` visual fidelity in place: stronger Combo B artifact styling, key cards, repair card, and responsive dense sections.
- [x] Validate with lint/build and browser screenshots, then record proof here.

## Review

- Compared the Claude handoff `Answer Key - Mixed Combos.html` and `design_handoff_combo_b_answer_key` against the live shared component. `C:\BMO\app-repo\app\preview` is a mirror of the current app preview, not a separate better implementation.
- Updated `C:\barmatrix-app\components\redesign\answer-key-debrief.tsx` to remove the duplicate top continue button, strengthen the black/gold key cards, dark Red-Zone repair card, dense four-mold grid, and responsive table/choice layouts.
- Wired `C:\barmatrix-app\app\practice\practice-client.tsx` so answer-key debrief buttons navigate to the Red-Zone detail when coordinates exist and start a prescribed Red-Zone repair drill through `api.startDrill`.
- Extended the answer-key API payload in `C:\barmatrix-api\src\lib\answer-key-data.ts` with `redZone.dimension` and `redZone.tag`, preferring `tension_point`, then `subtopic`, then `subject`.
- Validation passed: `npm run lint` in `C:\barmatrix-app`; `npm run build` in `C:\barmatrix-app`; `npm run typecheck`, `npm run build`, and `npx tsx --test src/lib/answer-key-data.test.ts` in `C:\barmatrix-api`.
- Browser proof: existing dev server at `http://localhost:3100/preview/answer-key`; Playwright screenshots saved to `C:\FOC\tasks\answer-key-screenshots-20260619\desktop.png` and `C:\FOC\tasks\answer-key-screenshots-20260619\mobile.png`; both returned HTTP 200, no console/page errors, and no horizontal overflow.

# OpenClaw Auth And Model Catalog Cleanup - 2026-06-19

## Plan

- [x] Remove stale auth metadata for `openrouter:default`, `google:default`, and `xai:sunnylwood@gmail.com`.
- [x] Set XAI auth order to `["xai:default"]`.
- [x] Remove unused provider catalog rows for DeepSeek, Google, XAI, and Z.ai targets.
- [x] Keep `minimax/MiniMax-M2.7`, add an agent selector if missing, and add it to fallbacks.
- [x] Remove visible non-fallback DeepSeek direct selectors and Z.ai/GLM selectors.
- [x] Leave `meta.lastTouched*` alone because OpenClaw auto-manages it.
- [x] Validate config without restarting Gateway.

## Review

- Removed stale auth profile metadata keys: `openrouter:default`, `google:default`, and `xai:sunnylwood@gmail.com`.
- Set `auth.order.xai` to only `["xai:default"]`.
- Removed 19 provider catalog model rows total: DeepSeek 4, Google 1, XAI 1, and Z.ai 13.
- Removed 11 visible non-fallback agent selectors: 3 DeepSeek direct selectors and 8 Z.ai/GLM selectors.
- Preserved `models.providers.minimax.models` row `MiniMax-M2.7`, added `agents.defaults.models["minimax/MiniMax-M2.7"]`, and inserted `minimax/MiniMax-M2.7` immediately after `minimax/MiniMax-M3` in fallbacks.
- `openclaw config validate --json` returned `valid=true`.
- Post-write verification found 0 stale auth profiles, 0 removed selectors, and 0 removed provider rows still present.
- Gateway was not restarted.

# OpenClaw Disabled Skills Cleanup - 2026-06-19

## Plan

- [x] Keep `coding-agent`, `discord`, `summarize`, `xurl`, and `wacli` in `C:\FOC\.openclaw\openclaw.json`.
- [x] Remove all other disabled `skills.entries` rows from `openclaw.json`.
- [x] Locate matching skill folders and delete only paths resolved inside confirmed OpenClaw skill roots.
- [x] Validate the config and verify removed skill folders are gone.
- [x] Do not create backups; user confirmed backups already exist.

## Review

- `skills.entries` now has 5 rows: `coding-agent`, `discord`, `summarize`, `wacli`, and `xurl`.
- Removed 34 disabled skill entries from `openclaw.json`.
- Deleted 34 matching bundled skill folders from `C:\FOC\node_modules\openclaw\skills`.
- Deleted 2 stale temp Slack plugin-cache folders under `C:\FOC\.openclaw\agents\main\agent\codex-home\.tmp\plugins\plugins` and `C:\FOC\.openclaw\agents\hearsay\agent\codex-home\.tmp\plugins\plugins`.
- `openclaw config validate --json` returned `valid=true`.
- `openclaw skills list --json` shows all 5 kept skills visible and 0 of the 34 removed skills visible.
- No Gateway restart was run.

# OpenClaw JSON Cleanup Review - 2026-06-19

## Plan

- [x] Keep `C:\FOC\.openclaw\openclaw.json` read-only and do not restart Gateway.
- [x] Measure section sizes and identify the real config bulk.
- [x] Audit model selectors, provider catalog rows, disabled skills, plugin allowlist, auth metadata, and generated metadata.
- [x] Use dry-run-only config commands for candidate removals where useful.
- [x] Return a ranked cleanup plan instead of applying changes.

## Review

- No changes were made to `openclaw.json`; no Gateway restart was run.
- Current file is valid: `openclaw config validate --json` returned `valid=true`.
- File size is 72,874 bytes as formatted and 39,439 bytes minified. Main payload is `models` at about 25,224 compressed bytes and `agents` at about 9,952 compressed bytes.
- Highest-confidence cleanup: remove `skills.entries`; it contains 39 disabled skills and 0 enabled skills, about 1.1 KB of noise. Dry-run unset passed.
- Also safe by dry-run: unset `skills.install`, unset `wizard`, and unset `plugins.allow`. `plugins.allow` is larger but behavior-sensitive, so treat it as a second-pass cleanup unless OpenClaw defaults are acceptable.
- Do not try to remove `meta`; OpenClaw rejects editing it because it is auto-managed and will be re-stamped on config writes.
- Stale-looking auth metadata: config still lists `openrouter:default`, `google:default`, and `xai:sunnylwood@gmail.com`, while active auth list shows OpenRouter `brittany/destry/adley`, Google `beau/brayden/silas`, and XAI `xai:default`. Dry-run unsets passed, and setting `auth.order.xai` to only `["xai:default"]` passed.
- Not-routed model selectors: 18 entries are in `agents.defaults.models` but are neither primary nor fallback. The clearest optional removals are empty selectors `kimi/k2p5`, `kimi/kimi-code`, `nv-embed-v1/nvidia/nv-embed-v1`, and `openrouter/nvidia/llama-nemotron-rerank-vl-1b-v2:free`; dry-run unsets passed. Keep newly added `openrouter/cohere/north-mini-code:free` if the point is to expose it as an option.
- Provider-catalog rows not selected anywhere: `deepseek/deepseek-chat`, `google/gemini-3.1-pro-preview`, `minimax/MiniMax-M2.7`, `xai/grok-4.20-beta-latest-non-reasoning`, and Z.ai `glm-4.5`, `glm-4.5-air`, `glm-4.5-flash`, `glm-4.5v`, `glm-4.6v`. Removing those would trim about 2.3 KB without touching current primary/fallback routes.
- Larger policy cleanup candidates: DeepSeek direct selectors (3) and Z.ai direct selectors (8) are visible but not in fallback routing; prior local model review had excluded DeepSeek and Z.ai/GLM families. Removing those is a product choice, not automatic dead-code cleanup.
- Secret cleanup remains separate from size cleanup: audit still reports plaintext `gateway.auth.token` and `models.providers.grq-compound.apiKey` in `openclaw.json`, plus plaintext auth-store/model-cache findings. Do not treat that as mere bloat; migrate only with working replacement refs.

# OpenRouter Model Add - 2026-06-19

## Plan

- [x] Verify requested OpenRouter model IDs against local OpenClaw config and live OpenRouter catalog/pages.
- [x] Add only confirmed missing model selectors to `C:\FOC\.openclaw\openclaw.json`.
- [x] Validate config, restart Gateway if needed, and verify the configured model surface.
- [x] Document added, already-present, and blocked model refs.

## Review

- Added `openrouter/cohere/north-mini-code:free` to `agents.defaults.models` with an empty selector object.
- Added `openrouter/nvidia/llama-nemotron-rerank-vl-1b-v2:free` to `agents.defaults.models` after the direct OpenRouter model page confirmed the slug; it is not in fallbacks because it is a reranking model, not a normal chat-writing fallback.
- `openrouter/nex-agi/nex-n2-pro:free` was already present in `agents.defaults.models` and `agents.defaults.model.fallbacks`; no duplicate was added.
- Backups before writes: `C:\FOC\.openclaw\openclaw.2026-06-19T10-03-18.163-07-00.openrouter-cohere-model-backup.json` and `C:\FOC\.openclaw\openclaw.2026-06-19T10-04-01.637-07-00.openrouter-nvidia-rerank-model-backup.json`.
- `openclaw config set agents.defaults.models ... --strict-json --merge --dry-run --json` passed before each write.
- `openclaw config validate --json` passed after the writes: `valid=true`, path `C:\FOC\.openclaw\openclaw.json`.
- `openclaw tasks list --status running --json` reported `count=0`, then `openclaw gateway restart` succeeded and `openclaw gateway health` returned `OK`.
- Verification: all three requested refs now appear in `agents.defaults.models`; only the already-existing Nex-N2-Pro appears in fallbacks.

# OpenClaw Config Audit and Cleanup - 2026-06-19

## Plan

- [x] Confirm current OpenClaw docs and local CLI behavior for manual model additions.
- [x] Validate `C:\FOC\.openclaw\openclaw.json` before touching it.
- [x] Audit provider/model entries, agent defaults, search config, and secret-reference hygiene without exposing secret values.
- [x] Re-run fallback cleanup using the PowerShell wrapper after the `.cmd` shim stripped JSON quotes.
- [x] Apply only safe config cleanup/enhancement changes.
- [x] Re-run validation and document proof, remaining blockers, and exact manual model-edit rule.

## Review

- Current docs confirm `openclaw config set` should use `--merge` for protected model maps/lists such as `agents.defaults.models`, `models.providers`, and `models.providers.<id>.models`; object assignment otherwise replaces the target path unless `--merge` is used.
- For manual model additions under an existing provider, edit/add the model object under `models.providers.<provider>.models`, then add or tune the visible selector under `agents.defaults.models["<provider>/<model-id>"]` if the agent should use it. Update `agents.defaults.model.primary` or `fallbacks` only when it should become the default/failover route.
- `openclaw config validate` passed before edits for `C:\FOC\.openclaw\openclaw.json`.
- Audit found `models.mode = merge`, default primary `openai/gpt-5.5`, 39 configured providers, 79 agent model selectors, no duplicate provider-model rows, no temperature/topP range violations, and no model `maxTokens` above configured context window.
- Safe cleanup applied: `agents.defaults.model.fallbacks` now has 62 unique entries instead of 63, no longer duplicates the primary `openai/gpt-5.5`, starts with `anthropic/claude-opus-4-8`, `openai/gpt-5.4`, `openai/gpt-5.4-mini`, `anthropic/claude-opus-4-7`, and `anthropic/claude-opus-4-6`, and moves previously weak final-writing candidates to the tail.
- Backup before the successful write: `C:\FOC\.openclaw\openclaw.2026-06-19T09-45-17.311-07-00.fallback-cleanup-backup.json`.
- Operational note: for JSON-bearing OpenClaw config edits from PowerShell, use `C:\FOC\bin\openclaw.ps1`; the `.cmd` shim strips JSON quotes and caused two dry-run-only failures before any config write.
- `openclaw config validate --json` passed after the edit: `valid=true`, path `C:\FOC\.openclaw\openclaw.json`.
- Gateway restart was safe because `openclaw tasks list --status running --json` reported `count=0`; `openclaw gateway restart` succeeded and `openclaw gateway health` returned `OK`.
- Secrets audit remains a blocker, not a completed cleanup: `OPENCLAW_FOC_GROQ_API_KEY` and `GROQ_API_KEY` were missing/empty, so `models.providers.grq-compound.apiKey` was left untouched rather than replacing a working plaintext value with an unresolved SecretRef. Latest redacted audit still shows plaintext provider-key findings for `grq-compound` in `openclaw.json` and generated `models.json`; unresolved and shadowed ref counts were 0.

# Computer Health Check - 2026-06-17

## Plan

- [x] Capture CPU, memory, uptime, disk, pagefile, and top process usage.
- [x] Inventory startup entries from common registry, Startup folders, and scheduled logon tasks.
- [x] Inventory running services and network/listening process context.
- [x] Summarize performance risks and save full read-only artifacts.
- [x] Document verification and findings in this file.

## Review

- Diagnostic-only pass; no services, startup entries, registry keys, files, or scheduled tasks were changed.
- Report directory: `C:\FOC\tasks\health-check-20260617-154458`.
- Machine: `PRAISEJESUS`, Windows 11 Home build `26200`, Intel i9-12900HK, 20 logical cores, 31.78 GB RAM, rebooted 2026-06-17 12:35:42 -07:00.
- CPU was not the bottleneck during sampling: 5-sample total CPU average was 13.7%; top current process sample was `pwsh` at 2.06%, then `codex` at 1.48%.
- Memory is moderately crowded: 23.77 GB used / 8.02 GB free / 74.8% used; commit was 56.1%; pagefile usage was only 137 MB, so no heavy paging was observed.
- Main memory groups: `node` 56 processes / 7.4 GB working set, `chrome` 36 / 7.25 GB, `claude` 15 / 3.38 GB, `Code` 12 / 1.99 GB, `Codex` 10 / 1.26 GB. Largest single process was `node` PID 28028 at 3.23 GB.
- Disk risk: `C:` is 94.5% used with 26.36 GB free; this is the clearest system-health warning. `F:` has 385.14 GB free.
- Startup inventory found 55 entries: 7 registry Run entries, 46 boot/logon scheduled tasks, and 2 Startup folder entries. User-level startup candidates include Adobe Acrobat Synchronizer, Discord, Docker Desktop, Edge auto-launch, RaiDrive, and one ToDesktop app entry.
- Services inventory found 302 services, 112 running; 72 running services are automatic. Notable auto/running non-core services include `postgresql-x64-17`, `RaiDrive.Service`, `WinFsp.Launcher`, `WSLService`, and `CoworkVMService` (Claude).
- Network snapshot found 29 TCP listeners and 112 established TCP connections. Established connections were mainly Chrome (72), Claude (12), Codex (11), System (7), and Node (6).
- WSL service is running, but `wsl --list --running` reported no running distributions.
- Full inventories saved as CSV/JSON/TXT in the report directory; raw process command lines were scrubbed from process CSVs to avoid preserving tokens or secrets.


# OpenClaw API Keys To Env Variables Investigation - 2026-06-17

## Plan

- [x] Inventory non-OAuth API-key material in OpenClaw config/state without exposing secret values.
- [x] Identify the env variable or SecretRef shape OpenClaw accepts for each provider/tool key.
- [x] Determine exactly which environment variables need to be set for this install.
- [x] Validate the recommended config shape against OpenClaw.
- [x] Document the migration steps, residual OAuth exceptions, and verification results.
- [x] Set up test fallback env names for OpenRouter (`BRITTANY`, `DESTRY`, `ADLEY`) and Gemini (`BEAU`, `SILAS`, `BRAYDEN`) without saving key values.

## Review

- Scope: investigated only; no provider secrets were changed or written.
- OpenClaw version: `2026.6.6`; wrapper `C:\FOC\bin\openclaw.ps1` pins `OPENCLAW_STATE_DIR` to `C:\FOC\.openclaw`, config to `C:\FOC\.openclaw\openclaw.json`, and workspace to `C:\FOC\Workspace`.
- Trusted env target for this install is `C:\FOC\.openclaw\.env` (`$OPENCLAW_STATE_DIR\.env`). Do not rely on `C:\FOC\Workspace\.env` for provider API keys; OpenClaw docs say workspace dotenv provider credentials are ignored.
- Current `openclaw.json` already uses env SecretRefs for `GEMINI_API_KEY` and shared `NVIDIA_API_KEY` model providers plus `agents.defaults.memorySearch.remote.apiKey`. The only plaintext provider key in `openclaw.json` is `models.providers.grq-compound.apiKey`.
- `openclaw secrets audit --json` found static plaintext API keys in the agent auth store for `deepseek:default`, `google:default`, `minimax:global`, `openrouter:default`, `xai:default`, and `zai:default`. It also found `models.json` plaintext residue for `grq-compound`.
- Out-of-scope OAuth/rotating/token findings: OpenAI OAuth, Claude/Anthropic OAuth, GitHub Copilot token, and `gateway.auth.token`. These are not model/provider API-key migrations unless the user explicitly broadens scope.
- Env vars to set or keep available: `GROQ_API_KEY`, `GEMINI_API_KEY`, `NVIDIA_API_KEY`, `MINIMAX_API_KEY`, `OPENROUTER_API_KEY`, `XAI_API_KEY`, `DEEPSEEK_API_KEY`, `ZAI_API_KEY` (or legacy `Z_AI_API_KEY`). Optional non-model/search env vars currently relevant: `PERPLEXITY_API_KEY`, `OPENAI_API_KEY`.
- User correction: use custom env variable names, not provider-default names. Provider-default env names are useful only as OpenClaw's built-in fallback conventions.
- Recommended custom env names: `OPENCLAW_FOC_GROQ_API_KEY`, `OPENCLAW_FOC_GEMINI_API_KEY`, `OPENCLAW_FOC_NVIDIA_API_KEY`, `OPENCLAW_FOC_MINIMAX_API_KEY`, `OPENCLAW_FOC_OPENROUTER_API_KEY`, `OPENCLAW_FOC_XAI_API_KEY`, `OPENCLAW_FOC_DEEPSEEK_API_KEY`, `OPENCLAW_FOC_ZAI_API_KEY`, plus optional `OPENCLAW_FOC_PERPLEXITY_API_KEY` and `OPENCLAW_FOC_OPENAI_API_KEY`.
- OpenClaw SecretRef shape validated: `{ "source": "env", "provider": "default", "id": "ENV_VAR_NAME" }`.
- Non-destructive validation passed for converting `models.providers.grq-compound.apiKey` to `GROQ_API_KEY`: `openclaw config set models.providers.grq-compound.apiKey --ref-source env --ref-provider default --ref-id GROQ_API_KEY --dry-run`.
- Non-destructive validation also passed for a custom env name: `openclaw config set models.providers.grq-compound.apiKey --ref-source env --ref-provider default --ref-id OPENCLAW_FOC_GROQ_API_KEY --dry-run`.
- Current config validation passed: `openclaw config validate --json` returned valid.
- Recommended migration path: add the env vars to `C:\FOC\.openclaw\.env`; use `openclaw config set ... --ref-source env --ref-provider default --ref-id ...` for config-level keys; use `openclaw secrets configure --agent main --plan-out C:\FOC\tasks\openclaw-secrets-env-plan.json --skip-provider-setup`, then `openclaw secrets apply --from ... --dry-run`, then apply, then `openclaw secrets reload`, `openclaw secrets audit --check`, and `openclaw models status --json`.
- User-requested test naming: OpenRouter key order is `BRITTANY`, then `DESTRY`, then `ADLEY`; Gemini key order is `BEAU`, then `SILAS`, then `BRAYDEN`.
- Revised implementation decision: do not use an exec resolver. Use OpenClaw's native per-provider auth profile rotation instead, with one API-key profile per custom env name and no explicit auth order override.
- Created comments-only local key file `C:\FOC\.openclaw\.env` and added `.openclaw/.env` to `C:\FOC\.gitignore`; `git check-ignore -v -- C:\FOC\.openclaw\.env` confirms it is ignored.
- Switch plan after user saved keys: create six API-key auth profiles backed by env SecretRefs (`openrouter:brittany`, `openrouter:destry`, `openrouter:adley`, `google:beau`, `google:silas`, `google:brayden`), avoid copying key values into OpenClaw's auth store, and verify OpenClaw sees the profile rotation surface.
- Switch completed: `openrouter:default` and `google:default` plaintext profiles were removed from the active auth store, and the six new profiles now point to env SecretRefs for `BRITTANY`, `DESTRY`, `ADLEY`, `BEAU`, `SILAS`, and `BRAYDEN`.
- Rotation verification: runtime auth order resolves to OpenRouter `openrouter:brittany`, `openrouter:destry`, `openrouter:adley`; Gemini/Google `google:beau`, `google:silas`, `google:brayden`.
- Cleanup: removed the shadowed `models.providers.google.apiKey` config ref so Google now relies on the three auth profiles instead of the old single `GEMINI_API_KEY` config reference.
- Verification: `openclaw config validate --json` passed; `openclaw secrets audit --json` reported `unresolvedRefCount=0`, `shadowedRefCount=0`, and no focused OpenRouter/Gemini findings; `openclaw secrets reload --json --timeout 10000` returned `ok=true` with `warningCount=0`.
- Backup before auth-store mutation: `C:\FOC\.openclaw\agents\main\agent\openclaw-agent.2026-06-17T04-18-15.126-07-00.env-profile-switch-backup.sqlite`.

# OpenClaw Legal-Creative Temperature Correction - 2026-06-17

## Plan

- [x] Record the user correction in `tasks/lessons.md`: do not blanket max sampling params across legal-writing models.
- [x] Research current provider temperature guidance/ranges for the affected model families.
- [x] Inventory every current `temperature: 2` entry in `C:\FOC\.openclaw\openclaw.json`.
- [x] Assign individual temperatures in the requested `0.7` to `2.0` range for legal reasoning plus creative MBE scenario generation.
- [x] Update the config manually per model/alias, without provider-level merge defaults.
- [x] Validate config and verify no generation model remains blindly set to `2`.
- [x] Document the final recommendation bands and verification results.

## Review

- User corrected the prior blanket setting: the goal is not max creativity everywhere, but legal-writing quality with enough variation for creative MBE scenarios.
- Updated `tasks/lessons.md` with the rule to avoid blanket max sampling settings for legal/MBE model tuning.
- Research notes: DeepSeek recommends lower temperature for coding/math and higher for creative writing; DeepSeek and Groq document chat temperature up to `2` and recommend adjusting `temperature` or `top_p`, not both; Gemini docs show `0.0-2.0` for listed models but recommend Gemini 3 stay at default `1.0`; Z.ai recommends lower temperature for factual rigor and higher for creativity; NVIDIA MiniMax M2.7 docs recommend `temperature=1.0`; NVIDIA Nemotron Nano 9B v2 docs recommend lower temperature for reasoning.
- Policy applied: keep `topP = 1` and vary `temperature` only. Use `0.7-0.95` for legal reasoning/accuracy models, `1.0-1.15` for balanced drafting and scenario rewriting, and `1.2-1.35` only for creative scenario variation models.
- Updated `C:\FOC\.openclaw\openclaw.json` with explicit per-model/per-alias temperature settings; no provider-level merged defaults were added.
- Backups created before edits: `C:\FOC\.openclaw\openclaw.2026-06-17T03-08-04.768-07-00.legal-creative-temperature-backup.json` and final pre-write backup `C:\FOC\.openclaw\openclaw.2026-06-17T03-09-11.804-07-00.legal-creative-temperature-backup.json`.
- Final audit: `113` temperature-bearing generation entries, all within `0.7-1.35`; `BelowRange=0`, `AboveRange=0`, `AtTwo=0`, `TopPNotOne=0`, and `MaxTokensAboveContext=0`.
- Final distribution: `0.7` x6, `0.85` x14, `0.9` x19, `0.95` x11, `1.0` x23, `1.05` x12, `1.1` x5, `1.15` x15, `1.2` x4, `1.35` x4.
- Full per-entry recommendation export: `C:\FOC\tasks\openclaw-temperature-recommendations-2026-06-17.csv`.
- `openclaw config validate` passed for `C:\FOC\.openclaw\openclaw.json`.

# OpenClaw Search Provider Fallback Research - 2026-06-17

## Plan

- [x] Inspect current `tools.web.search` config and OpenClaw schema for provider/fallback support.
- [x] Search local OpenClaw package docs/source for search provider names and fallback behavior.
- [x] Check public/current docs or web references for OpenClaw search provider fallback syntax.
- [x] Report whether a true fallback can be configured or whether a practical workaround is needed.
- [x] Document the result and verification in this file.

## Review

- Current config pins `tools.web.search.provider` to `parallel-free` and keeps `tools.web.search.openaiCodex.enabled = true` with `mode = cached`.
- `openclaw config schema` exposes a single `tools.web.search.provider` string, plus `enabled`, `maxResults`, `timeoutSeconds`, `cacheTtlMinutes`, `apiKey`, and `openaiCodex`; it does not expose a `fallbackProviders`, `providers`, or provider-chain field.
- The schema permits extra fields under `tools.web.search`, so a made-up fallback key might validate, but local source/doc search did not find a web-search provider-chain key that would consume it.
- Installed web-search provider ids found from `openclaw plugins list --json`: loaded/enabled providers include `gemini`, `minimax`, `kimi`, `ollama`, `parallel`, `parallel-free`, and `grok`; disabled provider plugins include `duckduckgo`, `exa`, `firecrawl`, `perplexity`, `searxng`, and `tavily`.
- Official docs say provider omission triggers auto-detection from ready API-backed providers, while key-free providers such as `parallel-free`, DuckDuckGo, Ollama Web Search, and Codex Hosted Search are used only when selected explicitly or through the configure flow.
- Recommendation: do not add a fake fallback key to `openclaw.json`. For provider failover, either omit `provider` and rely on API-backed auto-detection/startup selection, select `codex`/native hosted search intentionally, or implement a custom OpenClaw plugin provider that internally tries providers in order.
- Verification run: `openclaw config get tools.web.search`, `openclaw config schema`, `openclaw plugins list --json`, local source/doc search for fallback-chain keys, official docs review, and `openclaw config validate` passed.

# OpenClaw High-Creativity Model Config Update - 2026-06-17

## Plan

- [x] Back up `C:\FOC\.openclaw\openclaw.json` before changing model settings.
- [x] Add explicit high-creativity params to each generation model entry individually, not as provider-level merged defaults.
- [x] Raise conservative output caps per model while preserving already-large limits.
- [x] Validate OpenClaw config after the edit.
- [x] Document the exact policy and any remaining risk.

## Review

- User clarified not to use merged provider defaults; every model should be tweaked individually.
- Created backup: `C:\FOC\.openclaw\openclaw.2026-06-17T02-53-45.010-0700.high-creativity-backup.json`.
- Updated 61 model-catalog generation entries with explicit model-level params: `temperature: 2`, `topP: 1`, and per-model `maxTokens`.
- Updated 52 `agents.defaults.models` selectors that point at these provider/model pairs with the same explicit params, while preserving existing aliases and thinking settings.
- Did not add provider-level `params`; verification found `ProviderParamCount=0`.
- Skipped the embedding model (`nv-embed-v1`) so temperature/output generation params are not applied to embeddings.
- Raised conservative output caps individually, including xAI Grok 4.20 to `262144`, xAI Grok 4.3/Grok Build to `131072`, NVIDIA default chat entries to `32768`, stronger NVIDIA entries such as Nemotron Ultra/MiniMax to `131072`, Groq Compound to `8192`, and DeepSeek Chat to `32768`.
- Corrected Z.ai variants individually so no generation model has `maxTokens` above its configured `contextWindow`; final verification reported `MaxTokensAboveContext=0`.
- `openclaw config validate` passed for `C:\FOC\.openclaw\openclaw.json`.

# OpenClaw Model Token/Params Lookup - 2026-06-17

## Plan

- [x] Parse the pasted model-provider block and identify every model/provider entry without exposing secrets.
- [x] Inspect the local OpenClaw config shape for `models`, `params`, and token fields.
- [x] Verify current provider/model token limits from public provider documentation where available.
- [x] Produce a recommended `openclaw.json` pattern for context/input limits, output tokens, temperature, and related sampling fields.
- [x] Document lookup results, caveats, and any unsafe pasted credentials.

## Review

- Parsed the pasted model block and confirmed it matches `C:\FOC\.openclaw\openclaw.json` model overlay shape.
- The pasted block contains a raw Groq API key; do not preserve that in config. Rotate it and replace with an env SecretRef.
- `openclaw config validate` passed for the current config.
- `openclaw config schema` confirms `models.mode`, provider/model `contextWindow`, `contextTokens`, `maxTokens`, `params`, and `compat.maxTokensField` are valid.
- Use `contextWindow` for the native model window, `maxTokens` for generated output cap, and `contextTokens` only when forcing OpenClaw to budget below the native window.
- Provider/model `params` is accepted by schema and existing config already uses `temperature`, `topP`, and `maxTokens` under a model entry.
- Important lookup corrections: MiniMax M2.7 is 204,800 context, not 1,000,000; Groq Compound is 131,072 context and 8,192 output; xAI Grok 4.20 official docs show 1,000,000 context for the listed beta aliases, not 2,000,000; several NVIDIA-hosted model pages differ from the pasted blanket 128,000/4,096 defaults.

# OpenClaw Tool/Sandbox Config - 2026-06-16

## Plan

- [x] Back up current OpenClaw state before relaxing tool and exec policy.
- [x] Set the OpenClaw tool profile to `full`.
- [x] Configure OpenClaw exec to run through the gateway with full policy instead of sandbox-only execution.
- [x] Validate config and restart the gateway so the policy takes effect.
- [x] Re-check status and document the resulting session-maintenance guidance.

## Review

- User corrected that if all 500 sessions are from the past 24 hours, age-based pruning will not help. The session-pressure fix should use entry-count caps, disk-budget caps, concurrency limits, or earlier subagent archiving rather than `pruneAfter` alone.
- Created verified backup at `C:\FOC\2026-06-16T19-49-40.874-07-00-openclaw-backup.tar.gz` before policy changes.
- Updated `tools.profile` from `coding` to `full`.
- Added explicit exec bypass settings: `tools.exec.host = gateway`, `tools.exec.mode = full`.
- Added explicit filesystem setting: `tools.fs.workspaceOnly = false`.
- Config validation passed for `C:\FOC\.openclaw\openclaw.json`.
- Restarted the `\OpenClaw Gateway` scheduled task through elevated `schtasks`; first status check timed out during startup, but logs showed `gateway ready`, and a follow-up status confirmed `ws://127.0.0.1:7421` reachable with auth token.
- Follow-up `openclaw gateway probe` connected successfully and reported `admin-capable`; its follow-up read diagnostics still timed out, so deep read-probe latency remains a minor residual issue.

# GitHub Admin Collaborator Reset - 2026-06-16

## Plan

- [x] Re-confirm `auronpep/FOC` is the private target and the active account can administer it.
- [x] Remove existing pending invitations or collaborator access for `VoteWood` and `JWoodMedia`.
- [x] Re-add `VoteWood` and `JWoodMedia` with `admin` permission.
- [x] Verify the fresh pending invitations or active admin state and document the result.

## Review

- First reset attempt stopped before any GitHub mutation because a PowerShell error string used `$user:` without braces, causing a parser error. Retrying with brace-delimited variables.
- Re-confirmed `auronpep/FOC` is `PRIVATE`, local `origin` points to `https://github.com/auronpep/FOC.git`, and active GitHub permission is `ADMIN`.
- Deleted old pending admin invitations: `VoteWood` invitation `322310158`; `JWoodMedia` invitation `322310159`.
- Neither account had active collaborator access after the old invitations were deleted.
- Re-added fresh admin invitations: `VoteWood` invitation `322581409`, created `2026-06-16T08:35:17Z`; `JWoodMedia` invitation `322581415`, created `2026-06-16T08:35:19Z`.
- Final verification: both fresh invitations are unexpired with `permissions: admin`; direct collaborator permission remains `none` until each invite is accepted.

# GitHub Admin Collaborators - 2026-06-16

## Plan

- [x] Verify the local repository remote, GitHub authentication, and current repository visibility before any remote write.
- [x] Add or update `erewhonsgroup`, `VoteWood`, and `JWoodMedia` as admin collaborators on the confirmed `FOC` repository.
- [x] Verify collaborator or pending-invitation state after the update.
- [x] Record the final result and any blockers in this file.

## Review

- Confirmed local `origin` is `https://github.com/auronpep/FOC.git`.
- Confirmed GitHub target `auronpep/FOC` is `PRIVATE` and the active `auronpep` token has `ADMIN` permission.
- Confirmed requested identities resolve as users: `erewhonsgroup`, `VoteWood`, and `JWoodMedia`.
- `erewhonsgroup` already had active `admin` permission and still verifies as `admin`.
- Sent or refreshed admin collaborator invitations for `VoteWood` and `JWoodMedia`; GitHub reports pending invitations with `permissions: admin`.
- Verification after the update: `VoteWood` and `JWoodMedia` still show `permission: none` until they accept their pending admin invitations.

# Gemini Standalone CQ Prompt - 2026-06-16

## Plan

- [x] Read the active CQ prompt, local CQ QA skill, controlled vocabularies, and outline-code reference shape.
- [x] Create a concise standalone Gemini prompt that rolls the CQ contract into one pasteable file.
- [x] Verify the file contains the needed output blocks, controlled values, QA gates, and question-input placeholder.

## Review

- Added `C:\FOC\Workspace\GEMINI_CQ_STANDALONE_PROMPT.md`.
- Verification found required CQ headings, controlled vocabulary/routing rules, the JSON parse gate, and the bottom question-input placeholder.
- Prompt file is 331 lines / 17,026 bytes and ASCII-only.

# CrimLaw CSV Completion Pass - 2026-06-14

## Plan

- [x] Inspect `Workspace/CrimLaw.csv` structure and confirm the completion rule.
- [x] Compare every `BARMATRIX Q#` row against `Workspace/Finished/CQ<question>.md`.
- [x] Update the second column to `Completed` for matching files and blank for non-matches.
- [x] Verify row counts, completed counts, and sample outputs after writing.

## Review

- Updated `Workspace/CrimLaw.csv` by checking each `BARMATRIX Q#` against `Workspace/Finished/CQ<question>.md`.
- Total data rows checked: 951.
- Rows marked `Completed`: 88.
- Rows left blank: 863.
- Verification found 0 completed rows without files and 0 existing files left blank.

# Question Status CSV Completion Pass - 2026-06-15

## Plan

- [x] Inspect `C:\Users\JesusLovesMe\Documents\Question Status.csv` headers and row count.
- [x] Compare each column A BarMatrix question number against `C:\FOC\Workspace\Finished\CQ<question>.md`.
- [x] Mark the status column `complete` when the file exists and `missing` when it does not.
- [x] Verify row counts, complete/missing counts, and mismatch checks after writing.

## Review

- Updated `C:\Users\JesusLovesMe\Documents\Question Status.csv` using `C:\FOC\Workspace\Finished\CQ<question>.md` as the completion rule.
- Total data rows checked: 6,423.
- Rows marked `complete`: 541.
- Rows marked `missing`: 5,882.
- Verification found 0 `complete` rows without files and 0 `missing` rows with files.
- There are 80 `CQ*.md` files in `Finished` whose IDs are not present in this CSV; those files were ignored for row status.

# Question Status Screenshot Lookup - 2026-06-15

## Plan

- [x] Check screenshot IDs `22285`, `16158`, `22343`, `14634`, `16025`, `14642`, and `14711` against `C:\FOC\Workspace\Finished\CQ<question>.md`.
- [x] Confirm whether each ID is present in `C:\Users\JesusLovesMe\Documents\Question Status.csv`.
- [x] Skip CSV update per user follow-up and report statuses in chat.
- [x] Verify final row/status values and document results.

## Review

- Lookup results only per user follow-up; no CSV changes were required after the original file was locked by another process.
- `22285`: complete (`CQ22285.md` exists).
- `16158`: complete (`CQ16158.md` exists).
- `22343`: missing (no `CQ22343.md` found).
- `14634`: complete (`CQ14634.md` exists).
- `16025`: complete (`CQ16025.md` exists).
- `14642`: complete (`CQ14642.md` exists).
- `14711`: complete (`CQ14711.md` exists).

# Civil Procedure Outline Code Mapping - 2026-06-15

## Plan

- [x] Extract the official Civil Procedure outline codes from `C:\FOC\Workspace\OUTLINE_CODES_COMPLETE.md`.
- [x] Inspect `C:\Users\JesusLovesMe\Documents\CivPro_tag.xlsx` headers, row count, and target `Outline_code` column.
- [x] Review each Civil Procedure row's answer explanation and assign the deepest matching official code, using `unsure` when a confident match is not supported.
- [x] Write the completed codes back to `C:\Users\JesusLovesMe\Documents\CivPro_tag.xlsx`.
- [x] Verify workbook read-back: row count, nonblank outline-code coverage, valid-code membership, and `unsure` count.

## Review

- Updated `C:\Users\JesusLovesMe\Documents\CivPro_tag.xlsx` in the existing `Outline_code` column.
- Workbook rows checked: 291.
- Rows with nonblank `Outline_code`: 291.
- Rows with official Civil Procedure codes from `OUTLINE_CODES_COMPLETE.md`: 289.
- Rows marked `unsure`: 2.
- `unsure` rows: row 90 / Q14083 (`Law Applied by Federal Courts`, federal-question remittitur/new-trial standard did not fit the listed Erie/federal-common-law children cleanly); row 187 / Q14177 (`Pretrial Procedures`, prejudgment attachment/provisional remedy did not fit the listed pretrial children cleanly).
- Verification found 0 blank outline-code cells and 0 invalid official-code values.

# BMQ Finished Sync Command - 2026-06-15

## Plan

- [x] Create a PowerShell script that compares `C:\FOC\Workspace\Finished` and `N:\FOC\Workspace\Finished`, skips files present on both sides, and copies missing files in both directions.
- [x] Generate `C:\FOC\Workspace\Finished\complete.csv` with columns `barmatrix_question_number,status`, marking any local `CQ<id>.md` or `CQ<id>plus*.md` as `complete`.
- [x] Add a Codex slash command `/syncbmq` that runs the script.
- [x] Add a global user PowerShell function `syncbmq` for both Windows PowerShell and PowerShell 7.
- [x] Verify script syntax, command/profile installation, sync behavior, and CSV output.

## Review

- Added `C:\FOC\Workspace\Sync-BMQFinished.ps1`.
- Added Codex slash command `C:\Users\JesusLovesMe\.codex\commands\syncbmq.md`.
- Added shared PowerShell function file `C:\Users\JesusLovesMe\Documents\PowerShell\BMQ.Commands.ps1`.
- Updated user all-host profiles for PowerShell 7 and Windows PowerShell to dot-source the shared function file.
- Live run copied 93 files from local to `N:`, copied 5 files from `N:` back to local, and wrote `C:\FOC\Workspace\Finished\complete.csv`.
- Verification: PowerShell 7 parse passed; Windows PowerShell parse passed; `syncbmq` function resolved and executed in both profile families; post-sync comparison found 718 non-CSV files on each side and 0 filename differences.
- Final CSV verification found 717 local `CQ*.md` completion artifacts, 717 CSV rows, and 0 statuses other than `complete`.

# BMQ Complete XLSX Follow-up - 2026-06-15

## Plan

- [x] Update `C:\FOC\Workspace\Sync-BMQFinished.ps1` so the same completion rows write both `complete.csv` and `complete.xlsx`.
- [x] Keep generated ledger files out of the two-way Finished-folder sync comparison.
- [x] Update `/syncbmq` command instructions to report the XLSX output.
- [x] Run the script and verify CSV/XLSX row parity and values.

## Review

- Added `complete.xlsx` generation to `C:\FOC\Workspace\Sync-BMQFinished.ps1` using the same in-memory rows as `complete.csv`.
- Excluded both `complete.csv` and `complete.xlsx` from the two-way file-sync comparison so generated ledgers do not become source artifacts.
- Updated `C:\Users\JesusLovesMe\.codex\commands\syncbmq.md` to report the XLSX output.
- Verification: PowerShell 7 parse passed; Windows PowerShell parse passed; PowerShell 7 live run wrote both files and copied 1 newly found local file to `N:`; Windows PowerShell live run completed with 0 additional copies.
- Final readback verified `complete.csv` and `complete.xlsx` have identical content: 724 rows including the header, 723 completion rows, header `barmatrix_question_number,status`, and last row `22873,complete`.

# BMQ XLSX Numeric ID Correction - 2026-06-15

## Plan

- [x] Patch the XLSX writer so column A data rows are numeric cells, not inline strings.
- [x] Regenerate `C:\FOC\Workspace\Finished\complete.xlsx`.
- [x] Verify the workbook XML stores column A data rows as numeric cells while preserving the same values as `complete.csv`.
- [x] Record the correction pattern in `tasks/lessons.md`.

## Review

- Patched `C:\FOC\Workspace\Sync-BMQFinished.ps1` so `barmatrix_question_number` data rows are written as numeric XLSX cells, while the header and `status` column remain text.
- Regenerated `C:\FOC\Workspace\Finished\complete.xlsx` through the normal sync script.
- Verification: PowerShell 7 parse passed; Windows PowerShell parse passed; PowerShell 7 live run wrote 724 completion rows and copied 1 newly found local file to `N:`; Windows PowerShell live run completed with 0 additional copies.
- Workbook XML readback found 725 rows including the header, values matching `complete.csv`, 724 numeric column-A data cells, 0 column-A data cells with text type, and 724 text `status` cells.
- Post-sync comparison found 725 non-ledger files on local and remote, with 0 filename differences.

# FOC Git Ignore Audit - 2026-06-15

## Plan

- [x] Confirm what the repository currently tracks and which top-level folders are ignored.
- [x] Inventory ignored OpenClaw and Workspace contents without exposing secret values.
- [x] Identify a narrow ignore policy that tracks useful OpenClaw/workspace files while keeping credentials, tokens, logs, caches, and generated bulk output out of git.
- [x] Apply the minimal `.gitignore` fix if the safe policy is clear.
- [x] Verify with `git status`, `git check-ignore`, and staged-candidate inspection before declaring the audit complete.

## Review

- Original root `.gitignore` ignored all of `.openclaw/` and all of `Workspace/`, leaving only `.gitignore`, `README.md`, `bin/openclaw.*`, `package.json`, and `package-lock.json` tracked.
- Confirmed `origin` is `https://github.com/auronpep/FOC.git` and GitHub reports it as `PRIVATE`.
- Found `.openclaw/openclaw.json` contains auth/token/API-key fields, so it must stay ignored along with `.openclaw/credentials/`, `.openclaw/identity/`, `.openclaw/devices/`, logs, caches, npm installs, agent state, plugin databases, and backups.
- Replaced broad `.openclaw/` and `Workspace/` ignores with path-specific ignores. `Workspace` content is now visible to root git while `Workspace/.openclaw/`, `Workspace/.clawhub/`, `Workspace/.codex_spreadsheet_work/`, logs, cache files, and `Workspace/Finished/complete.csv` stay ignored.
- `Workspace` had its own empty nested git repo with zero commits and no remote; root `git add -n Workspace` failed with `Workspace/ does not have a commit checked out`.
- Preserved the empty nested metadata by moving `C:\FOC\Workspace\.git` to `C:\FOC\_preserved-openclaw-workspaces\Workspace.git.empty-20260615-163820`, allowing root git to see workspace files normally.
- Verification: `git add -n` now reports candidates for `.openclaw/gateway.cmd`, `Workspace/PROMPT.md`, `Workspace/QBank/14000.md`, and `Workspace/Finished/CQ14000.md`; `git check-ignore -v` still ignores `.openclaw/openclaw.json`, OpenClaw credential/device files, `Workspace/.openclaw/`, `Workspace/.codex_spreadsheet_work/`, and `Workspace/Finished/complete.csv`.
- Current visible untracked workspace candidates: 8,140 files. Current visible OpenClaw state candidate: `.openclaw/gateway.cmd`.

# Model Setup and MBE Writing Performance Review - 2026-06-17

## Plan

- [x] Extract the configured model IDs from the supplied OpenClaw config attachment.
- [x] Exclude all DeepSeek and Z.ai/GLM model targets from the usable model list.
- [x] Inspect local OpenClaw/CQ performance artifacts for MBE question-writing evidence.
- [x] Rank the strongest remaining models for MBE question writing, separating evidence-backed picks from inferred picks.
- [x] Record review results and caveats.

## Review

- Treated `agents.defaults.models` in the supplied OpenClaw config as the active setup list.
- Excluded all `deepseek/*`, `openrouter/deepseek/*`, `zai/*`, and GLM/Z.ai targets including `nv-glm-5-1/z-ai/glm-5.1`.
- Filtered active setup list contains 63 model targets.
- Provider catalog had no additional non-DeepSeek/non-Z.ai models beyond the active agent defaults.
- Reviewed `OpenClawBatchResults\**\batch-summary.jsonl` and mapped the latest output-linked attempt per current `Finished\CQ*.md` file back to its model.
- Ran isolated current-contract validation for 319 current model-linked outputs with `verify_json.ps1`.
- Current validator pass results:
  - `anthropic/claude-opus-4-8`: 13 passed / 14 validated, 92.9%.
  - `openai/gpt-5.5`: 118 passed / 173 validated, 68.2%; highest successful volume.
  - `openai/gpt-5.4`, `anthropic/claude-opus-4-6`, `anthropic/claude-opus-4-7`: 1 passed / 1 validated each; promising but too little local sample.
  - `openrouter/nex-agi/nex-n2-pro:free`: 9 passed / 24 validated, 37.5%.
  - `minimax/MiniMax-M3`: 5 passed / 16 validated, 31.2%.
  - `xai/grok-build-0.1`: 5 passed / 38 validated, 13.2%.
  - `openrouter/owl-alpha`: 0 passed / 41 validated under the current schema.
- Interpreted pass rate as "current CQ contract pass," not a human legal-quality score. Failures included missing current analyzer provenance fields (`drift_audit`, `transformed_from`, `letter_map`), missing required headings, and malformed JSON/field shape errors such as missing `outline_code`.
- Recommendation for MBE/CQ writing: default to `anthropic/claude-opus-4-8` for highest observed contract reliability, use `openai/gpt-5.5` for high-volume throughput, keep `openai/gpt-5.4` / `anthropic/claude-opus-4-7` / `anthropic/claude-opus-4-6` as promising small-sample candidates, and avoid `openrouter/owl-alpha`, `anthropic/claude-sonnet-4-6`, `openrouter/poolside/laguna-m.1:free`, and unproven NVIDIA/openrouter free models for final MBE question writing until they pass a fresh smoke batch.
