$focRoot = Split-Path -Parent $PSScriptRoot
$openclawRoot = Join-Path $focRoot '.openclaw'
$env:OPENCLAW_STATE_DIR = $openclawRoot
$env:OPENCLAW_CONFIG_PATH = Join-Path $openclawRoot 'openclaw.json'
$env:OPENCLAW_WORKSPACE = Join-Path $focRoot 'Workspace'
$env:OPENCLAW_GATEWAY_PORT = '7923'
# Prefer the version pinned in package.json (installed under the repo) and
# fall back to a global install, so this wrapper and bin/openclaw.cmd agree
# on which CLI they run.
$localCli = Join-Path $focRoot 'node_modules\openclaw\openclaw.mjs'
$globalCli = Join-Path $env:APPDATA 'npm\node_modules\openclaw\openclaw.mjs'
if (Test-Path -LiteralPath $localCli -PathType Leaf) {
  $openclawCli = $localCli
}
elseif (Test-Path -LiteralPath $globalCli -PathType Leaf) {
  $openclawCli = $globalCli
}
else {
  Write-Error "openclaw CLI not found at $localCli or $globalCli."
  exit 1
}

& node $openclawCli @args
exit $LASTEXITCODE
