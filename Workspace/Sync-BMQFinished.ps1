[CmdletBinding(SupportsShouldProcess = $true)]
param(
    [string]$LocalFinished = 'C:\FOC\Workspace\Finished',
    [string]$RemoteFinished = 'N:\FOC\Workspace\Finished',
    [string]$CsvPath = '',
    [string]$XlsxPath = ''
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
        Where-Object { $_.Name -notin @('complete.csv', 'complete.xlsx') } |
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

function Write-Utf8NoBom {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Path,

        [Parameter(Mandatory = $true)]
        [string]$Value
    )

    $encoding = New-Object System.Text.UTF8Encoding($false)
    [System.IO.File]::WriteAllText($Path, $Value, $encoding)
}

function ConvertTo-OpenXmlText {
    param(
        [AllowNull()]
        [object]$Value
    )

    return [System.Security.SecurityElement]::Escape([string]$Value)
}

function New-InlineStringCell {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Reference,

        [AllowNull()]
        [object]$Value
    )

    $escapedValue = ConvertTo-OpenXmlText -Value $Value
    return "<c r=`"$Reference`" t=`"inlineStr`"><is><t>$escapedValue</t></is></c>"
}

function New-NumberCell {
    param(
        [Parameter(Mandatory = $true)]
        [string]$Reference,

        [Parameter(Mandatory = $true)]
        [int64]$Value
    )

    return "<c r=`"$Reference`"><v>$Value</v></c>"
}

function Write-CompletionXlsx {
    param(
        [Parameter(Mandatory = $true)]
        [AllowEmptyCollection()]
        [array]$Rows,

        [Parameter(Mandatory = $true)]
        [string]$Path
    )

    Add-Type -AssemblyName System.IO.Compression.FileSystem

    $tempRoot = Join-Path -Path ([System.IO.Path]::GetTempPath()) -ChildPath ('syncbmq-xlsx-' + [guid]::NewGuid().ToString('N'))
    New-Item -ItemType Directory -Path $tempRoot -Force | Out-Null

    try {
        New-Item -ItemType Directory -Path (Join-Path -Path $tempRoot -ChildPath '_rels') -Force | Out-Null
        New-Item -ItemType Directory -Path (Join-Path -Path $tempRoot -ChildPath 'xl') -Force | Out-Null
        New-Item -ItemType Directory -Path (Join-Path -Path $tempRoot -ChildPath 'xl\_rels') -Force | Out-Null
        New-Item -ItemType Directory -Path (Join-Path -Path $tempRoot -ChildPath 'xl\worksheets') -Force | Out-Null

        Write-Utf8NoBom -Path (Join-Path -Path $tempRoot -ChildPath '[Content_Types].xml') -Value @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Types xmlns="http://schemas.openxmlformats.org/package/2006/content-types">
  <Default Extension="rels" ContentType="application/vnd.openxmlformats-package.relationships+xml"/>
  <Default Extension="xml" ContentType="application/xml"/>
  <Override PartName="/xl/workbook.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet.main+xml"/>
  <Override PartName="/xl/worksheets/sheet1.xml" ContentType="application/vnd.openxmlformats-officedocument.spreadsheetml.worksheet+xml"/>
</Types>
'@

        Write-Utf8NoBom -Path (Join-Path -Path $tempRoot -ChildPath '_rels\.rels') -Value @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/officeDocument" Target="xl/workbook.xml"/>
</Relationships>
'@

        Write-Utf8NoBom -Path (Join-Path -Path $tempRoot -ChildPath 'xl\workbook.xml') -Value @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<workbook xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main" xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships">
  <sheets>
    <sheet name="complete" sheetId="1" r:id="rId1"/>
  </sheets>
</workbook>
'@

        Write-Utf8NoBom -Path (Join-Path -Path $tempRoot -ChildPath 'xl\_rels\workbook.xml.rels') -Value @'
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<Relationships xmlns="http://schemas.openxmlformats.org/package/2006/relationships">
  <Relationship Id="rId1" Type="http://schemas.openxmlformats.org/officeDocument/2006/relationships/worksheet" Target="worksheets/sheet1.xml"/>
</Relationships>
'@

        $sheetRows = New-Object System.Collections.Generic.List[string]
        $sheetRows.Add(('<row r="1">{0}{1}</row>' -f `
            (New-InlineStringCell -Reference 'A1' -Value 'barmatrix_question_number'),
            (New-InlineStringCell -Reference 'B1' -Value 'status'))) | Out-Null

        for ($i = 0; $i -lt $Rows.Count; $i++) {
            $rowNumber = $i + 2
            $sheetRows.Add(('<row r="{0}">{1}{2}</row>' -f `
                $rowNumber,
                (New-NumberCell -Reference "A$rowNumber" -Value ([int64]$Rows[$i].barmatrix_question_number)),
                (New-InlineStringCell -Reference "B$rowNumber" -Value $Rows[$i].status))) | Out-Null
        }

        $lastRow = [Math]::Max(1, $Rows.Count + 1)
        $sheetData = $sheetRows -join "`n"
        $sheetXml = @"
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<worksheet xmlns="http://schemas.openxmlformats.org/spreadsheetml/2006/main">
  <dimension ref="A1:B$lastRow"/>
  <cols>
    <col min="1" max="1" width="28" customWidth="1"/>
    <col min="2" max="2" width="14" customWidth="1"/>
  </cols>
  <sheetData>
$sheetData
  </sheetData>
</worksheet>
"@
        Write-Utf8NoBom -Path (Join-Path -Path $tempRoot -ChildPath 'xl\worksheets\sheet1.xml') -Value $sheetXml

        if (Test-Path -LiteralPath $Path -PathType Leaf) {
            Remove-Item -LiteralPath $Path -Force
        }

        [System.IO.Compression.ZipFile]::CreateFromDirectory($tempRoot, $Path)
    }
    finally {
        if (Test-Path -LiteralPath $tempRoot -PathType Container) {
            Remove-Item -LiteralPath $tempRoot -Recurse -Force
        }
    }
}

$localRoot = Resolve-OrCreateDirectory -Path $LocalFinished -Label 'Local Finished'
$remoteRoot = Resolve-OrCreateDirectory -Path $RemoteFinished -Label 'Remote Finished'
if ([string]::IsNullOrWhiteSpace($CsvPath)) {
    $CsvPath = Join-Path -Path $localRoot -ChildPath 'complete.csv'
}
if ([string]::IsNullOrWhiteSpace($XlsxPath)) {
    $XlsxPath = Join-Path -Path $localRoot -ChildPath 'complete.xlsx'
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
if ($PSCmdlet.ShouldProcess($XlsxPath, 'Write completion XLSX')) {
    Write-CompletionXlsx -Rows $completionRows -Path $XlsxPath
}

[pscustomobject]@{
    LocalFinished = $localRoot
    RemoteFinished = $remoteRoot
    CopiedLocalToRemote = $localToRemote.Count
    CopiedRemoteToLocal = $remoteToLocal.Count
    CompleteCsv = $CsvPath
    CompleteXlsx = $XlsxPath
    CompleteRows = $completionRows.Count
}
