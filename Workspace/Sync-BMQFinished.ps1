[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [string]$LocalFinished = 'C:\FOC\Workspace\Finished',
    [string]$RemoteFinished = 'N:\FOC\Workspace\Finished',
    [string]$CsvPath = ''
)

$ErrorActionPreference = 'Stop'

function Resolve-OrCreateDirectory {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path,

        [Parameter(Mandatory = $true)]
        [string]$Label
    )

    $parent = Split-Path -Parent $Path
    if ($parent -and -not (Test-Path -LiteralPath $parent -PathType Container)) {
        throw "$Label parent directory is not reachable: $parent"
    }

    if (-not (Test-Path -LiteralPath $Path -PathType Container)) {
        New-Item -ItemType Directory -Path $Path -Force | Out-Null
    }

    return (Resolve-Path -LiteralPath $Path).Path.TrimEnd('\')
}

function Get-RelativeFileMap {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Root
    )

    $map = @{}
    Get-ChildItem -LiteralPath $Root -File -Recurse -Force |
        Where-Object { $_.Name -ne 'complete.csv' } |
        ForEach-Object {
            $relativePath = $_.FullName.Substring($Root.Length).TrimStart('\', '/')
            $key = $relativePath.ToLowerInvariant()
            if (-not $map.ContainsKey($key)) {
                $map[$key] = [pscustomobject]@{
                    RelativePath = $relativePath
                    FullName = $_.FullName
                }
            }
        }

    return $map
}

function Copy-MissingFiles {
    param(
        [Parameter(Mandatory = $true)]
        [hashtable]$SourceMap,

        [Parameter(Mandatory = $true)]
        [hashtable]$DestinationMap,

        [Parameter(Mandatory = $true)]
        [string]$DestinationRoot,

        [Parameter(Mandatory = $true)]
        [string]$Direction
    )

    $copied = New-Object System.Collections.Generic.List[string]
    foreach ($key in ($SourceMap.Keys | Sort-Object)) {
        if ($DestinationMap.ContainsKey($key)) {
            continue
        }

        $sourceFile = $SourceMap[$key].FullName
        $relativePath = $SourceMap[$key].RelativePath
        $destinationFile = Join-Path -Path $DestinationRoot -ChildPath $relativePath
        $destinationDirectory = Split-Path -Parent $destinationFile

        if ($PSCmdlet.ShouldProcess($destinationFile, "Copy missing file from $sourceFile")) {
            if (-not (Test-Path -LiteralPath $destinationDirectory -PathType Container)) {
                New-Item -ItemType Directory -Path $destinationDirectory -Force | Out-Null
            }
            Copy-Item -LiteralPath $sourceFile -Destination $destinationFile
            $copied.Add("$Direction $relativePath") | Out-Null
        }
    }

    return $copied
}

function Get-CompletionRows {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Root
    )

    $ids = @{}
    Get-ChildItem -LiteralPath $Root -File -Filter '*.md' -Force |
        ForEach-Object {
            if ($_.Name -match '^CQ(?<id>\d+).*\.md$') {
                $ids[$Matches.id] = $true
            }
        }

    foreach ($id in ($ids.Keys | Sort-Object { [int64]$_ })) {
        [pscustomobject]@{
            barmatrix_question_number = $id
            status = 'complete'
        }
    }
}

$localRoot = Resolve-OrCreateDirectory -Path $LocalFinished -Label 'Local Finished'
$remoteRoot = Resolve-OrCreateDirectory -Path $RemoteFinished -Label 'Remote Finished'
if ([string]::IsNullOrWhiteSpace($CsvPath)) {
    $CsvPath = Join-Path -Path $localRoot -ChildPath 'complete.csv'
}

$localMap = Get-RelativeFileMap -Root $localRoot
$remoteMap = Get-RelativeFileMap -Root $remoteRoot

$localToRemote = Copy-MissingFiles -SourceMap $localMap -DestinationMap $remoteMap -DestinationRoot $remoteRoot -Direction 'local->remote'
$remoteToLocal = Copy-MissingFiles -SourceMap $remoteMap -DestinationMap $localMap -DestinationRoot $localRoot -Direction 'remote->local'

$completionRows = @(Get-CompletionRows -Root $localRoot)
if ($PSCmdlet.ShouldProcess($CsvPath, 'Write completion CSV')) {
    if ($completionRows.Count -eq 0) {
        Set-Content -LiteralPath $CsvPath -Value 'barmatrix_question_number,status' -Encoding UTF8
    }
    else {
        $completionRows | Export-Csv -LiteralPath $CsvPath -NoTypeInformation -Encoding UTF8
    }
}

[pscustomobject]@{
    LocalFinished = $localRoot
    RemoteFinished = $remoteRoot
    CopiedLocalToRemote = $localToRemote.Count
    CopiedRemoteToLocal = $remoteToLocal.Count
    CompleteCsv = $CsvPath
    CompleteRows = $completionRows.Count
}
