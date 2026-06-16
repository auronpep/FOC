$env:OPENCLAW_STATE_DIR = 'C:\FOC\.openclaw'
$env:OPENCLAW_CONFIG_PATH = 'C:\FOC\.openclaw\openclaw.json'
$env:OPENCLAW_WORKSPACE = 'C:\FOC\Workspace'
$env:OPENCLAW_GATEWAY_PORT = '7421'
& node 'C:\FOC\node_modules\openclaw\openclaw.mjs' @args
exit $LASTEXITCODE
