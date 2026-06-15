$ErrorActionPreference = 'Stop'

$workspace = 'C:\FOC\Workspace'
$questions = '14708,14709,14710,14712,14713,14714,14715,14716,14718,14719,14720,14723,14724,14726,14727,14731,14733,14734,14735,14736,14740,14742,14743,14745'
$statusPath = 'C:\FOC\Workspace\tasks\agent-runs\20260614-144832-run-remaining-14708-14745.status.txt'

@(
  'Status: running'
  "Started: $(Get-Date -Format o)"
  "Workspace: $workspace"
  "Questions: $questions"
) | Set-Content -LiteralPath $statusPath

try {
  Set-Location -LiteralPath $workspace
  & 'C:\FOC\Workspace\RUN_Cod.ps1' -Questions $questions -Mode CodexEphemeral -Run
  $exitCode = $LASTEXITCODE
  if ($null -eq $exitCode) {
    $exitCode = 0
  }

  Add-Content -LiteralPath $statusPath -Value "Finished: $(Get-Date -Format o)"
  Add-Content -LiteralPath $statusPath -Value "ExitCode: $exitCode"
  if ($exitCode -ne 0) {
    exit $exitCode
  }
} catch {
  Add-Content -LiteralPath $statusPath -Value "Failed: $(Get-Date -Format o)"
  Add-Content -LiteralPath $statusPath -Value "Error: $($_.Exception.Message)"
  exit 1
}
