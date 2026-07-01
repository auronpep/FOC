$ErrorActionPreference = 'Stop'

$Workspace = 'C:\FOC\Workspace'
$OpenClaw = 'C:\FOC\bin\openclaw.ps1'
$TabCount = 10

if (-not (Get-Command wt.exe -ErrorAction SilentlyContinue)) {
  throw 'Windows Terminal (wt.exe) was not found.'
}

if (-not (Get-Command pwsh -ErrorAction SilentlyContinue)) {
  throw 'PowerShell 7 (pwsh) was not found.'
}

if (-not (Test-Path -LiteralPath $Workspace)) {
  throw "Workspace not found: $Workspace"
}

if (-not (Test-Path -LiteralPath $OpenClaw)) {
  throw "OpenClaw launcher not found: $OpenClaw"
}

$wtArgs = @()

for ($i = 1; $i -le $TabCount; $i++) {
  $tabScript = @"
`$ErrorActionPreference = 'Stop'
Set-Location -LiteralPath '$Workspace'

`$esc = [char]27
`$bel = [char]7

function Set-TabTitle([string]`$Title) {
  [Console]::Out.Write("`$esc]0;`$Title`$bel")
}

function Set-TerminalProgress([int]`$State, [int]`$Percent = 0) {
  [Console]::Out.Write("`$esc]9;4;`$State;`$Percent`$bel")
}

Set-TabTitle 'OpenClaw $i RUNNING'
Set-TerminalProgress 3 0

try {
  & '$OpenClaw' tui
  `$code = if (`$null -eq `$LASTEXITCODE) { 0 } else { `$LASTEXITCODE }
} catch {
  Write-Error `$_
  `$code = 1
}

if (`$code -eq 0) {
  Set-TabTitle 'OpenClaw $i DONE'
  Set-TerminalProgress 1 100
  Write-Host ''
  Write-Host 'OpenClaw $i finished.' -ForegroundColor Green
} else {
  Set-TabTitle 'OpenClaw $i FAILED'
  Set-TerminalProgress 2 100
  Write-Host ''
  Write-Host "OpenClaw $i exited with code `$code." -ForegroundColor Red
}

[Console]::Out.Write("`$bel")
try {
  [Console]::Beep(880, 180)
  Start-Sleep -Milliseconds 80
  [Console]::Beep(988, 220)
} catch {}

Read-Host 'Press Enter to close this tab'
exit `$code
"@

  $encoded = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($tabScript))

  if ($i -gt 1) {
    $wtArgs += ';'
  }

  $wtArgs += @(
    'new-tab',
    '--title', "OpenClaw $i",
    '--tabColor', '#1565C0',
    'pwsh',
    '-NoProfile',
    '-EncodedCommand', $encoded
  )
}

& wt.exe @wtArgs
