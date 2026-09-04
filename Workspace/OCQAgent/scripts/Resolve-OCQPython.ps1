# Shared helper: locate a usable Python interpreter for the OCQ scripts.
# Dot-source this file, then call Resolve-OCQPython.

function Resolve-OCQPython {
  [CmdletBinding()]
  param()

  # Preserve the original authoring machine's interpreter when it is present.
  $legacy = 'C:\Users\Blessed\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe'
  if (Test-Path -LiteralPath $legacy -PathType Leaf) {
    return $legacy
  }

  foreach ($name in 'python', 'py', 'python3') {
    $command = Get-Command $name -ErrorAction SilentlyContinue
    if (-not $command) { continue }
    $source = $command.Source
    if (-not $source) { continue }

    # Get-Command only proves the name resolves, not that it runs: Windows App
    # Execution Aliases and partial installs both land on PATH. Execute the
    # candidate before returning it.
    try {
      & $source -c 'import sys' 2>$null | Out-Null
      if ($LASTEXITCODE -eq 0) { return $source }
    } catch {
      continue
    }
  }

  throw "No usable Python interpreter found. Install Python or pass -PythonPath explicitly."
}
