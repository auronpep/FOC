$focRoot = Split-Path -Parent $PSScriptRoot
$openclawRoot = Join-Path $focRoot '.openclaw'
$env:OPENCLAW_STATE_DIR = $openclawRoot
$env:OPENCLAW_CONFIG_PATH = Join-Path $openclawRoot 'openclaw.json'
$env:OPENCLAW_WORKSPACE = Join-Path $focRoot 'Workspace'
$env:OPENCLAW_GATEWAY_PORT = '7923'
$openclawCli = Join-Path $env:APPDATA 'npm\node_modules\openclaw\openclaw.mjs'
& node $openclawCli @args
exit $LASTEXITCODE
