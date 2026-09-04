$script:BMFocRoot = Split-Path -Parent $PSScriptRoot
$script:BMJsonWorkspaceRoot = Join-Path $script:BMFocRoot 'Workspace'
$script:BMJsonPwsh = 'C:\Program Files\PowerShell\7\pwsh.exe'
if (-not (Test-Path -LiteralPath $script:BMJsonPwsh -PathType Leaf)) {
    $script:BMJsonPwsh = 'pwsh'
}

function foc-openclaw {
    & (Join-Path $script:BMFocRoot 'bin\openclaw.ps1') @args
}

function syncbmq {
    & (Join-Path $script:BMJsonWorkspaceRoot 'Sync-BMQFinished.ps1') @args
}

function buildbmjson {
    [CmdletBinding(PositionalBinding = $false)]
    param(
        [string]$ScriptPath = (Join-Path $script:BMJsonWorkspaceRoot 'New-OpenClawLPOCManifest.ps1'),
        [string]$CsvPath = (Join-Path $script:BMJsonWorkspaceRoot 'incoming\LPOC.csv'),
        [string]$ManifestPath = (Join-Path $script:BMJsonWorkspaceRoot 'incoming\LPOC.openclaw-manifest.json'),
        [string]$PreviewPath = (Join-Path $script:BMJsonWorkspaceRoot 'incoming\LPOC.commands.preview.ps1'),
        [string]$WorkspaceRoot = $script:BMJsonWorkspaceRoot,
        [string]$OpenClawPath = (Join-Path $script:BMFocRoot 'bin\openclaw.ps1'),
        [string]$Agent = 'main',
        [string]$Delimiter,
        [int]$TimeoutSeconds = 28800,
        [int]$PreviewLimit = 11
    )

    if (-not (Test-Path -LiteralPath $ScriptPath -PathType Leaf)) {
        throw "Manifest builder not found: $ScriptPath"
    }

    $argsList = @(
        '-NoProfile',
        '-ExecutionPolicy', 'Bypass',
        '-File', $ScriptPath,
        '-CsvPath', $CsvPath,
        '-ManifestPath', $ManifestPath,
        '-PreviewPath', $PreviewPath,
        '-WorkspaceRoot', $WorkspaceRoot,
        '-OpenClawPath', $OpenClawPath,
        '-Agent', $Agent,
        '-TimeoutSeconds', ([string]$TimeoutSeconds),
        '-PreviewLimit', ([string]$PreviewLimit)
    )

    if ($PSBoundParameters.ContainsKey('Delimiter')) {
        $argsList += @('-Delimiter', $Delimiter)
    }

    $output = & $script:BMJsonPwsh @argsList 2>&1
    $exitCode = $LASTEXITCODE
    $output

    if ($exitCode -ne 0) {
        throw "buildbmjson failed with exit code $exitCode"
    }
}

function runbmjson {
    [CmdletBinding(PositionalBinding = $false)]
    param(
        [switch]$DryRun,
        [Alias('clean-skip')]
        [switch]$CleanSkip,
        [Alias('clean-limit')]
        [int]$CleanLimit = 0,
        [string]$ScriptPath = (Join-Path $script:BMJsonWorkspaceRoot 'Start-OpenClawLPOCBatch.ps1'),
        [string]$CsvPath = (Join-Path $script:BMJsonWorkspaceRoot 'incoming\LPOC.csv'),
        [string]$ManifestPath = (Join-Path $script:BMJsonWorkspaceRoot 'incoming\LPOC.openclaw-manifest.json'),
        [string]$OpenClawPath = (Join-Path $script:BMFocRoot 'bin\openclaw.ps1'),
        [string]$ResultsRoot = (Join-Path $script:BMJsonWorkspaceRoot 'OpenClawBatchResults'),
        [int]$ThrottleLimit = 8,
        [int]$Limit = 0,
        [int]$Skip = 0,
        [switch]$NoSkipExisting,
        [switch]$Build,
        [switch]$Launch,
        [switch]$Force,
        [switch]$SkipVerify,
        [switch]$RequireLedger,
        [switch]$AllowLegacyValidation,
        [switch]$AllowRunningTasks,
        [string]$RunLabel
    )

    if ($CleanLimit -lt 0) {
        throw 'CleanLimit must be 0 or greater.'
    }
    if ($Limit -lt 0) {
        throw 'Limit must be 0 or greater.'
    }
    if ($Skip -lt 0) {
        throw 'Skip must be 0 or greater.'
    }
    if ($ThrottleLimit -lt 1) {
        throw 'ThrottleLimit must be at least 1.'
    }
    if ($CleanLimit -gt 0 -and $Limit -gt 0) {
        throw 'Use -CleanLimit or -Limit, not both. CleanLimit already means first N rows without CQ output files.'
    }
    if ($CleanLimit -gt 0 -and $Force) {
        throw 'Use -CleanLimit for missing-output work, or -Force to regenerate existing outputs, not both.'
    }

    $shouldLaunch = -not $DryRun
    if ($PSBoundParameters.ContainsKey('Launch')) {
        $shouldLaunch = [bool]$Launch
    }

    if ([string]::IsNullOrWhiteSpace($RunLabel)) {
        if ($CleanLimit -gt 0) {
            $prefix = if ($shouldLaunch) { 'lpoc-cleanlimit' } else { 'lpoc-cleanlimit-dryrun' }
        } else {
            $prefix = if ($shouldLaunch) { 'lpoc-overnight' } else { 'lpoc-dryrun' }
        }
        $RunLabel = $prefix + '-' + (Get-Date -Format 'yyyyMMdd-HHmmss')
    }

    if ($Build) {
        buildbmjson -CsvPath $CsvPath -ManifestPath $ManifestPath -WorkspaceRoot $script:BMJsonWorkspaceRoot -OpenClawPath $OpenClawPath | Out-Host
    }

    if (-not (Test-Path -LiteralPath $ScriptPath -PathType Leaf)) {
        throw "Batch runner not found: $ScriptPath"
    }

    if ($shouldLaunch -and -not $AllowRunningTasks) {
        try {
            $running = foc-openclaw tasks list --status running --json | ConvertFrom-Json
            if ([int]$running.count -gt 0) {
                throw "OpenClaw already has $($running.count) running task(s). Re-run with -AllowRunningTasks only if that is intentional."
            }
        } catch {
            throw "Could not confirm OpenClaw has no running tasks: $($_.Exception.Message)"
        }
    }

    $effectiveManifestPath = $ManifestPath
    $effectiveLimit = $Limit
    $effectiveSkip = $Skip

    if ($CleanLimit -gt 0) {
        if (-not (Test-Path -LiteralPath $ManifestPath -PathType Leaf)) {
            throw "Missing manifest for CleanLimit: $ManifestPath. Run buildbmjson first."
        }

        $manifest = Get-Content -Raw -LiteralPath $ManifestPath | ConvertFrom-Json
        if ($manifest.PSObject.Properties.Name -notcontains 'items') {
            throw "Manifest does not contain an items array: $ManifestPath"
        }

        $pending = @($manifest.items | Where-Object { -not (Test-Path -LiteralPath ([string]$_.outputPath)) })
        if ($Skip -gt 0) {
            $pending = @($pending | Select-Object -Skip $Skip)
        }
        $pending = @($pending | Select-Object -First $CleanLimit)

        if ($pending.Count -eq 0) {
            Write-Host 'CleanLimit found no selected work: no missing CQ output files matched the requested selection.'
            return
        }

        $manifestDir = Split-Path -Parent $ManifestPath
        $manifestStem = [IO.Path]::GetFileNameWithoutExtension($ManifestPath)
        if ($manifestStem -match '\.openclaw-manifest$') {
            $cleanStem = $manifestStem -replace '\.openclaw-manifest$', '.openclaw-cleanlimit'
        } else {
            $cleanStem = $manifestStem + '.openclaw-cleanlimit'
        }
        $effectiveManifestPath = Join-Path $manifestDir ("{0}-{1}.json" -f $cleanStem, (Get-Date -Format 'yyyyMMdd-HHmmss'))

        $cleanManifest = [pscustomobject]@{
            schema = $manifest.schema
            generatedAt = (Get-Date).ToString('o')
            sourceCsv = $manifest.sourceCsv
            delimiter = $manifest.delimiter
            count = $pending.Count
            defaults = $manifest.defaults
            items = $pending
        }
        $cleanManifest | ConvertTo-Json -Depth 12 | Set-Content -LiteralPath $effectiveManifestPath -Encoding UTF8

        $effectiveLimit = 0
        $effectiveSkip = 0
        Write-Host "CleanLimit selected $($pending.Count) item(s) without existing CQ output files."
        Write-Host "CleanLimit manifest: $effectiveManifestPath"
    }

    $argsList = @(
        '-NoProfile',
        '-ExecutionPolicy', 'Bypass',
        '-File', $ScriptPath,
        '-ManifestPath', $effectiveManifestPath,
        '-OpenClawPath', $OpenClawPath,
        '-ResultsRoot', $ResultsRoot,
        '-ThrottleLimit', ([string]$ThrottleLimit),
        '-RunLabel', $RunLabel
    )

    if ($shouldLaunch) {
        $argsList += '-Launch'
    }
    if (-not $NoSkipExisting -and ($CleanSkip -or $shouldLaunch)) {
        $argsList += '-SkipExisting'
    }
    if ($effectiveLimit -gt 0) {
        $argsList += @('-Limit', ([string]$effectiveLimit))
    }
    if ($effectiveSkip -gt 0) {
        $argsList += @('-Skip', ([string]$effectiveSkip))
    }
    if ($Force) {
        $argsList += '-Force'
    }
    if ($SkipVerify) {
        $argsList += '-SkipVerify'
    }
    if ($RequireLedger) {
        $argsList += '-RequireLedger'
    }
    if ($AllowLegacyValidation) {
        $argsList += '-AllowLegacyValidation'
    }

    $output = & $script:BMJsonPwsh @argsList 2>&1
    $exitCode = $LASTEXITCODE
    $output

    if ($exitCode -ne 0) {
        $combinedOutput = ($output | Out-String)
        if (($CleanSkip -or $CleanLimit -gt 0) -and $combinedOutput -match 'No items selected') {
            Write-Host 'CleanSkip/CleanLimit found no selected work: every selected CQ output file already exists.'
            return
        }
        throw "runbmjson failed with exit code $exitCode"
    }
}
