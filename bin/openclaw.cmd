@echo off
set "OPENCLAW_STATE_DIR=C:\FOC\.openclaw"
set "OPENCLAW_CONFIG_PATH=C:\FOC\.openclaw\openclaw.json"
set "OPENCLAW_WORKSPACE=C:\FOC\Workspace"
node "C:\FOC\node_modules\openclaw\openclaw.mjs" %*
