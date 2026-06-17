# OpenClaw Thinking Defaults

Date: 2026-06-16

## Config Keys

OpenClaw supports model-level thinking defaults in:

```json
{
  "agents": {
    "defaults": {
      "models": {
        "provider/model-name": {
          "params": {
            "thinking": "high"
          }
        }
      }
    }
  }
}
```

Also supported:

- Global default: `agents.defaults.thinkingDefault`
- Agent default: `agents.list[].thinkingDefault`
- Model default: `agents.defaults.models["provider/model"].params.thinking`

Accepted values:

```text
off, minimal, low, medium, high, xhigh, adaptive, max
```

These also map to `off`:

```text
false, disabled, none
```

For batch runners, the clean target is: set model defaults in `openclaw.json`, then stop passing `--thinking` unless a one-off override is actually needed.

## Recommended Defaults

| Provider / family | Default | Notes |
| --- | --- | --- |
| `openai/gpt-5.5` | `xhigh` | Use highest stable reasoning setting. |
| `openai/gpt-5.4` | `xhigh` | Same OpenAI family default. |
| `openai/gpt-5.4-mini` | `xhigh` | Prior batch accepted this. |
| `anthropic/claude-*` | `high` | Use high unless a smoke test proves `xhigh` works. |
| `google/gemini-*` | `high` | Quota/503 failures are separate from thinking-level support. |
| `github-copilot/gpt-5-mini` | `high` | Use high; evaluate output quality separately. |
| `openrouter/*` | `high` | OpenRouter upstreams vary; keep high unless a specific model rejects it. |
| `xai/grok-*` | `high` | Current blocker is account credits/subscription, not thinking syntax. |
| `minimax/MiniMax-M3` | `adaptive` | Direct MiniMax rejected `high`; valid values observed were `off` and `adaptive`. |
| `minimax/MiniMax-M2.7` | `high` | This model rejected `adaptive`; valid values observed were `off`, `minimal`, `low`, `medium`, and `high`. |
| `nv-*` custom NVIDIA aliases | `off` | NVIDIA OpenAI-compatible endpoint generally should not receive OpenClaw thinking params unless proven. |
| `nemotron-3-ultra-550b/*` direct NVIDIA alias | `off` | Same NVIDIA endpoint rule. |

## Current Batch Script Rule

The temporary batch-script map should mirror this until `openclaw.json` owns the defaults:

```powershell
$thinkingByModel = @{
  'openai/gpt-5.5' = 'xhigh'
  'openai/gpt-5.4' = 'xhigh'
  'openai/gpt-5.4-mini' = 'xhigh'
  'github-copilot/gpt-5-mini' = 'high'
  'google/gemini-3-flash-preview' = 'high'
  'google/gemini-2.5-pro' = 'high'
  'google/gemini-3.1-flash-lite' = 'high'
  'minimax/MiniMax-M3' = 'adaptive'
  'minimax/MiniMax-M2.7' = 'high'
}

if ($item.model -like 'nv-*' -or $item.model -like 'nemotron-3-ultra-550b/*') {
  $thinking = 'off'
}
```

## Config Patch Shape

Patch each registered model like this:

```json
"openai/gpt-5.5": {
  "params": {
    "thinking": "xhigh"
  }
}
```

For existing model entries that already have fields such as `provider`, `model`, `apiKey`, `baseUrl`, or `tools`, preserve those fields and only add or update:

```json
"params": {
  "thinking": "<recommended value>"
}
```

## Smoke Test Rule

Before a large batch, test one cheap prompt per provider family after changing defaults:

```powershell
openclaw agent --agent main --session-key thinking-smoke-openai --model openai/gpt-5.4-mini --timeout 300 --message "Reply with OK and save no files."
openclaw agent --agent main --session-key thinking-smoke-minimax --model minimax/MiniMax-M3 --timeout 300 --message "Reply with OK and save no files."
openclaw agent --agent main --session-key thinking-smoke-nvidia --model nv-kimi-2-6/moonshotai/kimi-k2.6 --timeout 300 --message "Reply with OK and save no files."
```

If a provider rejects the request because of reasoning or thinking settings, lower that family in `openclaw.json` before running a batch. If it fails for quota, credits, auth, 429, or 503, do not treat that as a thinking-level problem.
