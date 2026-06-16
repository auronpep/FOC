@echo off
rem OpenClaw Gateway (v2026.6.6)
set "NVIDIA_API_KEY=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"
set "TMPDIR=C:\Users\JESUSL~1\AppData\Local\Temp"
set "OPENCLAW_STATE_DIR=C:\FOC\.openclaw"
set "OPENCLAW_CONFIG_PATH=C:\FOC\.openclaw\openclaw.json"
set "OPENCLAW_WRAPPER=C:\FOC\bin\openclaw.ps1"
set "OPENCLAW_GATEWAY_PORT=7421"
set "OPENCLAW_SYSTEMD_UNIT=openclaw-gateway.service"
set "OPENCLAW_WINDOWS_TASK_NAME=OpenClaw Gateway FOC"
set "OPENCLAW_SERVICE_MARKER=openclaw"
set "OPENCLAW_SERVICE_KIND=gateway"
set "OPENCLAW_SERVICE_VERSION=2026.6.6"
"C:\Program Files\PowerShell\7\pwsh.exe" -NoProfile -ExecutionPolicy Bypass -File "C:\FOC\bin\openclaw.ps1" gateway --port 7421
