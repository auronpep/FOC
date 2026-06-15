$ErrorActionPreference = 'Stop'
Set-StrictMode -Version Latest

$workspace = 'C:\FOC\Workspace'
$allQuestions = @(14709,14710,14712,14713,14714,14715,14716,14718,14719,14720,14723,14724,14726,14727,14731,14733,14734,14735,14736,14740,14742,14743,14745)
$statusPath = 'C:\FOC\Workspace\tasks\agent-runs\20260614-145811-supervise-remaining-14709-14745.status.txt'
$perQuestionTimeoutSeconds = 1800
$postCompleteGraceSeconds = 45

function Add-Status {
  param([string]$Message)

  $line = "$(Get-Date -Format o) $Message"
  Add-Content -LiteralPath $statusPath -Value $line
  Write-Host $line
}

function Stop-ProcessTree {
  param([int]$ProcessId)

  $children = @(Get-CimInstance Win32_Process | Where-Object { $_.ParentProcessId -eq $ProcessId })
  foreach ($child in $children) {
    Stop-ProcessTree -ProcessId ([int]$child.ProcessId)
  }

  $process = Get-Process -Id $ProcessId -ErrorAction SilentlyContinue
  if ($process) {
    Stop-Process -Id $ProcessId -Force
  }
}

Set-Content -LiteralPath $statusPath -Value @(
  "$(Get-Date -Format o) Status: running"
  "$(Get-Date -Format o) Workspace: $workspace"
  "$(Get-Date -Format o) Questions: $($allQuestions -join ',')"
)

foreach ($q in $allQuestions) {
  $outputPath = Join-Path $workspace "Finished\CQ$q.md"
  if (Test-Path -LiteralPath $outputPath -PathType Leaf) {
    Add-Status "Q$q skip-existing $outputPath"
    continue
  }

  $scriptPath = Join-Path $workspace 'RUN_Cod.ps1'
  $args = @(
    '-NoProfile',
    '-ExecutionPolicy', 'Bypass',
    '-File', $scriptPath,
    '-Questions', [string]$q,
    '-Mode', 'CodexEphemeral',
    '-Run'
  )

  Add-Status "Q$q launch"
  $child = Start-Process -FilePath 'pwsh' -ArgumentList $args -WorkingDirectory $workspace -WindowStyle Normal -PassThru
  Add-Status "Q$q pid=$($child.Id)"

  $started = Get-Date
  $completeDetectedAt = $null

  while ($true) {
    Start-Sleep -Seconds 15

    $process = Get-Process -Id $child.Id -ErrorAction SilentlyContinue
    $outputExists = Test-Path -LiteralPath $outputPath -PathType Leaf
    $todoComplete = Select-String -LiteralPath (Join-Path $workspace 'tasks\todo.md') -Pattern "Stopped after Q$q" -Quiet

    if (-not $process) {
      if ($outputExists) {
        Add-Status "Q$q process-exited output-present"
        break
      }

      throw "Q$q process exited before expected output existed: $outputPath"
    }

    if ($outputExists -and $todoComplete) {
      if (-not $completeDetectedAt) {
        $completeDetectedAt = Get-Date
        Add-Status "Q$q complete-marker-detected; waiting $postCompleteGraceSeconds seconds for clean CLI exit"
      }

      if (((Get-Date) - $completeDetectedAt).TotalSeconds -ge $postCompleteGraceSeconds) {
        Add-Status "Q$q stopping hung process tree after verified output and todo marker"
        Stop-ProcessTree -ProcessId $child.Id
        break
      }
    }

    if (((Get-Date) - $started).TotalSeconds -ge $perQuestionTimeoutSeconds) {
      Add-Status "Q$q timeout; stopping process tree"
      Stop-ProcessTree -ProcessId $child.Id
      throw "Q$q timed out after $perQuestionTimeoutSeconds seconds."
    }
  }
}

Add-Status 'Status: complete'
