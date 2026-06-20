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
# Atlas Customer-Facing Drilldown - 2026-06-19

## Plan

- [x] Keep `/atlas-v1` as founder/admin-only intake and approval.
- [x] Add a separate paid-user Atlas surface that exposes only included content.
- [x] Reuse Atlas outline codes as the drilldown index: subject -> subtopic -> outline code.
- [x] Let students jump from an outline code into approved questions/answer pages when available.
- [x] Verify the route is auth-gated, noindexed, and does not expose review/rejected/admin controls.

## Review

- Added enrolled-user API routes under `/api/atlas-v1/*`; admin routes remain under `/api/admin/atlas-v1/*`.
- Added paid app routes `/atlas` and `/atlas/questions/[id]/answer`.
- Added dashboard links to the customer Outline Atlas while keeping founder intake on `/atlas-v1`.
- Verification so far: API Atlas/security tests passed, API typecheck passed, app route tests passed, app lint passed, app production build passed.

# Atlas V2 Customer Learning Map - 2026-06-19

## Plan

- [x] Keep `/atlas-v1` as admin/founder intake only and keep `/atlas` paid-user gated.
- [x] Redesign `/atlas` as the customer V2 learning map: subject/subtopic/code drilldown, lesson-first selected-code panel, and component lanes.
- [x] Show active approved questions and answer links; show lessons, traps, drills, flashcards, tensions, and boot-camps as gated lanes until approved/connected.
- [x] Make dashboard left navigation point to the V2 Atlas wording without exposing admin controls.
- [x] Run focused tests, lint/build, and live browser proof before calling this phase complete.

## Review

- API change: enrolled student coverage now returns all Atlas outline nodes with approved question counts, so zero-question codes remain visible for coverage gaps.
- App change: `/atlas` is now the customer V2 learning map with subject/subtopic filters, search, next/previous code walking, selected-code lesson lane, component gates, and approved question links.
- Dashboard copy now describes Atlas as an outline/component learning map; `/atlas-v1` remains admin/founder intake.
- Commits: API `9482c56` (`Expose full Atlas coverage to students`), app `acccf62` (`Redesign customer Atlas as learning map`).
- Verification: API Atlas/security tests passed (13/13), API typecheck passed, API build passed, app dashboard/proxy tests passed (10/10), app focused lint passed, app production build passed.
- Deploy: API deploy stage `deploy-stage-20260619-185008` health check HTTP 200; Vercel production deployment `dpl_BRXyFKNmxpXb8Tgv2M43sbK4kS2P` aliased to `https://barmatrix.app`.
- Live proof: anonymous `/atlas` redirects to sign-in, anonymous Atlas API returns 401, signed-in `/atlas` rendered V2 with 593 outline codes, 415 codes with questions, 1,355 approved questions, component gates, and zero-question `Needs item` codes.

# Atlas V2 Component Lane Wiring - 2026-06-19

## Plan

- [x] Add an enrolled-student Atlas endpoint for one outline code that exposes only approved/active component availability.
- [x] Wire `/atlas` selected-code panel to real component counts instead of placeholder lanes.
- [x] Add a student action to start an approved LeadMe set for the selected outline code when one exists.
- [x] Run focused API/app tests, typecheck/lint/build, then deploy and verify live behavior.

## Review

- API change: added enrolled-student `/api/atlas-v1/codes/:code/components`, returning only active Atlas nodes plus active/published LeadMe items/sets and reviewed/approved debrief elements.
- App change: `/atlas` selected-code panel now loads real component lanes, shows customer-facing lane labels, and can start an approved LeadMe set for the selected outline code.
- Commits: API `25a595e` (`Expose Atlas component lanes to students`), app `648c8c0` (`Wire Atlas component lanes`).
- Verification: API full test suite passed (641/641), API typecheck passed, API build passed, app node tests passed (162/162), app focused lint passed, app production build passed.
- Deploy: API deploy stage `deploy-stage-20260619-190647` health check HTTP 200; Vercel production deployment `dpl_4q96zu1W5Nuf6a12x1qtrphPgh1s` is READY and aliased to `barmatrix.app`.
- Live proof: anonymous component endpoint returns 401, API health returns 200, signed-in `/atlas` renders 593 outline codes / 415 with questions / 1,355 approved questions, and the selected-code panel shows Guided items, Lessons, Drills, Traps, Flashcards, Tensions, Answer debriefs, and Boot camps with no browser console errors.

# Atlas V2 Component-Aware Coverage Filters - 2026-06-19

## Plan

- [x] Extend student Atlas coverage with active LeadMe/debrief component counts per outline code.
- [x] Add customer-facing filters so students can find codes with any lane, questions, lessons, or missing content.
- [x] Show component availability in the outline list without requiring code-by-code clicks.
- [x] Run focused API/app tests, typecheck/lint/build.

## Review

- API coverage now includes `leadme_item_count`, `debrief_element_count`, `leadme_set_count`, and `summary.with_components`.
- App `/atlas` now has filters for `All codes`, `Has any lane`, `Has questions`, `Has lesson`, and `Needs content`, plus list-level component counts.
- Verification: API Atlas/security tests passed (14/14), API typecheck passed, API build passed, app dashboard/proxy tests passed (10/10), app focused lint passed, app production build passed.
- Commits: API `2d77815` (`Add Atlas component-aware coverage`), app `50b9ac2` (`Add Atlas component filters`).
- Deploy: API deploy stage `deploy-stage-20260619-191801` health check HTTP 200; Vercel production deployment `dpl_YYX7yen1CQ1MfRfVwwntwuHdNSbo` is READY and aliased to `barmatrix.app`.
- Live proof: signed-in `/atlas?v=50b9ac2` rendered `Codes with components`, `Has any lane`, `Has questions`, `Has lesson`, and `Needs content`; clicking `Has questions` removed `Needs item` rows and showed live-question codes.

# Atlas V2 Direct Outline Links - 2026-06-19

## Plan

- [x] Let `/atlas?code=########` open directly to a specific outline code.
- [x] Keep selected-code navigation reflected in the URL for shareable/customer support links.
- [x] Add a visible direct-link affordance in the selected-code panel.
- [x] Run focused test/lint/build, deploy production, and verify signed-in live behavior.

## Review

- App change: `/atlas` reads an 8-digit `code` query parameter, selects that Atlas node after coverage loads, updates the URL when students choose/walk codes, and shows a `Direct link` action in the selected-code panel.
- Commit: app `2e5f5a6` (`Add Atlas outline direct links`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `npm run build` passed.
- Deploy: Vercel production deployment `dpl_3ZGcYQ5YKEUCLjrm6QDDdK5JTsSZ` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=2e5f5a6` selected code `93110101`, showed `Direct link`, component filters, `Question bank`, no sign-in/locked gate, and no browser console errors.

# Atlas V2 Outline-Code Drill Starts - 2026-06-20

## Plan

- [x] Add `outline_code` as an enrolled drill-start target, using only included Atlas questions joined to active runnable questions.
- [x] Add one selected-code action in `/atlas` to start a focused drill for that exact code.
- [x] Keep missing-code behavior graceful when no approved questions exist.
- [x] Run focused API/app tests, typecheck/lint/build, then deploy and verify.

## Review

- API change: `/api/drills/start` now accepts `kind: "outline_code"` with an 8-digit `outline_code`, selects only `atlas_questions.status = 'included'` joined to active `questions`, and reuses the existing drill assignment/runner path.
- App change: `/atlas?code=...` selected-code panel now shows `Drill this code`; it starts an outline-code drill for the selected code and gracefully reports missing/runnable gaps.
- Commits: API `4373392` (`Add Atlas outline code drills`), app `883a692` (`Start outline drills from Atlas`).
- Verification: API tests passed (644/644), API typecheck passed, API build passed; app Atlas/dashboard test passed (8/8), app lint passed, app production build passed.
- Deploy: API deploy stage `deploy-stage-20260619-194208` health check HTTP 200; Vercel production deployment `dpl_3zL3LkrzJSLJtqvtQ7gh6hDJcHA3` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=883a692` rendered selected code `93110101`, enabled `Drill this code`, `Direct link`, metrics, and `Question bank` with no console errors. Anonymous `POST /api/drills/start` with `kind=outline_code` returned 401, proving the route is live and still enrollment-gated without creating a drill assignment.

# Atlas V2 Component Preview Lists - 2026-06-20

## Plan

- [x] Extend the enrolled Atlas component endpoint with approved, student-safe item/debrief previews for one outline code.
- [x] Keep all approval/status gates intact: active Atlas node, active/published LeadMe, reviewed/approved debrief elements only.
- [x] Render concrete connected components in the selected-code customer Atlas panel without adding a new route family.
- [x] Run focused API/app tests, typecheck/lint/build, then deploy and verify live signed-in behavior.

## Review

- API change: `/api/atlas-v1/codes/:code/components` now keeps existing count fields and adds capped approved previews: active/published LeadMe item previews plus reviewed/approved debrief element previews.
- App change: `/atlas?code=...` selected-code panel now includes a `Connected previews` section under Components, showing preview rows when approved content exists and a clear empty state while the component database remains approval-gated.
- Commits: API `4a4e06c` (`Expose Atlas component previews`), app `34ef123` (`Show Atlas component previews`).
- Verification: API tests passed (644/644), API typecheck passed, API build passed; app Atlas/dashboard test passed (8/8), app lint passed, app production build passed.
- Deploy: API deploy stage `deploy-stage-20260619-195702` health check HTTP 200; Vercel production deployment `dpl_4xQQUNEVHUsPMYsjx4wQ8wFz7S1S` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=34ef123` rendered selected code `93110101`, `Connected previews`, `0 items`, empty preview state, `Drill this code`, `Direct link`, `LeadMe lesson`, four `Study answer` links, and no browser console errors. Anonymous `GET /api/atlas-v1/codes/93110101/components` returned 401.

# Atlas V2 Outline Lesson Shell - 2026-06-20

## Plan

- [x] Add a visible selected-code `Study this code` action without creating a duplicate Atlas route.
- [x] Turn the selected-code lesson area into an outline lesson shell every code can use, even before a LeadMe set is approved.
- [x] Keep substantive legal lesson content gated to approved LeadMe/doctrinal content; do not invent doctrine from the outline label.
- [x] Run focused app test, lint/build, deploy, and verify signed-in production behavior.

## Review

- App change: `/atlas?code=...` now has a selected-code `Study this code` action and an anchored `Outline lesson` shell, with code context, approved-question practice count, and the existing LeadMe approval gate.
- Commit: app `81e591f` (`Add Atlas outline lesson shell`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: app Atlas/dashboard test passed (8/8), app lint passed, app production build passed.
- Deploy: Vercel production deployment `dpl_6Upi5hNiMCLx5FfCsjTNmHC8AsTd` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=81e591f#atlas-code-lesson` rendered `Study this code`, `Outline lesson`, code row `93110101 / Appealability and Review`, practice row `4 approved questions`, LeadMe approval gate, component gates, four `Study answer` links, and no browser console errors.

# Global Codex Plugin/Skill Install - 2026-06-19

## Plan

- [x] Verify current Codex plugin CLI and installed marketplace state.
- [x] Inspect each requested GitHub source for plugin/skill layout.
- [x] Install what is installable globally for Codex with the smallest durable setup.
- [x] Validate Codex sees the installed plugins/skills and record results.

## Review

- Started from `codex-cli 0.141.0`.
- Existing Codex marketplaces before this work: `pony-local`, `luke-local`, `openai-primary-runtime`, `openai-bundled`, and `openai-curated`.
- The requested GitHub sources were Agent Skills repos, not ready-to-add Codex marketplaces, so the install used a thin local marketplace wrapper at `C:\Users\JesusLovesMe\.codex\local-marketplaces\requested-design-skills`.
- Installed and enabled: `vercel-agent-skills@requested-design-skills` (`f8a72b9`), `frontend-design@requested-design-skills` (`0fd6da0`), `ui-skills@requested-design-skills` (`ec9ea2b`), `taste-skill@requested-design-skills` (`5285855`), and `design-craft@requested-design-skills` (`d2c5b72`).
- `frontend-design` copied only the linked skill path from `vadimcomanescu/codex-skills`; the other four sources copied their repo skill folders into the local marketplace.
- Verification: `codex plugin list --marketplace requested-design-skills` reports all five plugins as `installed, enabled`; installed cache contains 32 total `SKILL.md` files across the five plugins; the local marketplace copy contains no `.git` directories.

# Atlas V2 Walk Position Indicator - 2026-06-20

## Plan

- [x] Add a selected-code Atlas walk position meter using the existing ordered outline-code list.
- [x] Keep the change customer-facing and read-only: no API/database change and no approval-gate change.
- [x] Run focused app test, lint/build, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas?code=...` selected-code panel now shows an `Atlas walk` position meter, e.g. `180 / 593`, using the existing ordered outline-code list.
- Commit: app `2214714` (`Add Atlas walk progress indicator`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_3rNoS7CLetohjBLEVUvBcRQHNdJr` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=2214714#atlas-code-lesson` rendered `ATLAS WALK 180 / 593`, selected code `93110101`, `Study this code`, `Outline lesson`, LeadMe approval gate, `Question bank`, four `Study answer` links, and no browser console errors.

# Atlas V2 Practice-Ready Shortcut - 2026-06-20

## Plan

- [x] Reframe the existing questions filter as a customer-facing `Practice ready` shortcut.
- [x] Make the shortcut jump the selected-code panel to the first matching code in the current subject/subtopic scope.
- [x] Keep the change app-only, using existing approved question counts; no new backend schema.
- [x] Run focused app test, lint/build, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas` now labels the question-count filter and metric as `Practice ready`, and clicking that shortcut selects the first matching ready code in the current subject/subtopic scope.
- Commit: app `715de14` (`Add Atlas practice-ready shortcut`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_52CznK9aiQJJagUcJfNH97hkyNZL` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=715de14#atlas-code-lesson` rendered `Practice ready` and `Practice-ready codes`; clicking `Practice ready` selected `93110100`, changed the URL to `?code=93110100&v=715de14`, showed only ready badges in the visible list, and had no browser console errors.

# Atlas V2 Subtopic Practice Density - 2026-06-20

## Plan

- [x] Show ready-code and question counts in the subtopic rail using existing Atlas coverage data.
- [x] Add the same practice density to each subtopic section header for scanability.
- [x] Keep the change app-only; no new user-performance or weakness API.
- [x] Run focused app test, lint/build, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas` subtopic rail now shows ready-code and approved-question density for each subtopic, and each subtopic section header repeats `codes / ready / questions` for scanability.
- Commit: app `90461a5` (`Show Atlas subtopic practice density`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_mzBgmzaJ3sJy6orLdqHwDDHEXaKq` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=90461a5#atlas-code-lesson` rendered rail examples such as `All subtopics / 415 READY / 1355 QUESTIONS` and section headers such as `Appealability and Review / 5 CODES / 4 READY / 13 QUESTIONS`; clicking `Motions` selected `92080000`, showed `Motions / 13 CODES / 6 READY / 13 QUESTIONS`, and had no browser console errors.

# Atlas V2 Practice Walk Controls - 2026-06-20

## Plan

- [x] Add selected-code practice walk controls over existing approved-question counts.
- [x] Let students jump previous/next among practice-ready outline codes without a new backend.
- [x] Run focused app test, lint/build, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas?code=...` selected-code panel now has `Practice walk` controls with previous/next jumps among codes that already have approved questions.
- Commit: app `a5812ef` (`Add Atlas practice walk controls`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_8jFZbkmWe6U64Ls7zRu2g2gEj9p4` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=a5812ef#atlas-code-lesson` rendered `Practice walk`, `Prev ready`, `Next ready`, selected code `93110101`, `4 approved questions here.`, `Outline lesson`, and no browser console errors. Clicking `Next ready` changed the URL to `?code=93110200&v=a5812ef#atlas-code-lesson`, selected `93110200 / Finality of Judgment`, showed `1 approved question here.`, and had no browser console errors.

# Atlas V2 Weak-Section Drilldown - 2026-06-20

## Plan

- [x] Add a customer-facing weak-section drilldown control using existing subject/subtopic scope and approved-question counts.
- [x] Keep it honest: support user-known weak areas without pretending we have per-code weakness telemetry.
- [x] Run focused app test, lint/build, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas` now has a `Weak-section drilldown` panel that follows the selected subject/subtopic scope, shows ready-code/question counts, and lets the learner show ready codes or jump to the first practice-ready outline code in that weak area.
- Commit: app `1682a76` (`Add Atlas weak-section drilldown`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_8igX3dPnTRXbS1TbMNhyJAUCyYzs` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=1682a76#atlas-code-lesson` rendered `Weak-section drilldown`, `Full Atlas`, `415 ready codes / 1355 questions`, `Show ready codes`, and `Jump to first ready` with no sign-in gate or console errors. Clicking `Show ready codes` selected `93110100`. Selecting `Motions` updated the drilldown to `6 ready codes / 13 questions`; clicking `Jump to first ready` selected `92080101 / Motion for judgment on the pleadings`, showed `1 approved question here.`, and had no browser console errors.

# Atlas V2 Answer Case Study Modules - 2026-06-20

## Plan

- [x] Render approved case-study modules on Atlas answer pages when the API returns them.
- [x] Omit missing modules and keep detours hidden until server-side student filtering is wired.
- [x] Run focused app test, lint/build, deploy production, and verify signed-in production behavior.

## Review

- App change: Atlas answer pages now render approved non-empty `case_study_modules` returned by the API, while omitted modules stay absent and `detours` remain hidden until server-side student filtering is wired.
- Commit: app `8883ea8` (`Render Atlas answer case study modules`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_Htxf6bgvtD7xnrP93fGqwSt7Vdey` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=8883ea8#atlas-code-lesson` rendered 593 outline codes, 415 practice-ready codes, 1355 approved questions, and four `Study answer` links with no console errors. Opening `https://barmatrix.app/atlas/questions/14010_bible_map_copyright_new_trial/answer?v=8883ea8` rendered the question, correct answer, `Approved answer modules`, and the case-study section without a sign-in gate or console errors.

# Atlas V2 Answer-to-Code Return Path - 2026-06-20

## Plan

- [x] Add a direct customer action from an Atlas answer page back to that exact outline-code lesson.
- [x] Keep this app-only: no new route, API field, or component schema.
- [x] Run focused app test, lint/build, deploy production, and verify signed-in production behavior.

## Review

- App change: Atlas answer pages now show `Study this outline code`, linking back to `/atlas?code=<outline_code>#atlas-code-lesson` for the answered question's outline code.
- App fix: Atlas direct-code selection now reads the requested code after the client loads coverage data, so direct links and answer-return links select the requested code instead of falling back to the first node.
- Commits: app `1675428` (`Link Atlas answers back to outline code`) and `88f7ed4` (`Respect Atlas direct code links`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_9fdQyv4ShUWWyZoPwQPQSfpS3Six` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas/questions/14010_bible_map_copyright_new_trial/answer?v=88f7ed4` rendered the question, correct answer, and `Study this outline code` with href `/atlas?code=93110101#atlas-code-lesson`. Clicking it opened `https://barmatrix.app/atlas?code=93110101#atlas-code-lesson`, selected `93110101 / Final judgment rule`, showed `Outline lesson`, `Question bank`, four approved questions, and no sign-in gate or browser console errors.

# Atlas V2 Filtered Answer Detours - 2026-06-20

## Plan

- [x] Add backend student-safe detour extraction and target counts for outline-code and trap detours.
- [x] Render filtered answer detours on Atlas answer pages while keeping raw case-study detour specs hidden.
- [x] Run focused API/app checks, deploy API/app, and verify signed-in production behavior.

## Review

- API change: Atlas answer responses now include a filtered `detours` array built from raw case-study specs only after server-side student filtering and target-count checks.
- API detours currently support authoritative student counts for `outline_code` targets in `atlas_questions` and `trap` targets through the existing trap query helper. Unsupported/red-zone specs stay hidden until they have a dimension-aware contract.
- App change: Atlas answer pages render `Related study detours` only from the filtered API `detours` array, while raw `case_study_modules.detours` stay hidden.
- Commits: API `589d83f` (`Filter Atlas answer detours`) pushed to private `auronpep/barmatrix-api` branch `codex/api-live-hardening-2026-06-19`; app `95f1c6e` (`Render Atlas answer detours`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: API `npx tsx --test src/lib/atlas-v1.test.ts` passed (10/10), `npm run typecheck` passed, `npm run build` passed, and `git diff --check` passed. App `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Deploy: API atomic Hostinger deploy stage `deploy-stage-20260619-212715` passed health check HTTP 200. Vercel production deployment `dpl_BzJoWQ1WAYbXJSHUqKvqdCyHHayw` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110101&v=95f1c6e#atlas-code-lesson` rendered the customer Atlas with `593` outline codes, `415` practice-ready codes, `1355` approved questions, and no console errors. Signed-in `https://barmatrix.app/atlas/questions/14010_bible_map_copyright_new_trial/answer?v=95f1c6e` rendered the question, correct answer, `Study this outline code`, approved answer modules, and no sign-in/locked gate or console errors. This sample has no student-visible detours, so the detour panel correctly stayed absent instead of exposing raw specs. Clicking `Study this outline code` returned to `/atlas?code=93110101#atlas-code-lesson`.

# Atlas V2 Resume Walk - 2026-06-20

## Plan

- [x] Remember the last selected Atlas outline code on this device.
- [x] Prefer direct `?code=` links first, then resume the saved code when opening `/atlas`.
- [x] Show a small customer-facing saved-position cue without adding a progress database.
- [x] Run focused app checks, deploy, and verify signed-in production behavior.

## Review

- App change: `/atlas` now saves the selected outline code in device-local storage, prefers direct `?code=` links first, then resumes the saved code when opening `/atlas` without a code.
- UI change: the selected-code panel now shows `Saved on this device for next time`, keeping the resume behavior visible without adding a progress database.
- Commit: app `6c7b4e6` (`Remember Atlas walk position`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Deploy: Vercel production deployment `dpl_Hr7FRww4GHoQXNavesCm6ZgUhXi8` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110200&v=6c7b4e6#atlas-code-lesson` selected `93110200`; opening `https://barmatrix.app/atlas?v=6c7b4e6` without a `code` resumed `93110200`, showed `Saved on this device for next time`, `Atlas walk 181 / 593`, `Practice walk 3 / 415`, `Outline lesson`, component approval gates, and no browser console errors.

# Atlas V2 Per-Code Study Sequence - 2026-06-20

## Plan

- [x] Add a customer-facing study sequence inside each selected outline-code lesson.
- [x] Keep the sequence non-doctrinal and approval-gated: use the outline label, approved question counts, approved component previews, and explicit gates only.
- [x] Run focused app test, lint/build, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas?code=...#atlas-code-lesson` now shows a four-step per-code study sequence: anchor this code, work approved questions, open approved support, and follow approved detours.
- Approval gates remain explicit when approved questions/components/detours are missing; no legal doctrine is generated from the outline label.
- Commit: app `4f2d0c3` (`Add Atlas per-code study sequence`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_EHo2u849dTe1xE78cBrUzB6Fchtz` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110200&v=4f2d0c3#atlas-code-lesson` rendered 593 outline codes, 415 practice-ready codes, 1355 approved questions, selected `93110200 / Finality of Judgment`, `Study sequence`, all four sequence steps, LeadMe/component approval gates, `Question bank`, `Study answer`, and no browser console errors.

# Atlas V2 Lesson Question Action - 2026-06-20

## Plan

- [x] Add a direct approved-question action inside the per-code study sequence.
- [x] Keep it app-only and gated by the already loaded approved question list.
- [x] Run focused app checks, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas?code=...#atlas-code-lesson` now shows `Open first answer` inside the `Work approved questions` step once the approved question list is loaded, with a `View question bank` anchor fallback while the list is still loading.
- Commit: app `c188314` (`Add Atlas first answer action`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_EF2sV5ontmFJQm5pTo4TtBCdo76S` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110200&v=c188314#atlas-code-lesson` rendered `Open first answer` with href `/atlas/questions/19169_wedding_vendor_no_appeal/answer`, the real `Question bank` anchor, `Study answer`, and no console errors. Clicking the visible `Open first answer` link opened `https://barmatrix.app/atlas/questions/19169_wedding_vendor_no_appeal/answer`, which rendered `19169_wedding_vendor_no_appeal`, `93110200 - Finality of Judgment`, the question text, and no console errors.

# Atlas V2 Studied Code Progress - 2026-06-20

## Plan

- [x] Add device-local studied-code tracking to the customer Atlas without adding a new progress database.
- [x] Show studied progress and next-unstudied navigation inside the selected outline-code panel.
- [x] Keep all question/component lanes approval-gated and unchanged.
- [x] Run focused app checks, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas` now tracks studied outline codes in device-local storage and shows a selected-code studied progress panel with `Mark studied`, `Marked studied`, and `Next unstudied` controls.
- The progress state is app-only/local-only for now; no new database, API, question, or component approval surface was added.
- Commit: app `85143f0` (`Track Atlas studied codes locally`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_WurCUGzfj1vRx7AHdm6prL9eQAMh` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110200&v=85143f0#atlas-code-lesson` rendered the customer Atlas without sign-in or paid-gate blocks. Direct locators confirmed `Studied on this device`, `Mark studied`, `Next unstudied`, and `Study sequence`; clicking `Mark studied` changed it to `Marked studied`; clicking `Next unstudied` advanced to `https://barmatrix.app/atlas?code=93110300&v=85143f0#atlas-code-lesson`; browser console error count stayed `0`.

# Atlas V2 Scoped Study Walk - 2026-06-20

## Plan

- [x] Keep `Next unstudied` inside the active subject/subtopic scope when a learner is drilling a weak section.
- [x] Show studied progress for the active scope without adding a backend progress model.
- [x] Run focused app checks, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas` studied progress now follows the active subject/subtopic scope. When a learner filters to a weak section, `Next unstudied` stays within that scope instead of jumping across the full outline.
- The change is still app-only and device-local; no new database/API progress model or approval surface was added.
- Commit: app `08a724f` (`Scope Atlas studied walk`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_F4Gre9X5MuCXWnRx24NmnjoZTFYD` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=31010101&v=08a724f#atlas-code-lesson` rendered `Scope: Full Atlas` and no console errors. Selecting `Evidence` changed the scope, direct locators confirmed `Scope: Evidence`, `Studied on this device`, `Next unstudied`, and `Study sequence`; clicking `Next unstudied` advanced from `33040000` to `33040100` while staying in Evidence; browser console error count stayed `0`.

# Atlas V2 Answer Return Actions - 2026-06-20

## Plan

- [x] Add a stable answer-page return action to the selected outline code's approved question bank.
- [x] Keep the existing outline lesson return and filtered detour behavior unchanged.
- [x] Run focused app checks, deploy production, and verify signed-in production behavior.

## Review

- App change: Atlas answer pages now show `Review code questions`, linking directly back to `/atlas?code=<outline_code>#atlas-code-questions` beside the existing `Study this outline code` return.
- Existing lesson return and filtered detour behavior are unchanged; no database/API changes.
- Commit: app `7acc0d8` (`Add Atlas answer question-bank return`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_2QY4x9K7cB79fRA4TAHpGi8NNTH4` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas/questions/19169_wedding_vendor_no_appeal/answer?v=7acc0d8` rendered `Study this outline code` and `Review code questions`; `Review code questions` had href `/atlas?code=93110200#atlas-code-questions`. Clicking it opened `https://barmatrix.app/atlas?code=93110200#atlas-code-questions`, where `Question bank` and `Study answer` rendered for `93110200`, with no sign-in/locked gate and browser console error count `0`.

# Atlas V2 Weak-Section Walk Entry - 2026-06-20

## Plan

- [x] Add a direct start/resume action to the weak-section drilldown box.
- [x] Reuse existing subject/subtopic scope and device-local studied state; do not add a backend progress model.
- [x] Run focused app checks, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas` weak-section drilldown now shows a scoped `Start walk`, `Continue walk`, or `Restart walk` action that jumps to the next unstudied outline code in the active subject/subtopic scope, falling back to the first scoped code when the scope is already complete.
- The change is app-only and device-local; no new database/API progress model, content lane, question, or approval surface was added.
- Commit: app `a62df43` (`Add Atlas scoped walk action`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_FbjqgiBrUxkkp9bVFktM2AS82nUp` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110200&v=a62df43` rendered the Atlas customer page with a unique `Continue walk` scoped-walk button. Clicking it advanced to `https://barmatrix.app/atlas?code=93110300&v=a62df43`; the page then rendered `Weak-section drilldown`, `Outline lesson`, `Study sequence`, `Question bank`, `Study this code`, and three `Study answer` links, with no sign-in/locked gate and browser console error count `0`.

# Atlas V2 Selected-Code Scope Focus - 2026-06-20

## Plan

- [x] Add a selected-code action that turns any direct code link into a weak-section drilldown scope.
- [x] Reuse existing subject/subtopic filters and device-local studied state; do not add a backend progress model.
- [x] Run focused app checks, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas?code=...` selected-code panels now include `Focus this subtopic`, which applies the selected code's subject and subtopic filters so the customer can drill the weak section around that code.
- The change is app-only and device-local; no new database/API progress model, content lane, question, or approval surface was added.
- Commit: app `f010f84` (`Add Atlas subtopic focus action`) pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_C8NBKX7nbb2LUpHkgLP4LYyqDbnw` was forced without cache, is READY, and is aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110200&v=dpl_C8NBKX7nbb2LUpHkgLP4LYyqDbnw` rendered `Focus this subtopic`; clicking it switched the active filters from `All subjects` / `All subtopics` to `Civil Procedure` / `Appealability and Review` and narrowed the visible code list to the five codes in that subtopic (`93110000`, `93110100`, `93110101`, `93110200`, `93110300`).

# Atlas V2 Lesson Position Links - 2026-06-20

## Plan

- [x] Add selected-code lesson context that shows where the outline item sits in the full Atlas walk.
- [x] Add prior/next lesson targets without creating a new route, API, database, or approval surface.
- [x] Run focused app checks, deploy production, and verify signed-in production behavior.

## Review

- App change: `/atlas?code=...#atlas-code-lesson` now shows `Outline position` inside the lesson shell with subject, subtopic, and full-walk position, plus native `Prior lesson` and `Next lesson` anchors.
- The final version uses plain anchors to the existing direct-code route instead of extra client state, keeping same-route navigation simple.
- Commits: app `91dd645` added the position block, `ae32928` tried stateful jumps, and final app commit `72b7c74` (`Use native Atlas lesson jumps`) replaced them with native anchors; all were pushed to private `auronpep/barmatrix-app` `main`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `npm run lint` passed, `git diff --check` passed, and `npm run build` passed.
- Deploy: Vercel production deployment `dpl_BVCxuNycW8Hgt5StzQEN1seJ8psn` is READY and aliased to `https://barmatrix.app`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110200&v=72b7c74#atlas-code-lesson` rendered `Outline position`, `93110200 / Appealability and Review / 181 of 593`, and anchors `Prior lesson` -> `/atlas?code=93110101#atlas-code-lesson` and `Next lesson` -> `/atlas?code=93110300#atlas-code-lesson`. Directly opening the next target rendered `93110300 / Scope of Review / 182 of 593`, and browser console error count stayed `0`.

# Atlas V2 Component Index Links - 2026-06-20

## Plan

- [x] Add a compact in-lesson component index for the selected outline code.
- [x] Reuse existing approved question/component counts and anchors; add no new API, database, route, or approval lane.
- [x] Run focused app checks, deploy production, and verify signed-in production behavior.

## Review

- App commit: `7bf505f Add Atlas component index links` in `C:\barmatrix-app`.
- Production deploy: manual Vercel deploy `dpl_FtB9hJqWM3x1in664x5EoFrnemnz` reached ready; final alias check shows `https://barmatrix.app` currently resolves to ready production deployment `dpl_3CDpPw9QTZjRiDg6jQYAhaXnwpPK`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts`, `git diff --check -- app/atlas/atlas-client.tsx tests/ambassador-dashboard-entry.test.ts`, `npm run lint`, and `npm run build` passed.
- Live browser proof: `https://barmatrix.app/atlas?code=93110200&v=7bf505f#atlas-code-lesson` shows `Component index` with native links to `#atlas-code-questions`, `#atlas-code-components`, and `#atlas-code-leadme`; signed-in `/dashboard` shows the `Outline Atlas` sidebar link and Atlas card; no browser console errors were captured.

# Atlas V2 Code Footprint Rows - 2026-06-20

## Plan

- [x] Add a compact approved-lane footprint to each outline-code row.
- [x] Use existing coverage fields only; add no API, database, or component-type schema expansion.
- [x] Run focused app checks, deploy production, and verify signed-in live behavior.

## Review

- App commit: `5a87871 Show Atlas code lane footprints` in `C:\barmatrix-app`.
- Production deploy: manual Vercel deploy `dpl_3xwZhUQsQYudTh7rD1Qc6JWaXiL7` reached ready; final alias check shows `https://barmatrix.app` currently resolves to ready production deployment `dpl_CpsqGLuxbRjXyAgTCMzB9Ranx5si`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts`, `git diff --check -- app/atlas/atlas-client.tsx tests/ambassador-dashboard-entry.test.ts`, `npm run lint`, and `npm run build` passed.
- Live browser proof: `https://barmatrix.app/atlas?code=93110200&v=5a87871` loads the signed-in Atlas, selected code `93110200`, lesson section, and outline rows with lane footprints like `3 questions`; dashboard `/dashboard?v=5a87871` shows the `Outline Atlas` left-nav link and Atlas card; no browser console errors were captured.

# Atlas V2 Saved Code Resume - 2026-06-20

## Plan

- [x] Surface the locally saved Atlas code as a resume/return control inside the outline walk.
- [x] Reuse existing `LAST_ATLAS_CODE_KEY`; add no API, database, or auth changes.
- [x] Run focused app checks, deploy production, and verify signed-in live behavior.

## Review

- App commit: `bb2bb26 Add Atlas saved code resume` in `C:\barmatrix-app`.
- Production deploy: manual Vercel deploy `dpl_2nTxvBDZnh7MmNez1NRzJUaJZHyF` reached ready; final alias check shows `https://barmatrix.app` currently resolves to ready production deployment `dpl_8UUxv2w2DM6SZ5S1BLRTADpBjgte`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts`, `git diff --check -- app/atlas/atlas-client.tsx tests/ambassador-dashboard-entry.test.ts`, `npm run lint`, and `npm run build` passed.
- Live browser proof: opening `https://barmatrix.app/atlas?code=93110200&v=bb2bb26`, then `https://barmatrix.app/atlas?v=bb2bb26`, resumed selected code `93110200` and showed `Saved code on this device: 93110200`; signed-in `/dashboard?v=bb2bb26` still shows the `Outline Atlas` left-nav link and Atlas card; no browser console errors were captured.

# Atlas V2 Scope Readiness Meter - 2026-06-20

## Plan

- [x] Add a weak-section scope meter showing studied, practice-ready, component-ready, and missing-code counts.
- [x] Reuse existing Atlas coverage fields and device-local studied state; do not add a database/API/content lane.
- [x] Run focused app checks, deploy production, and verify signed-in live behavior.

## Review

- App commits: `bd96262` (`Add Atlas scope readiness meter`) and `9def184` (`Fix Atlas scope meter layout`) pushed to private `auronpep/barmatrix-app` `main`.
- Production deploy: Vercel deployment `dpl_EPUbjyGpo3XuMddxjZEFyr8PSaWy` reached READY and is aliased to `https://barmatrix.app`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `git diff --check -- app/atlas/atlas-client.tsx tests/ambassador-dashboard-entry.test.ts` passed, `npm run lint` passed, and `npm run build` passed.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110200&v=9def184` rendered visible weak-section scope counts (`Studied`, `Practice`, `Components`, `No lane`) with `Weak-section drilldown`; browser console error count was `0`.
- Dashboard proof: signed-in `https://barmatrix.app/dashboard?v=9def184` still rendered the `Outline Atlas` left-nav link and Atlas dashboard card; browser console error count was `0`.

# Atlas V2 Selected Subtopic Rail - 2026-06-20

## Plan

- [x] Add selected-code sibling navigation for the current subtopic.
- [x] Reuse existing coverage nodes and lane footprints; add no API/database/content lane.
- [x] Run focused app checks, deploy production, and verify signed-in live behavior.

## Review

- App commit: `ada9b73` (`Add Atlas selected subtopic rail`) pushed to private `auronpep/barmatrix-app` `main`.
- Production deploy: manual Vercel deployment `dpl_8nG2wAN68XsGHqvebUDVkLjVAJFB` reached READY; final alias check shows `https://barmatrix.app` currently resolves to ready production deployment `dpl_Ht6m3Wxn8rpixXtmHq5x1XbVSmQ6`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `git diff --check -- app/atlas/atlas-client.tsx tests/ambassador-dashboard-entry.test.ts` passed, `npm run lint` passed, and `npm run build` passed.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110200&v=ada9b73` rendered `This subtopic` with five Appealability and Review codes (`93110000`, `93110100`, `93110101`, `93110200`, `93110300`) and each row's lane footprint.
- Interaction proof: clicking the fifth rail item changed the live selected code to `https://barmatrix.app/atlas?code=93110300&v=ada9b73`, rendered `Scope of Review`, and kept the same subtopic rail visible; browser console error count was `0`.
- Dashboard proof: signed-in `https://barmatrix.app/dashboard?v=ada9b73` still rendered the `Outline Atlas` left-nav link and Atlas dashboard card; browser console error count was `0`.

# Atlas V2 Subtopic Step Controls - 2026-06-20

## Plan

- [x] Add selected-code previous/next controls inside the current subtopic.
- [x] Reuse existing Atlas coverage nodes and query-param selection; add no API/database/content lane.
- [x] Run focused app checks, deploy production, and verify live behavior.

## Review

- App commit: `9781f3d` (`Add Atlas subtopic step controls`) pushed to private `auronpep/barmatrix-app` `main`.
- Production deploy: manual Vercel deployment `dpl_G8rMQpPGozyRmpRweUCJbBpZvqmU` reached READY; final alias check shows `https://barmatrix.app` currently resolves to ready production deployment `dpl_En9yWrpTR5urG2DTDcHTJnnyWqxV`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `git diff --check -- app/atlas/atlas-client.tsx tests/ambassador-dashboard-entry.test.ts` passed, `npm run lint` passed, and `npm run build` passed.
- Live Atlas proof: `https://barmatrix.app/atlas?code=93110200&v=9781f3d` rendered the Atlas page, selected code `93110200`, `Appealability and Review`, subtopic position `4 / 5`, exactly one enabled `Next in subtopic` button, and exactly one `Prev in subtopic` button.
- Interaction proof: clicking `Next in subtopic` changed the live URL to `https://barmatrix.app/atlas?code=93110300&v=9781f3d`, rendered code `93110300`, `Scope of Review`, and subtopic position `5 / 5`; browser console error count was `0`.
- Dashboard note: a fresh `https://barmatrix.app/dashboard?v=9781f3d` tab rendered the public shell in the current Chrome session, so authenticated dashboard proof was not captured in this pass; the source-level route test still asserts `/atlas` is wired into the paid dashboard navigation and card.

# Atlas V2 Lesson Checkpoint - 2026-06-20

## Plan

- [x] Add an in-lesson studied checkpoint for the selected outline code.
- [x] Reuse existing device-local studied state and next-unstudied walk logic; add no API/database/content lane.
- [x] Run focused app checks, deploy production, and verify live behavior.

## Review

- App commit: `a078b8d` (`Add Atlas lesson checkpoint`) pushed to private `auronpep/barmatrix-app` `main`.
- Follow-up repair commit: `b46e823` (`Fix Atlas selected code actions`) pushed to private `auronpep/barmatrix-app` `main` after live review found sidebar action issues.
- Production deploy: manual Vercel deployment `dpl_3Wsiw1csYwebrjyJNFyp4fKV5sAi` reached READY; final alias check shows `https://barmatrix.app` currently resolves to ready production deployment `dpl_7yY1xK1qpA3qk11QxU6nFXd6xkBi`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `git diff --check -- app/atlas/atlas-client.tsx tests/ambassador-dashboard-entry.test.ts` passed, `npm run lint` passed, and `npm run build` passed.
- Live repair proof: `https://barmatrix.app/atlas?code=93110100&v=b46e823` rendered selected code `93110100`, the 5-question count, `Copy link`, visible `Study lesson`, and `Open code questions`.
- Interaction proof: clicking `Copy link` changed the control to `Link copied`; clicking `Open code questions` changed the URL hash to `#atlas-code-questions`; the old `Direct link`, unreadable `Study this code`, `Drill this code`, and `No runnable questions matched this outline code yet` surfaces were absent; browser console error count was `0`.

# Atlas V2 Selected Lane Snapshot - 2026-06-20

## Plan

- [x] Add a compact lane snapshot to the selected-code panel.
- [x] Reuse existing Atlas question/component counts; add no API, database, or approval-lane change.
- [x] Run focused app checks and record proof.

## Review

- App change in progress: the selected-code panel now shows a compact `Selected code lanes` snapshot for questions, lessons, drills, traps, tensions, and debriefs.
- Verification so far: `node --test tests\ambassador-dashboard-entry.test.ts`, `git diff --check`, `npm run lint`, and `npm run build` passed after removing generated `C:\barmatrix-app\.next` to recover disk space.

# Atlas V2 Question Practice Launch Fix - 2026-06-20

## Plan

- [x] Trace why Atlas question controls do not open a runnable question.
- [x] Add the smallest real runnable route for an Atlas question.
- [x] Point Atlas primary question actions at the runnable route while preserving answer-debrief links.
- [x] Run focused tests, lint, and production build.

## Review

- Root cause: Atlas linked to the answer debrief and in-page question list, but had no customer path that mounted the shared `QuestionRunner` for an approved Atlas question.
- App change in progress: added `/atlas/questions/[id]/practice` using the shared `QuestionRunner`, changed selected-code primary action to `Do first question`, and added `Do question` beside each listed Atlas question.
- Verification so far: `node --test tests\ambassador-dashboard-entry.test.ts`, `git diff --check`, `npm run lint`, and `npm run build` passed; the build route table includes `/atlas/questions/[id]/practice`.
- Live proof found a second root cause: Atlas question IDs such as `14001_christmas_stage_review` are not main-bank UUIDs, so the shared `QuestionRunner` loaded `/api/questions/:id` and failed with API 400 `invalid question id`.
- Final app patch: replaced the practice page with an Atlas-native runner that loads `getAtlasAnswer`, renders A-D choices, supports local submit/reveal, and links into the approved answer debrief.
- App commit: `2e9bdc2` (`Fix Atlas practice runner`) pushed to private `auronpep/barmatrix-app` `main`.
- Production deploy: manual Vercel deployment `dpl_8gfXPWB6LidCnBkK17Yr5nFDECSt` reached READY and is aliased to `https://barmatrix.app`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `git diff --check`, `npm run lint`, local `npm run build`, and Vercel production build passed.
- Live proof: from `https://barmatrix.app/atlas`, clicking `Do first question` opened `https://barmatrix.app/atlas/questions/14001_christmas_stage_review/practice`; the page rendered code `93110100`, four answer choices, enabled `Submit answer` only after a choice, and after submit revealed `Not quite`, `Correct answer: B`, the minimum explanation, and `Study answer debrief`.

# Atlas V2 In-Code Question Walk - 2026-06-20

## Plan

- [x] Reuse the existing Atlas question list API from the practice page.
- [x] Show the selected question's position within its outline code.
- [x] After submit, add previous/next question links for the same outline code.
- [x] Run focused app checks, deploy production, and verify live behavior.

## Review

- App commit: `b7db6f7` (`Add Atlas practice question walk`) pushed to private `auronpep/barmatrix-app` `main`.
- Production deploy: manual Vercel deployment `dpl_EfpPviTJhzgEt17SVKmW8Q8EMzVV` reached READY and is aliased to `https://barmatrix.app`.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8), `git diff --check`, `npm run lint`, local `npm run build`, and Vercel production build passed.
- Live proof: signed-in `https://barmatrix.app/atlas/questions/14001_christmas_stage_review/practice?v=b7db6f7` rendered `QUESTION 1 / 5`; after selecting A and submitting, it revealed the answer and a `Next question` link to `/atlas/questions/18182_bookstore_mandamus/practice`.
- Navigation proof: clicking `Next question` opened `https://barmatrix.app/atlas/questions/18182_bookstore_mandamus/practice`, rendered `QUESTION 2 / 5`, four choices, and a disabled `Submit answer` until selection.

# Atlas V2 Lesson-to-Practice Bridge - 2026-06-20

## Plan

- [x] Verify the selected-code Atlas actions after the report that buttons implied practice but did not open questions.
- [x] Confirm the primary selected-code and lesson actions point to the Atlas-native question practice route.
- [x] Verify production deployment state and record the live click evidence.

## Review

- App commit: `20459f0` (`Add Atlas lesson practice bridge`) pushed to private `auronpep/barmatrix-app` `main`.
- Production deploy: Vercel deployment `dpl_iCitXgZqzR9Uyh3KAYv3Y1rrzLfF` is READY for `https://barmatrix.app` and carries commit `20459f0a7a2f6d2e95a960716d891dbaad7a32cc`.
- UI repair: selected code `93110100` now renders `Do first question`, the lesson sequence renders `Do first question`, the lesson checkpoint renders `Practice this lesson`, and each approved question row renders `Do question` plus `Study answer`.
- Live proof: signed-in `https://barmatrix.app/atlas?code=93110100&v=20459f0#atlas-code-lesson` rendered `DO FIRST QUESTION`, `PRACTICE THIS LESSON`, five question rows, and no old `Drill this code` or `No runnable questions matched this outline code yet` message.
- Click proof: clicking the first live `Do first question` link opened `https://barmatrix.app/atlas/questions/14001_christmas_stage_review/practice` in Chrome.
- Practice route proof: `/atlas/questions/[id]/practice` loads the Atlas-native runner from `getAtlasAnswer`, renders A-D choices, and includes `Submit answer`; focused test `node --test tests\ambassador-dashboard-entry.test.ts` passed (8/8).
- Browser limitation: after the click, Chrome extension control of the practice tab timed out during DOM/screenshot inspection, so final visual inspection of that tab was not recaptured in this pass; the open tab URL and prior route tests confirm the question-open path.

# Atlas V2 Answer-to-Practice Bridge - 2026-06-20

## Plan

- [x] Add a direct answer-debrief CTA back to the same Atlas question practice route.
- [x] Verify from a clean `origin/main` worktree so unrelated app WIP is not deployed.
- [x] Deploy and prove the live answer page links into the runnable question page.

## Review

- App commit: `031ca79` (`Add Atlas answer practice bridge`) pushed to private `auronpep/barmatrix-app` `main`.
- Production deploy: Vercel deployment `dpl_DEafXKmbANxVWbCCocQcTaAFyBbb` reached READY and was aliased to `https://barmatrix.app`.
- UI repair: the Atlas answer debrief now shows `Practice this question`, linking to `/atlas/questions/{question_id}/practice` for the same Atlas question.
- Verification: in clean worktree `C:\barmatrix-app-atlas-answer-bridge`, `node --test tests\ambassador-dashboard-entry.test.ts`, `git diff --check`, `npm run lint`, local `npm run build`, and Vercel production build passed.
- Live proof: signed-in `https://barmatrix.app/atlas/questions/14001_christmas_stage_review/answer?v=031ca79` had exactly one `Practice this question` link to `/atlas/questions/14001_christmas_stage_review/practice`; clicking it opened the practice route, which rendered `QUESTION 1 / 5`, A-D choices, and `Submit answer`; browser console error count was `0`.

# Atlas V2 Live Question Launch Regression - 2026-06-20

## Plan

- [x] Verify whether `https://barmatrix.app/atlas` is serving the current `origin/main` Atlas build or an older build with `Drill this code`.
- [x] Trace the selected-code question-launch path from visible button to `/atlas/questions/{id}/practice`.
- [x] If production is stale, redeploy and alias the clean app build from `C:\barmatrix-app-atlas-answer-bridge`; if source is wrong, patch the missed render path only.
- [x] Run focused Atlas tests, lint/build if a source or deployable artifact changes, and live click proof.
- [x] Record root cause, proof, and any lesson learned.

## Review

- Current live production `https://barmatrix.app/atlas?code=93110100&codexProbe=live-question-launch` hydrates the fixed Atlas UI: it renders `Study lesson`, `Do first question`, `Practice this lesson`, and `Do question` links for the five approved questions.
- The reported screenshot matches an older client state: current live DOM does not contain `Direct link`, `Drill this code`, or `No runnable questions matched this outline code yet`; current mobile-width check also shows `Copy link`, not `Direct link`.
- Live practice route proof: `https://barmatrix.app/atlas/questions/14001_christmas_stage_review/practice?codexProbe=live-question-launch` renders `QUESTION 1 / 5`, four answer-choice buttons, and `Submit answer`.
- Runnable proof: selecting answer B enabled `Submit answer`; submitting revealed `Correct answer: B`, `Study answer debrief`, and a `Next question` link to `/atlas/questions/18182_bookstore_mandamus/practice`.
- Console proof: no browser errors or warnings were reported on the Atlas page, mobile-width Atlas page, or practice route in this pass.
- No app source or deploy was changed in this pass; production already serves the fixed build. If the user's browser still shows the old red `Drill this code` button, open `https://barmatrix.app/atlas?code=93110100&v=031ca79#atlas-code-lesson` or hard-refresh the tab to replace the stale hydrated client.

# Atlas V2 Dashboard Left-Nav Proof - 2026-06-20

## Plan

- [x] Inspect the dashboard shell source for the Atlas left-navigation entry.
- [x] Verify live `/dashboard` exposes the Atlas entry in the left sidebar.
- [x] Click the live sidebar entry and confirm it opens the customer Atlas.
- [x] Inspect the next connected-content gap after left nav.

## Review

- Source proof: `C:\barmatrix-app-atlas-answer-bridge\components\preview-dashboard\dashboard-shell.tsx` lists `/atlas` as `Outline Atlas` in the `STUDY` section of the persistent left sidebar.
- Source test proof: `C:\barmatrix-app-atlas-answer-bridge\tests\ambassador-dashboard-entry.test.ts` already asserts `/atlas` is surfaced in the restored paid-program/dashboard shell.
- Live proof: `https://barmatrix.app/dashboard?codexAtlasNav=1` rendered a visible left-sidebar link `▨ Outline Atlas` with `href="/atlas"`; browser console error/warn count was `0`.
- Click proof: clicking that sidebar link opened `https://barmatrix.app/atlas`, which rendered `Outline Atlas`, `Walk the MBE outline by code`, `Practice-ready codes`, and `Do first question`; browser console error/warn count was `0`.

# Atlas V2 Tension Detour Bridge - 2026-06-20

## Plan

- [x] Inspect answer-page detour routing and Atlas_v1 detour count logic.
- [x] Reuse existing Tension Map query helpers for student-visible `tension` detour counts.
- [x] Route answer-page `tension` detours to `/tensions/{slug}`.
- [x] Run API/app tests, type/build gates, deploy, and smoke live behavior.
- [x] Record proof and remaining data limitation.

## Review

- API commit: `79799ba` (`Add Atlas tension detour counts`) on private `auronpep/barmatrix-api` branch `codex/api-live-hardening-2026-06-19`.
- App commit: `3e61238` (`Link Atlas tension detours`) pushed to private `auronpep/barmatrix-app` `main`.
- API change: `readAtlasV1DetourTargetCounts` now counts `type: "tension"` specs through existing `buildTensionCatalogRowQuery`, `tensionLinkKeys`, and `buildTensionQuestionsCountQuery`; missing `tension_points` still falls back to the raw slug instead of 500ing.
- App change: Atlas answer detours now link `type: "tension"` to `/tensions/{key}`. Red-zone detours remain intentionally unlinked until the API carries the required route dimension.
- Verification: `npx tsx --test src/lib/atlas-v1.test.ts` passed 10/10, `npm run typecheck` passed, API `npm run build` passed, app `node --test tests\ambassador-dashboard-entry.test.ts` passed 8/8, app `npm run lint` passed, app `npm run build` passed, and `git diff --check` passed in both repos.
- API production deploy: ran `bash scripts/deploy.sh` from clean detached worktree at `79799ba`; Hostinger preflight reported auto-deploy idle, build and parse checks passed, Passenger restarted, and `https://api.barmatrix.app/health` returned HTTP 200 on attempt 1. Rollback snapshot: `~/domains/barmatrix.app/nodejs/dist.bak-20260620-020057`.
- App production deploy: Vercel deployment `dpl_9dHs5d73DHNGV2ZvMCeeghoWr42J` reached Ready and is aliased to `https://barmatrix.app` and `https://www.barmatrix.app`.
- Live smoke: `https://barmatrix.app/dashboard?codexDeploy=3e61238` rendered the dashboard sidebar Atlas link; clicking the nav link opened `https://barmatrix.app/atlas`, which rendered `Outline Atlas` and `Walk the MBE outline by code` with console error/warn count `0`.
- Live answer smoke: `https://barmatrix.app/atlas/questions/14001_christmas_stage_review/answer?codexDeploy=3e61238` rendered the Atlas answer page, `PRACTICE THIS QUESTION`, `STUDY THIS OUTLINE CODE`, `REVIEW CODE QUESTIONS`, and `CORRECT ANSWER`; console error/warn count was `0`.
- Data limitation: the sampled live question does not currently expose a trap or tension detour, so the `/tensions/{slug}` link path is proven by source tests/build and deployed code, not by a visible live sample link.

# Atlas V2 Question Launch Bug Recheck - 2026-06-20

## Plan

- [x] Reproduce the live Atlas question-open path and identify the exact dead control.
- [x] Trace the selected-code buttons from visible UI text to route/data source.
- [x] Patch only the confirmed broken route, control, or stale-state path.
- [x] Verify with focused tests and live deploy proof.
- [x] Record root cause, deployment status, and lesson learned.

## Review

- Root cause: the stale `Drill this code` Atlas client called `/api/drills/start` with `kind: "outline_code"`, but API outline-code drill selection required a matching active row in the legacy `questions` table. Atlas-native question IDs such as `14001_christmas_stage_review` are approved in `atlas_questions` but are not legacy question UUIDs, so the API could return `drill_id: null` while Atlas displayed approved questions.
- API fix: commit `7c380ad` on `auronpep/barmatrix-api` changes outline-code drill selection to use included `atlas_questions` rows, keeping active legacy rows when present and allowing Atlas-native rows when no legacy row exists. Production deploy used clean detached commit `ea9435a` based on the prior live API deploy `79799ba`; rollback snapshot is `~/domains/barmatrix.app/nodejs/dist.bak-20260620-021945`.
- App fix: commit `c99981d` on private `auronpep/barmatrix-app` `main` redirects outline-code drill assignments containing Atlas-native non-UUID question IDs from `/drills/{id}` to `/atlas/questions/{firstQuestionId}/practice`.
- Verification: API `npx tsx --test src/routes/drills.test.ts`, `npm run typecheck`, `npm run build`, and `git diff --check` passed in both the development repo and the clean deploy worktree. App `node --test tests\ambassador-dashboard-entry.test.ts`, `npm run lint`, `npm run build`, and `git diff --check` passed.
- Live deploy proof: API deploy health check returned HTTP 200; `https://api.barmatrix.app/health?atlas_drill_compat=ea9435a` returned `{"ok":true,"db":"up"}`. Vercel production deployment `dpl_HS7fXRskvuKHFywZeJXXcFjA7ibH` is Ready and aliased to `https://barmatrix.app` and `https://www.barmatrix.app`.
- Live unauthenticated proof: `https://barmatrix.app/atlas/questions/14001_christmas_stage_review/practice?deploy=c99981d` redirects to sign-in with the intended practice URL preserved. Full signed-in old-tab click proof could not be captured because no signed-in browser/CDP session was available in this pass.

# Atlas V2 Code-Level Detour Index - 2026-06-20

## Plan

- [x] Inspect existing Atlas API/app data for trap and tension detours attached to approved questions in an outline code.
- [x] Add the smallest selected-code surface that links to related traps/tensions without creating new content or approval states.
- [x] Run focused API/app tests, type/lint/build checks, and whitespace checks.
- [x] Deploy only if the verified source changes require it.
- [x] Record proof, limitations, and any remaining follow-up.

## Review

- API commit: `9f13b2d` (`Expose Atlas code detour previews`) pushed to private `auronpep/barmatrix-api` branch `codex/api-live-hardening-2026-06-19`.
- App commit: `812c6df` (`Show Atlas code detour links`) pushed to private `auronpep/barmatrix-app` `main`.
- API change: selected-code components now aggregate `detours` from included Atlas question `case_study_json`, dedupe trap/tension specs, filter through existing student-safe target counts, and return `detour_previews`.
- App change: the selected-code component panel now renders a `Related detours` link list for student-visible trap/tension detours, linking to `/traps/{slug}` and `/tensions/{slug}`.
- Verification: API `npx tsx --test src/lib/atlas-v1.test.ts` passed 10/10, `npm run typecheck` passed, API `npm run build` passed, app `node --test tests\ambassador-dashboard-entry.test.ts` passed 8/8, app `npm run lint` passed, app `npm run build` passed, and `git diff --check` passed in both repos.
- API production deploy: `bash scripts/deploy.sh` completed successfully, production health returned HTTP 200 on attempt 1, and rollback snapshot is `~/domains/barmatrix.app/nodejs/dist.bak-20260620-023346`.
- App production deploy: Vercel deployment `dpl_8MSEBq2c6xKQ9pXedR4A1AhmdJWN` reached READY for commit `812c6df`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-bi2g7bqsf-sunnylee.vercel.app`.
- Live checks: `https://api.barmatrix.app/health?atlas_detours=9f13b2d` returned `{"ok":true,"db":"up"}`; unauthenticated `https://barmatrix.app/atlas?code=93110100&codexDetours=812c6df` correctly redirects to sign-in with the intended Atlas URL preserved.
- Limitation: no signed-in browser-control session was available in this pass, so final live DOM proof of visible `Related detours` links was not captured; the deployed route is proven by source tests, local/Vercel builds, commit metadata, production alias, API health, and auth redirect checks.

# Atlas V2 Lesson Continuation - 2026-06-20

## Plan

- [x] Add one-click lesson continuation after the selected code checkpoint.
- [x] Reuse existing device-local studied progress and `nextUnstudiedCode`; add no API, database, or content lane.
- [x] Run focused app checks, deploy if source changes pass, and record proof.

## Review

- App commit: `2df1a55` (`Add Atlas lesson continuation`) pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the selected-code lesson checkpoint now has a one-click `Mark studied + continue` action; once the current code is already studied, the same control reads `Continue lesson walk`.
- Implementation: reused device-local studied progress and existing Atlas node lists; added no API, database, or approval-lane change.
- Verification: `node --test tests\ambassador-dashboard-entry.test.ts` passed 8/8, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_GPMqpKRow9Pq4d8gaJT7VG6CTDi1` reached READY for commit `2df1a55`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-j4wli31th-sunnylee.vercel.app`.
- Live check: unauthenticated `https://barmatrix.app/atlas?code=93110100&lessonContinue=2df1a55#atlas-code-lesson` redirects to sign-in with the intended Atlas URL preserved.
- Limitation: no signed-in browser-control session was available in this pass, so visible live DOM proof of the checkpoint button was not captured; source test, lint/build, Vercel build, alias state, and auth redirect prove the deployed route.

# Atlas V2 Connected Preview Action - 2026-06-20

## Plan

- [x] Confirm whether approved LeadMe preview IDs map to already-runnable study routes.
- [x] If direct preview routes are not proven, add a safe selected-code preview action that opens the approved LeadMe path instead of guessing item URLs.
- [x] Write the focused source regression before production edits.
- [x] Run focused source test, lint, build, whitespace check, and deploy if the source change passes.
- [x] Record root cause, proof, deployment status, and remaining route-data limitation.

## Review

- Route-data finding: `leadme_item_previews` currently expose `item_id`, `external_id`, `component_type`, and `estimated_seconds`, but not a verified app `href`; API study route data is still placeholder/empty, so direct preview-item URLs would be guessed.
- App commit: `2e9d553` (`Make Atlas previews open LeadMe`) pushed to private `auronpep/barmatrix-app` `main`.
- UI change: LeadMe preview rows in the selected-code `Connected previews` section now render as controls with `Open through LeadMe` when an approved LeadMe set exists, reusing the existing `startLeadMe` flow instead of creating new item routes.
- Verification: wrote the source regression first and confirmed it failed on missing `Open through LeadMe`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 8/8, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_Djo4knNh1aq2hhJhX5EyexRtQjfP` reached READY for commit `2e9d553664d7089602add495729faaa13a535569`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-7j6265uy0-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible live DOM proof of `Open through LeadMe` was not captured; source test, local build, Vercel build, deployment metadata, and alias state prove the shipped change.

# Atlas V2 Debrief Preview Action - 2026-06-20

## Plan

- [x] Reuse the existing Atlas answer page for debrief preview rows when the selected code has an approved question.
- [x] Write the focused source regression before production edits.
- [x] Patch the smallest preview-row link support needed.
- [x] Run focused source test, lint, build, whitespace check, deploy, and record proof.

## Review

- App commit: `9e3ac2b` (`Link Atlas debrief previews to answers`) pushed to private `auronpep/barmatrix-app` `main`.
- UI change: answer-debrief preview rows now show `Open answer debrief` and link to the first approved Atlas answer page for the selected outline code. If the code has no approved question, the preview remains informational instead of linking to nowhere.
- Implementation: added `atlasQuestionAnswerHref` next to the existing practice helper and reused it for both the selected-code question list and debrief preview rows; no new route or API field was added.
- Verification: wrote the source regression first and confirmed it failed on missing `atlasQuestionAnswerHref`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 8/8, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_34Q413jNYLpEuJ2ckoSCMnq4NJ8g` reached READY for commit `9e3ac2bd727fd9578c6649179a125c5e78581d6f`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-3sv2488cs-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible live DOM proof of `Open answer debrief` was not captured; source test, local build, Vercel build, deployment metadata, and alias state prove the shipped change.

# Atlas V2 Actionable Lane Rows - 2026-06-20

## Plan

- [x] Make live selected-code component lanes actionable using existing destinations only.
- [x] Keep approval-gated lanes passive and do not add new routes, API fields, or content assumptions.
- [x] Write the focused source regression before production edits.
- [x] Run focused app checks, deploy, and record proof.

## Review

- App commit: `7c50368e3be064231abdfd4ce003ad7eaa813ef8` (`Make Atlas lane rows actionable`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the selected-code component lane rows now use existing destinations only: questions jump to `#atlas-code-questions`, guided/lesson/drill/flashcard lanes start the existing LeadMe code flow, trap/tension lanes jump to `#atlas-code-detours`, and answer debriefs open the first approved question's Atlas answer debrief. Approval-gated rows remain passive.
- Verification: wrote the source regression first and confirmed it failed on missing `actionLabel="Open questions"`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 8/8, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_HAbUxDzqQ4GrXggbcMQ1Gxiz36c8` reached READY for commit `7c50368e3be064231abdfd4ce003ad7eaa813ef8`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-km35skgci-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so live click-through DOM proof was not captured; source test, local build, Vercel build, deployment metadata, and alias state prove the shipped change.

# Atlas V2 Dashboard Entry Copy - 2026-06-20

## Plan

- [x] Make the dashboard Atlas entry describe the customer-facing Atlas as an outline-code learning map and component index.
- [x] Keep the existing `/atlas` route and dashboard layout; add no new nav model, API field, or content assumption.
- [x] Write the focused source regression first.
- [x] Run focused app checks, deploy, and record proof if the source change passes.

## Review

- App commit: `58534b656d9ee23fe60011b03babcae0a73e96fa` (`Clarify Atlas dashboard entry`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the dashboard `Outline Atlas` repair-component card now says students can “Walk the outline by code and open approved questions, lessons, traps, and drills,” matching the public-facing Atlas V2 positioning.
- Implementation: reused the existing `/atlas` entry in the dashboard card list; added no new route, nav model, API field, or component abstraction.
- Verification: wrote the source regression first and confirmed it failed on the old copy; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 8/8, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_AqsLcLSyqotsp4YsvBLeDuaeHNAa` reached READY for commit `58534b656d9ee23fe60011b03babcae0a73e96fa`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-98ae8qcef-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible live dashboard DOM proof was not captured; source test, local build, Vercel build, deployment metadata, and alias state prove the shipped change.

# Atlas V2 Lesson Lane Index - 2026-06-20

## Plan

- [x] Make each selected-code lesson expose concrete lane links for questions, LeadMe, drills, traps, and answer debriefs.
- [x] Reuse existing anchors and counts; add no route, API field, approval state, or guessed item URL.
- [x] Write the focused source regression first.
- [x] Run focused app checks, deploy, and record proof if the source change passes.

## Review

- App commit: `7c3465f566de6c1360a6f7e4422d754f43c33330` (`Expand Atlas lesson lane index`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the selected-code lesson component index now names concrete follow-on lanes: Question bank, LeadMe lesson, Drills, Trap detours, Answer debriefs, and Component lanes.
- Gating change: inactive component-index items now render as passive `aria-disabled="true"` blocks instead of anchors, so approval-gated lanes do not create false navigation.
- Implementation: reused existing anchors (`#atlas-code-questions`, `#atlas-code-leadme`, `#atlas-code-components`, `#atlas-code-detours`) and existing counts; added no route, API field, approval state, or guessed item URL.
- Verification: wrote the source regression first and confirmed it failed on missing `Trap detours`; added a second failing check for disabled gated items; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 8/8, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_AYpunrqQ7jJmjpwHUQDwF5ESgtJa` reached READY for commit `7c3465f566de6c1360a6f7e4422d754f43c33330`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-cbhxohmgn-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible live Atlas DOM proof was not captured; source test, local build, Vercel build, deployment metadata, and alias state prove the shipped change.

# Atlas V2 Flashcard And Tension Lanes - 2026-06-20

## Plan

- [x] Make the selected-code lesson index expose flashcards and tension detours as first-class lanes.
- [x] Split trap and tension detour counts using existing approved detour previews.
- [x] Keep gated lanes passive; add no route, API field, approval state, or guessed item URL.
- [x] Write the focused source regression first, then verify, deploy, and record proof.

## Review

- App commit: `b563c070d5d88de4398aeaf3eab20fc7f3de1812` (`Expose Atlas flashcard and tension lanes`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the selected-code component index now exposes `Flashcards` and `Tension detours` as first-class lanes, and `Trap detours` now counts only trap detours instead of all detours.
- Gating change: the new lanes reuse the existing passive `aria-disabled="true"` behavior when there is no approved component count, with no new route, API field, approval state, or guessed item URL.
- Verification: wrote the focused source regression first and confirmed it failed on missing `Tension detours`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 8/8, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_3XhLafmaYnAVmgHP9GvWBs2Xyvck` reached READY for commit `b563c070d5d88de4398aeaf3eab20fc7f3de1812`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-7l7hptq5s-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible live Atlas DOM proof was not captured; source test, local build, Vercel build, deployment metadata, and alias state prove the shipped change.

# Atlas V2 Dashboard Nav Naming - 2026-06-20

## Plan

- [x] Name the customer-facing Atlas as `Outline Atlas V2` in the dashboard left sidebar.
- [x] Keep the existing `/atlas` route and dashboard nav structures; add no new route, state, or component abstraction.
- [x] Cover both the exact `/dashboard` left sidebar and the legacy dashboard subview program navigation.
- [x] Verify, deploy, and record proof.

## Review

- App commit: `32a74ea3ea48627d2fa7dd936cff4c7b26ea5350` (`Name Atlas V2 in dashboard navigation`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the exact `/dashboard` left sidebar and the legacy dashboard subview program navigation now label `/atlas` as `Outline Atlas V2`.
- Implementation: reused the existing `/atlas` href and nav arrays; added no route, state, API field, or component abstraction.
- Verification: wrote the focused source regression first and confirmed it failed on the old `Outline Atlas` labels; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 9/9, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_FHd84drqB68NE8EgEvjUmG11Lxeb` reached READY for commit `32a74ea3ea48627d2fa7dd936cff4c7b26ea5350`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-kgtt2a3l0-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible live dashboard DOM proof was not captured; source test, local build, Vercel build, deployment metadata, and alias state prove the shipped change.

# Atlas V2 Typed Detour Lane Actions - 2026-06-20

## Plan

- [x] Make Trap and Tension component-lane actions type-specific.
- [x] Keep existing detour routes and anchors; add no new API field, route, or guessed URL.
- [x] Leave non-detour trap/tension counts informational instead of linking to the wrong detour type.
- [x] Verify, deploy, and record proof.

## Review

- App commit: `dca86ecc9c942c1cb6da16fae6cf5595776cdb63` (`Use typed Atlas detour lane actions`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the Trap lane now says `Open trap detours` and only links to `#atlas-code-detours` when `trapDetourCount > 0`; the Tensions lane now says `Open tension detours` and only links when `tensionDetourCount > 0`.
- Implementation: reused the existing detour anchor and typed counts; added no route, API field, approval state, or guessed item URL.
- Verification: wrote the focused source regression first and confirmed it failed against the generic `Open detours` implementation; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 9/9, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_GaMwViFGdAFtFwQj9oehzwezrbvo` reached READY for commit `dca86ecc9c942c1cb6da16fae6cf5595776cdb63`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-2oxjpfe63-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible live Atlas DOM proof was not captured; source test, local build, Vercel build, deployment metadata, and alias state prove the shipped change.

# Atlas V2 Page Metadata Naming - 2026-06-20

## Plan

- [x] Rename the Atlas page metadata to match the dashboard-facing `Outline Atlas V2` label.
- [x] Keep the existing `/atlas` route, auth behavior, and noindex stance unchanged.
- [x] Add focused source regression coverage.
- [x] Verify, deploy, and record proof.

## Review

- App commit: `b6f91a688731c98e75df4124a916189c5476a9d8` (`Name Atlas page metadata V2`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI metadata change: `/atlas` now ships `title: "Outline Atlas V2"` while preserving the existing `/atlas` route and `robots: { index: false, follow: false }`.
- Verification: added a focused source regression that first failed against the stale `Outline Atlas` title; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_67sbUqHgia4m9vxJPzLfY7mpx5hR` reached READY for commit `b6f91a688731c98e75df4124a916189c5476a9d8`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-14b6xagkh-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible browser-title proof was not captured; source regression, local build, Vercel build, deployment metadata, and alias state prove the shipped metadata change.

# Atlas V2 Visible Page Naming - 2026-06-20

## Plan

- [x] Rename the visible Atlas page heading to `Outline Atlas V2`.
- [x] Keep the existing page layout, filters, route, auth gate, and component lanes unchanged.
- [x] Add focused source regression coverage.
- [x] Verify, deploy, and record proof.

## Review

- App commit: `44af714fff40d4e4ce174ef06d30a47c7f1d5f57` (`Show Atlas V2 on Atlas page`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI copy change: the visible Atlas eyebrow now says `Outline Atlas V2`; sign-in and paid-program access copy now use the same label.
- Implementation: preserved the existing `/atlas` route, page layout, filters, auth gate, and component lanes; no new component or route was added.
- Verification: added a focused source regression that first failed against the old visible `Outline Atlas` copy; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_DhF39bkg98ijsavm6cDFa8j91A1n` reached READY for commit `44af714fff40d4e4ce174ef06d30a47c7f1d5f57`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-livwd37z4-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible browser DOM proof was not captured; source regression, local build, Vercel build, deployment metadata, and alias state prove the shipped visible-copy change.

# Atlas V2 Boot-Camp Lane - 2026-06-20

## Plan

- [x] Surface approved boot-camp components in the Atlas component index.
- [x] Convert the placeholder Boot camps row into a live gated lane when approved boot-camp items exist.
- [x] Reuse existing LeadMe start behavior; add no API field, route, or database write.
- [x] Verify, deploy, and record proof.

## Review

- App commit: `46a95dcb63f92df7e3be9941b05583d36dc78b6e` (`Surface Atlas boot camp lane`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the component index now includes `Boot-camps`; the Boot camps lane becomes `Live` and opens through LeadMe when approved boot-camp items exist, otherwise it remains an approval gate.
- Implementation: reused existing `leadme_items`, `countMatching`, `startLeadMe`, and lane components; added no API field, route, database write, or new abstraction.
- Verification: added a focused source regression that first failed against the permanent placeholder lane; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_AnAquuStKntrZVwra2wuKXapUSsU` reached READY for commit `46a95dcb63f92df7e3be9941b05583d36dc78b6e`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-6v1r5rius-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible browser DOM proof was not captured; source regression, local build, Vercel build, deployment metadata, and alias state prove the shipped boot-camp lane.

# Atlas V2 Component List Filters - 2026-06-20

## Plan

- [x] Add outline-list filters for guided items and answer debriefs using existing coverage counts.
- [x] Keep drill, flashcard, and boot-camp filtering out of the list until coverage exposes type-specific counts.
- [x] Add focused source regression coverage.
- [x] Verify, deploy, and record proof.

## Review

- App commit: `5030fffcb977a3b3572405c0a0749314d8f88ab6` (`Add Atlas component list filters`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the outline list filter now includes `Guided items` and `Debriefs`, letting students narrow the code map to approved support components the coverage API can honestly identify.
- Implementation: reused existing `leadme_item_count` and `debrief_element_count`; did not add drill, flashcard, or boot-camp list filters because coverage does not expose type-specific counts for those at list level.
- Verification: added a focused source regression that first failed against the old filter set; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed.
- Production deploy: Vercel deployment `dpl_GdcrVXF78veVqeYsL2w38k991ysa` reached READY for commit `5030fffcb977a3b3572405c0a0749314d8f88ab6`; aliases `https://barmatrix.app` and `https://www.barmatrix.app` point to `barmatrix-3i3ggywy7-sunnylee.vercel.app`.
- Limitation: no signed-in browser-control session was available in this pass, so visible browser DOM proof was not captured; source regression, local build, Vercel build, deployment metadata, and alias state prove the shipped filter change.

# Atlas V2 Needs-Question Filter - 2026-06-20

## Plan

- [x] Add an outline-list filter for codes with zero approved questions.
- [x] Use existing coverage `question_count` only; do not introduce a new API field or database write.
- [x] Add focused source regression coverage.
- [ ] Verify, deploy, and record proof.

## Review

- App commit: `12319a7` (`Add Atlas needs-question filter`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the Atlas outline-list component filter now includes `Needs questions`, which returns codes where `node.question_count === 0`.
- Implementation: reused the existing coverage `question_count`; added no API field, route, database write, or content approval mutation.
- Verification: the focused source regression first failed against the old filter set; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only existing LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; `vercel ls barmatrix-app --scope sunnylee` still shows the latest READY production deployment as the prior `https://barmatrix-3i3ggywy7-sunnylee.vercel.app` build, so this pushed commit is not live yet.

# Atlas V2 Question Gap Counter - 2026-06-20

## Plan

- [x] Show the number of outline codes in the current scope that still have no approved questions.
- [x] Reuse existing scoped coverage state; do not add a new API call or page.
- [x] Add focused source regression coverage.
- [x] Verify and commit; retry deployment only if the Vercel limit has cleared.

## Review

- App commit: `005e515` (`Show Atlas question gap count`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the `Weak-section drilldown` scope card now shows `Needs Q`, the number of currently scoped outline codes with `question_count === 0`.
- Implementation: reused `scopedNodes` and `scopedPracticeNodes`; added no API call, route, content mutation, or database write.
- Verification: the focused source regression first failed against the missing `scopedNoQuestionCount`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only existing LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` still fails with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; `vercel ls barmatrix-app --scope sunnylee` still shows the latest READY production deployment as `https://barmatrix-3i3ggywy7-sunnylee.vercel.app`, so `005e515` is pushed but not live.

# Atlas V2 Scoped Walk Preview - 2026-06-20

## Plan

- [x] Show the next outline code/title the scoped walk button will open.
- [x] Reuse existing `scopedWalkCode` logic; do not add a second walk algorithm.
- [x] Add focused source regression coverage.
- [x] Verify, commit, push, and record whether the Vercel deploy limit has cleared.

## Review

- App commit: `3c18de6` (`Preview Atlas scoped walk target`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the weak-section drilldown panel now shows `Next walk target: {code} / {outline_text}` for the outline item the scoped walk button will open.
- Implementation: reused existing `scopedWalkCode` and added only `scopedWalkNode`; no new walk algorithm, route, API call, or database write.
- Verification: the focused source regression first failed against the missing `scopedWalkNode`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only existing LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` still fails with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; `vercel ls barmatrix-app --scope sunnylee` still shows the latest READY production deployment as `https://barmatrix-3i3ggywy7-sunnylee.vercel.app`, so `3c18de6` is pushed but not live.

# Atlas V2 Needs-Lesson Filter - 2026-06-20

## Plan

- [x] Add an outline-list filter for codes with no lesson or guided teaching items.
- [x] Reuse existing `leadme_set_count` and `leadme_item_count`; do not add a new API field.
- [x] Add focused source regression coverage.
- [x] Verify, commit, push, and record whether Vercel can deploy.

## Review

- App commit: `ed5a3b1` (`Add Atlas needs-lesson filter`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the Atlas outline-list component filter now includes `Needs lesson`, which returns codes where `leadme_set_count + leadme_item_count === 0`.
- Implementation: reused existing coverage counts; added no API field, route, database write, or content mutation.
- Verification: the focused source regression first failed against the missing filter; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only existing LF/CRLF warnings.
- Production deploy: Vercel deployment `dpl_F3KmWoLZ28QnEc9XJ33AVmTjeGnU` reached READY for commit `ed5a3b1`; aliases `https://barmatrix.app`, `https://www.barmatrix.app`, and the Vercel project aliases point to `https://barmatrix-386g7i58g-sunnylee.vercel.app`.

# Atlas V2 Scoped Lesson Gap Count - 2026-06-20

## Plan

- [x] Show the number of scoped outline codes with no lesson or guided teaching.
- [x] Reuse existing scoped coverage counts; no API or database change.
- [x] Add focused source regression coverage.
- [x] Verify, push, and record deploy status.

## Review

- App commit: `e4c2b12` (`Show Atlas lesson gap count`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the weak-section drilldown scope card now shows `Needs lesson`, the number of currently scoped outline codes where `leadme_set_count + leadme_item_count === 0`.
- Implementation: reused `scopedNodes` and existing lesson/guided counts; added no API route, database write, content mutation, or new coverage field.
- Verification: the focused source regression first failed against the missing `scopedNoLessonCount`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only existing LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; production aliases still point to prior READY deployment `dpl_F3KmWoLZ28QnEc9XJ33AVmTjeGnU` at `https://barmatrix-386g7i58g-sunnylee.vercel.app`, so `e4c2b12` is pushed but not live yet.


# Atlas V2 Lesson-Ready Walk - 2026-06-20

## Plan

- [x] Make the lesson checkpoint continue button prefer codes with approved lesson or guided content.
- [x] Reuse existing coverage counts; no API, database, or content mutation.
- [x] Show the next lesson-ready target in the weak-section drilldown.
- [x] Verify locally, push if green, and record deploy status.

## Review

- App commit: `1d5ecfa` (`Prefer lesson-ready Atlas walk targets`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the lesson checkpoint continue action now walks through codes with approved lesson or guided content when that content exists in the current scope, and the weak-section drilldown shows `Next lesson target`.
- Implementation: reused existing `leadme_set_count` and `leadme_item_count`; added no API route, database write, content mutation, or new coverage field.
- Verification: the focused source regression first failed against the missing `lessonWalkNodes`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only existing LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` still fails with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; production still shows prior READY deployment `https://barmatrix-386g7i58g-sunnylee.vercel.app`, so `1d5ecfa` is pushed but not live yet.

# Atlas V2 Scoped Lesson Codes Action - 2026-06-20

## Plan

- [x] Add a weak-section action that filters to lesson-ready outline codes.
- [x] Reuse existing `leadme_set_count` and `leadme_item_count`; no API or database change.
- [x] Keep the action disabled when the current scope has no lesson-ready codes.
- [x] Verify locally, push if green, and record deploy status.

## Review

- App commit: `e69a071` (`Add Atlas scoped lesson-code action`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: weak-section drilldown now has `Show lesson codes`, which switches the Atlas list to the existing `lessons` filter and selects the first lesson-ready code in the current scope.
- Implementation: promoted `scopedLessonNodes` from the existing lesson-walk logic; reused `leadme_set_count` and `leadme_item_count`; added no API route, database write, content mutation, or new coverage field.
- Verification: the focused source regression first failed against the missing `Show lesson codes`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only existing LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` still fails with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; production still shows prior READY deployment `https://barmatrix-386g7i58g-sunnylee.vercel.app`, so `e69a071` is pushed but not live yet.

# Atlas V2 Accumulated Production Deploy - 2026-06-20

## Review

- App commit: `e69a071` (`Add Atlas scoped lesson-code action`) is live in production after prior Vercel quota blockers cleared.
- Production deploy: Vercel deployment `dpl_A2REv5TPsr6HYdW5ZRWkNKjrygAg` reached READY at `https://barmatrix-63qsdy83t-sunnylee.vercel.app`.
- Aliases: `https://barmatrix.app`, `https://www.barmatrix.app`, `https://barmatrix-app.vercel.app`, `https://barmatrix-app-sunnylee.vercel.app`, and `https://barmatrix-app-sunnylwood-7609-sunnylee.vercel.app` point to this deployment.
- Included Atlas changes since the prior live deployment: needs-question filter, scoped question gap count, scoped walk target preview, needs-lesson filter, scoped lesson gap count, lesson-ready walk targets, and scoped lesson-code action.
- Deployment proof: `vercel deploy --prod -y --scope sunnylee` returned READY; `vercel inspect https://barmatrix-63qsdy83t-sunnylee.vercel.app --scope sunnylee` confirmed aliases and READY status.

# Atlas V2 Unstudied Scope Filter - 2026-06-20

## Plan

- [x] Add a client-only filter for unstudied outline codes in the current scope.
- [x] Reuse existing local studied-code storage; no API, database, or content change.
- [x] Keep the action reversible so students can return to the full scope.
- [x] Verify, push, and record deploy status.

## Review

- App commit: `e9ac3b3` (`Add Atlas unstudied scope filter`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: weak-section drilldown now has a reversible `Show unstudied` / `Show all codes` action that filters the visible Atlas list by local studied status inside the current subject/subtopic scope.
- Implementation: reused existing `studiedCodes` local storage; added `studyFilter` and `scopedUnstudiedNodes`; no API route, database write, content mutation, or new coverage field.
- Verification: the focused source regression first failed against missing `studyFilter`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 1 day`; production still shows prior READY deployment `https://barmatrix-63qsdy83t-sunnylee.vercel.app`, so `e9ac3b3` is pushed but not live yet.

# Atlas V2 Unstudied Filter Status - 2026-06-20

## Plan

- [x] Make the active unstudied scope visible when the student filters the Atlas list.
- [x] Reuse existing client-only study progress; no API, database, or content change.
- [x] Add focused source regression coverage.
- [x] Verify, push, and record deploy status.

## Review

- App commit: `2a7c6cb` (`Show Atlas unstudied filter status`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: when `Show unstudied` is active, the weak-section drilldown now displays `Showing unstudied codes only` with the current scope count, so the filtered Atlas list is not ambiguous.
- Implementation: reused existing `studyFilter` and `scopedUnstudiedNodes`; added no API route, database write, content mutation, or new coverage field.
- Verification: the focused source regression first failed against missing `Showing unstudied codes only`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; production still shows prior READY deployment `https://barmatrix-63qsdy83t-sunnylee.vercel.app`, so `2a7c6cb` is pushed but not live yet.

# Atlas V2 Visible Filtered List Count - 2026-06-20

## Plan

- [x] Show how many outline codes are visible after the current Atlas filters.
- [x] Reuse existing filtered Atlas client state; no API, database, or content change.
- [x] Add focused source regression coverage.
- [x] Verify, push, try deploy, and record status.

## Review

- App commit: `b812d8a` (`Show Atlas visible code count`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the Atlas result list now shows `Visible codes: {filtered.length} / {allNodes.length} in {scopeLabel}` above the grouped outline codes, so students can tell how much of the 400ish-code map their current filters are hiding.
- Implementation: reused existing `filtered`, `allNodes`, and `scopeLabel`; added no API route, database write, content mutation, or new coverage field.
- Verification: the focused source regression first failed against missing `Visible codes`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; production still shows prior READY deployment `https://barmatrix-63qsdy83t-sunnylee.vercel.app`, so `b812d8a` is pushed but not live yet.

# Atlas V2 Visible List Navigation - 2026-06-20

## Plan

- [x] Make the selected-code Previous/Next controls follow the currently visible filtered Atlas list.
- [x] Preserve existing global code order for lesson links and other walk targets.
- [x] Add focused source regression coverage.
- [x] Verify, push, try deploy, and record status.

## Review

- App commit: `20c78d8` (`Make Atlas navigation follow visible filters`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the selected-code `Previous` / `Next` controls now move through the currently visible filtered Atlas list, so filtered walks such as unstudied, lesson-ready, practice-ready, or searched codes stay inside the student's chosen slice.
- Implementation: added `selectedVisibleIndex`, `previousVisibleCode`, and `nextVisibleCode` from existing `filtered` state; preserved `previousCode` and `nextCode` for existing lesson links and global-position uses.
- Verification: the focused source regression first failed against missing visible-navigation state; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; production still shows prior READY deployment `https://barmatrix-63qsdy83t-sunnylee.vercel.app`, so `20c78d8` is pushed but not live yet.

# Atlas V2 Visible Walk Position - 2026-06-20

## Plan

- [x] Show the selected code's position inside the currently visible filtered Atlas list.
- [x] Reuse existing `filtered` and visible-navigation state; no API, database, or content change.
- [x] Add focused source regression coverage.
- [x] Verify, push, try deploy, and record status.

## Review

- App commit: `b8764e1` (`Show Atlas visible walk position`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the selected-code panel now shows `Visible walk` with the selected code's position inside the currently visible filtered Atlas list, matching the filtered `Previous` / `Next` behavior.
- Implementation: reused `filtered` and `selectedVisibleIndex`; added `selectedVisiblePosition`; added no API route, database write, content mutation, or new coverage field.
- Verification: the focused source regression first failed against missing `selectedVisiblePosition`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only LF/CRLF warnings.
- Production deploy: Vercel deployment `dpl_HREmRh4jEzCpxfyToErBWmYYWkeG` reached READY at `https://barmatrix-lm7fimyez-sunnylee.vercel.app`.
- Aliases: `https://barmatrix.app`, `https://www.barmatrix.app`, `https://barmatrix-app.vercel.app`, `https://barmatrix-app-sunnylee.vercel.app`, and `https://barmatrix-app-sunnylwood-7609-sunnylee.vercel.app` point to this deployment.
- Included Atlas changes since the prior live deployment: unstudied scope filter, unstudied filter status, visible filtered-list count, visible-list navigation, and visible walk position.

# Atlas V2 Selected Lane Summary Expansion - 2026-06-20

## Plan

- [x] Add Flashcards and Boot-camps to the selected-code lane summary.
- [x] Reuse existing selected-code component counts; no API, database, or content change.
- [x] Add focused source regression coverage.
- [x] Verify, push, deploy, and record proof.

## Review

- App commit: `c253cd7` (`Show Atlas flashcard and boot-camp lanes`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the selected-code lane summary now includes `Flashcards` and `Boot-camps` alongside Questions, Lessons, Drills, Traps, Tensions, and Debriefs, using the already loaded selected-code component counts.
- Implementation: reused existing `flashcardCount` and `bootCampCount`; added no API route, database write, content mutation, or new coverage field.
- Verification: the focused source regression first failed against missing selected-lane flashcard/boot-camp entries; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; production still shows prior READY deployment `https://barmatrix-lm7fimyez-sunnylee.vercel.app`, so `c253cd7` is pushed but not live yet.

# Atlas V2 Clear Filters Action - 2026-06-20

## Plan

- [x] Add a one-click way to reset Atlas search, subject, subtopic, component, and study filters.
- [x] Reuse existing client filter state; no API, database, or content change.
- [x] Add focused source regression coverage.
- [x] Verify, push, try deploy, and record status.

## Review

- App commit: `f8fd2b6` (`Add Atlas clear filters action`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the Atlas filter chip row now includes `Clear filters`, which resets search, subject, subtopic, component filter, and study filter back to the full Atlas and selects the first code.
- Implementation: added `clearAtlasFilters`; reused existing client state only; added no API route, database write, content mutation, or new coverage field.
- Verification: the focused source regression first failed against missing `clearAtlasFilters`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `npm run lint` passed, `npm run build` passed, and `git diff --check` passed with only LF/CRLF warnings.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`; production still shows prior READY deployment `https://barmatrix-lm7fimyez-sunnylee.vercel.app`, so `f8fd2b6` is pushed but not live yet.

# Atlas V2 Question Entry Resume Verification - 2026-06-20

## Plan

- [x] Reconfirm the Atlas app worktree is clean at the latest question-entry fix commit.
- [x] Re-run the focused Atlas regression test, lint, and production build.
- [x] Reconfirm the GitHub remote is private before any remote write/deploy reporting.
- [x] Check current Vercel production status and record whether the pushed Atlas build is live.

## Review

- App state: `C:\barmatrix-app-atlas-answer-bridge` is clean at `f8fd2b6` (`Add Atlas clear filters action`) on `codex/atlas-answer-practice-bridge...origin/main`.
- Regression proof: `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10. This includes the Atlas assertions that the old `Direct link` and `Drill this code` dead ends are absent, and that `Do first question`, `Do question`, `Open question list`, `/atlas/questions/[id]/practice`, and `/atlas/questions/[id]/answer` routes are present.
- Build proof: `git diff --check` passed, `npm run lint` passed, and `npm run build` passed. The build output includes `/atlas`, `/atlas/questions/[id]/practice`, and `/atlas/questions/[id]/answer`.
- Remote safety: `gh repo view auronpep/barmatrix-app --json visibility,nameWithOwner` returned `PRIVATE`.
- Production status: Vercel project `sunnylee/barmatrix-app` currently shows `https://barmatrix-lm7fimyez-sunnylee.vercel.app` as READY Production, with aliases `https://barmatrix.app`, `https://www.barmatrix.app`, `https://barmatrix-app.vercel.app`, `https://barmatrix-app-sunnylee.vercel.app`, and `https://barmatrix-app-sunnylwood-7609-sunnylee.vercel.app`.
- Live proof caveat: anonymous `/atlas` requests are redirected/rendered as the Clerk sign-in page, so this pass could not visually verify the paid signed-in Atlas client from raw HTTP alone. The next strongest live proof is an authenticated browser pass while signed in.

# Atlas V2 Question CTA Loading Mismatch - 2026-06-20

## Plan

- [x] Make the selected-code practice CTA honest while runnable questions are loading.
- [x] Make the selected-code practice CTA honest if coverage says questions exist but no runnable rows loaded.
- [x] Keep this client-only; no API, database, or route change.
- [x] Verify, commit, push, deploy if safe, and record status.

## Review

- App commit: `274f07f` (`Clarify Atlas question loading CTA`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the selected-code practice CTA now shows `Loading questions` while runnable rows are loading, `Do first question` when a runnable row exists, and `Question list unavailable` if coverage says questions exist but no runnable row loaded.
- Implementation: changed only `app/atlas/atlas-client.tsx` and the existing source regression in `tests/ambassador-dashboard-entry.test.ts`; no API, database, or route change.
- Verification: the focused source regression first failed against missing `Loading questions`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `git diff --check` passed with LF/CRLF warnings only, `npm run lint` passed, and `npm run build` passed.
- Production deploy: Vercel deployment `dpl_7aQF1KDgd1w8prRkrDjVpjJj9PBE` reached READY at `https://barmatrix-2mq3hovdr-sunnylee.vercel.app` and is aliased to `https://barmatrix.app`, `https://www.barmatrix.app`, `https://barmatrix-app.vercel.app`, `https://barmatrix-app-sunnylee.vercel.app`, and `https://barmatrix-app-sunnylwood-7609-sunnylee.vercel.app`.

# Atlas V2 Current Code Checklist - 2026-06-20

## Plan

- [x] Add a compact per-code checklist inside the lesson checkpoint.
- [x] Reuse existing selected-code state for studied, practice, support, and detour readiness.
- [x] Keep this client-only; no API, database, or route change.
- [x] Verify, commit, push, deploy, and record proof.

## Review

- App commit: `63dcd08` (`Add Atlas current code checklist`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the selected-code lesson checkpoint now includes `Current code checklist` with `Lesson studied`, `Practice ready`, `Support ready`, and `Detours ready` statuses, using existing selected-code state and component counts.
- Implementation: changed only `app/atlas/atlas-client.tsx` and the existing source regression in `tests/ambassador-dashboard-entry.test.ts`; no API, database, route, or content change.
- Verification: the focused source regression first failed against missing `Current code checklist`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `git diff --check` passed with LF/CRLF warnings only, `npm run lint` passed, and `npm run build` passed.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`. Production remains `https://barmatrix-2mq3hovdr-sunnylee.vercel.app` (`dpl_7aQF1KDgd1w8prRkrDjVpjJj9PBE`), so `63dcd08` is pushed but not live yet.

# Atlas V2 Next Lesson Target Preview - 2026-06-20

## Plan

- [x] Show the next lesson-walk target before the student continues.
- [x] Reuse existing `nextLessonWalkNode`; no new state, API, database, or route change.
- [x] Verify, commit, push, attempt deploy, and record status.

## Review

- App commit: `04b6fa1` (`Show Atlas next lesson target`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the lesson checkpoint now shows `Up next in lesson walk`, including the next target's outline code, outline text, and subtopic, before the student uses `Continue lesson walk` / `Mark studied + continue`.
- Implementation: reused existing `nextLessonWalkNode`; changed only `app/atlas/atlas-client.tsx` and the existing source regression in `tests/ambassador-dashboard-entry.test.ts`; no new state, API, database, route, or content change.
- Verification: the focused source regression first failed against missing `Up next in lesson walk`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `git diff --check` passed with LF/CRLF warnings only, `npm run lint` passed, and `npm run build` passed.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`. Production remains `https://barmatrix-2mq3hovdr-sunnylee.vercel.app` (`dpl_7aQF1KDgd1w8prRkrDjVpjJj9PBE`), so `04b6fa1` is pushed but not live yet.

# Atlas V2 Restart Lesson Walk - 2026-06-20

## Plan

- [x] Let the lesson-walk action restart the current lesson scope after every target is studied.
- [x] Reuse existing lesson-walk nodes; no API, database, route, or content change.
- [x] Verify, commit, push, attempt deploy, and record status.

## Review

- App commit: `f967a11` (`Let Atlas lesson walk restart`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the lesson checkpoint action now uses `lessonWalkTargetCode`; when no next unstudied lesson remains, it shows `Restart lesson walk` and jumps to the first lesson-walk target instead of becoming a dead disabled endpoint.
- Implementation: changed only `app/atlas/atlas-client.tsx` and the existing source regression in `tests/ambassador-dashboard-entry.test.ts`; no API, database, route, or content change.
- Verification: the focused source regression first failed against missing `Restart lesson walk`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `git diff --check` passed with LF/CRLF warnings only, `npm run lint` passed, and `npm run build` passed.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`. Production remains `https://barmatrix-2mq3hovdr-sunnylee.vercel.app` (`dpl_7aQF1KDgd1w8prRkrDjVpjJj9PBE`), so `f967a11` is pushed but not live yet.

# Atlas V2 Lesson Walk Progress - 2026-06-20

## Plan

- [x] Add a focused regression for lesson-walk progress copy/state.
- [x] Show studied count and progress for the current lesson-walk scope.
- [x] Keep this client-only; no API, database, route, or content change.
- [x] Verify, commit, push, attempt deploy once, and record status.

## Review

- App commit: `8f8ebd1` (`Show Atlas lesson walk progress`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the lesson checkpoint now shows `Lesson walk progress` with `{studied} / {lesson targets}` and an accessible progress bar for the current lesson-walk scope.
- Implementation: changed only `app/atlas/atlas-client.tsx` and the existing source regression in `tests/ambassador-dashboard-entry.test.ts`; no API, database, route, or content change.
- Verification: the focused source regression first failed against missing `Lesson walk progress`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `git diff --check` passed with LF/CRLF warnings only, `npm run lint` passed, and `npm run build` passed.
- Production deploy: Vercel deployment `dpl_GpGCZrP59dhbT2NU7HhWzN6EipJJ` reached READY at `https://barmatrix-a6bzme9nu-sunnylee.vercel.app` and is aliased to `https://barmatrix.app`, `https://www.barmatrix.app`, `https://barmatrix-app.vercel.app`, `https://barmatrix-app-sunnylee.vercel.app`, and `https://barmatrix-app-sunnylwood-7609-sunnylee.vercel.app`.
- Live caveat: anonymous `https://barmatrix.app/atlas` redirects behind auth, so raw HTTP cannot inspect the signed-in Atlas client content; Vercel production alias and build route output are the live proof for this pass.

# Atlas V2 Subtopic Lesson Counts - 2026-06-20

## Plan

- [x] Add a focused regression for lesson-ready counts in subtopic drilldown.
- [x] Show each subtopic's total codes, lesson-ready codes, and approved questions.
- [x] Keep this client-only; no API, database, route, or content change.
- [x] Verify, commit, push, deploy, and record status.

## Review

- App commit: `d183ee0` (`Show Atlas subtopic lesson counts`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the subtopic drilldown now shows total codes, lesson-ready codes, and approved questions, so weak-section browsing surfaces whether a section is learnable by lesson and not just practice-ready.
- Implementation: changed only `app/atlas/atlas-client.tsx` and the existing source regression in `tests/ambassador-dashboard-entry.test.ts`; no API, database, route, or content change.
- Verification: the focused source regression first failed against missing `lessonReadyCodeCount`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `git diff --check` passed with LF/CRLF warnings only, `npm run lint` passed, and `npm run build` passed.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`. Production remains `https://barmatrix-a6bzme9nu-sunnylee.vercel.app` (`dpl_GpGCZrP59dhbT2NU7HhWzN6EipJJ`), so `d183ee0` is pushed but not live yet.

# Atlas V2 First Lesson Jump - 2026-06-20

## Plan

- [x] Add a focused regression for a scoped first-lesson jump.
- [x] Add a one-click jump from the weak-section drilldown to the first lesson-ready code.
- [x] Keep this client-only; no API, database, route, or content change.
- [x] Verify, commit, push, deploy if available, and record status.

## Review

- App commit: `839f5d7` (`Add Atlas first lesson jump`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- UI change: the weak-section drilldown now includes `Jump to first lesson`, using existing `scopedLessonNodes` so students can move straight into the first lesson-ready code for the selected subject/subtopic scope.
- Implementation: changed only `app/atlas/atlas-client.tsx` and the existing source regression in `tests/ambassador-dashboard-entry.test.ts`; no API, database, route, or content change.
- Verification: the focused source regression first failed against missing `scopedFirstLessonCode`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `git diff --check` passed with LF/CRLF warnings only, `npm run lint` passed, and `npm run build` passed.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 24 hours`. Production remains `https://barmatrix-a6bzme9nu-sunnylee.vercel.app` (`dpl_GpGCZrP59dhbT2NU7HhWzN6EipJJ`), so `839f5d7` is pushed but not live yet.

# Atlas V2 Row Lesson Badges - 2026-06-20

## Plan

- [x] Add a focused regression for lesson readiness in outline list rows.
- [x] Show question and lesson readiness together while scanning outline codes.
- [x] Keep this client-only; no API, database, route, or content change.
- [x] Verify, commit, push, deploy if available, and record status.

## Review

- UI change: each outline-code row now shows question readiness and lesson readiness as separate compact badges, so students can scan for codes that are practice-ready, lesson-ready, both, or missing a lane.
- Implementation: changed only `app/atlas/atlas-client.tsx` and the existing source regression in `tests/ambassador-dashboard-entry.test.ts`; no API, database, route, or content change.
- App commit: `81ee258` (`Show Atlas row lesson readiness`) in `C:\barmatrix-app-atlas-answer-bridge`, pushed to private `auronpep/barmatrix-app` `main`.
- Verification: the focused source regression first failed against missing `Lesson ready`; after the patch, `node --test tests\ambassador-dashboard-entry.test.ts` passed 10/10, `git diff --check` passed with LF/CRLF warnings only, `npm run lint` passed, and `npm run build` passed.
- Production deploy blocker: `vercel deploy --prod -y --scope sunnylee` failed with `api-deployments-free-per-day` / `Resource is limited - try again in 1 day`. Production remains `https://barmatrix-a6bzme9nu-sunnylee.vercel.app` (`dpl_GpGCZrP59dhbT2NU7HhWzN6EipJJ`), so `81ee258` is pushed but not live yet.
