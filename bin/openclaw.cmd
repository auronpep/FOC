@echo off
setlocal
rem Resolve the FOC root from this script location (bin\..) so the
rem wrapper works regardless of where the repo is checked out.
for %%I in ("%~dp0..") do set "FOC_ROOT=%%~fI"
set "OPENCLAW_STATE_DIR=%FOC_ROOT%\.openclaw"
set "OPENCLAW_CONFIG_PATH=%FOC_ROOT%\.openclaw\openclaw.json"
set "OPENCLAW_WORKSPACE=%FOC_ROOT%\Workspace"
set "OPENCLAW_GATEWAY_PORT=7421"
node "%FOC_ROOT%\node_modules\openclaw\openclaw.mjs" %*
