param(
  [string]$OutputDir = 'C:\FOC\outputs\barmatrix-c-drive-index-20260620-223636',
  [int]$FileRowsPerPart = 200000
)

$ErrorActionPreference = 'Stop'

$roots = @(
  [pscustomobject]@{ Root = 'C:\_bmo_backups'; Reason = 'BMO backup folder' },
  [pscustomobject]@{ Root = 'C:\ABM'; Reason = 'Known BarMatrix launch workspace' },
  [pscustomobject]@{ Root = 'C:\ABM-deploy-site-audit-20260612'; Reason = 'ABM deploy/site audit folder' },
  [pscustomobject]@{ Root = 'C:\AG-BM-app'; Reason = 'BM app workspace' },
  [pscustomobject]@{ Root = 'C:\BARMATRIX'; Reason = 'Exact BarMatrix root' },
  [pscustomobject]@{ Root = 'C:\BarMatrix_Content'; Reason = 'Exact BarMatrix content root' },
  [pscustomobject]@{ Root = 'C:\BarMatrix_Other_Review'; Reason = 'Exact BarMatrix review root' },
  [pscustomobject]@{ Root = 'C:\barmatrix-api'; Reason = 'BarMatrix API repo' },
  [pscustomobject]@{ Root = 'C:\barmatrix-app'; Reason = 'BarMatrix app repo' },
  [pscustomobject]@{ Root = 'C:\barmatrix-app-atlas-answer-bridge'; Reason = 'BarMatrix app worktree' },
  [pscustomobject]@{ Root = 'C:\barmatrix-canon'; Reason = 'BarMatrix canon folder' },
  [pscustomobject]@{ Root = 'C:\barmatrix-site'; Reason = 'BarMatrix site repo' },
  [pscustomobject]@{ Root = 'C:\BMO'; Reason = 'Known BarMatrix ops hub' },
  [pscustomobject]@{ Root = 'C:\BMO-landing_pages'; Reason = 'BMO landing pages folder' },
  [pscustomobject]@{ Root = 'C:\bmo-tmp'; Reason = 'BMO temporary workspace' },
  [pscustomobject]@{ Root = 'C:\BMP'; Reason = 'Known BarMatrix planning/review hub' },
  [pscustomobject]@{ Root = 'C:\BMSite'; Reason = 'BM site folder' },
  [pscustomobject]@{ Root = 'C:\CCG'; Reason = 'Known BarMatrix CQ source folder' },
  [pscustomobject]@{ Root = 'C:\CG'; Reason = 'Known BarMatrix CodeGraph/setup folder' },
  [pscustomobject]@{ Root = 'C:\FOC'; Reason = 'Current BarMatrix/FoC workspace' }
)

New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null
$resolvedOutput = (Resolve-Path -LiteralPath $OutputDir).Path.TrimEnd('\')
$outputLower = $resolvedOutput.ToLowerInvariant()

function Clean-Field {
  param([object]$Value)
  if ($null -eq $Value) { return '' }
  return ([string]$Value).Replace("`t", ' ').Replace("`r", ' ').Replace("`n", ' ')
}

function Write-TsvRow {
  param(
    [System.IO.StreamWriter]$Writer,
    [object[]]$Values
  )
  $Writer.WriteLine((($Values | ForEach-Object { Clean-Field $_ }) -join "`t"))
}

$utf8NoBom = [System.Text.UTF8Encoding]::new($false)

$scopeWriter = [System.IO.StreamWriter]::new((Join-Path $OutputDir 'scope.tsv'), $false, $utf8NoBom)
$summaryWriter = [System.IO.StreamWriter]::new((Join-Path $OutputDir 'root_summary.tsv'), $false, $utf8NoBom)
$folderWriter = [System.IO.StreamWriter]::new((Join-Path $OutputDir 'folders.tsv'), $false, $utf8NoBom)
$errorWriter = [System.IO.StreamWriter]::new((Join-Path $OutputDir 'errors.tsv'), $false, $utf8NoBom)

Write-TsvRow $scopeWriter @('root', 'reason', 'exists')
Write-TsvRow $summaryWriter @('root', 'reason', 'files', 'folder_rows', 'size_bytes', 'errors', 'skipped_reparse_or_excluded', 'seconds')
Write-TsvRow $folderWriter @('root', 'folder_path', 'parent_path', 'folder_name', 'direct_file_count', 'direct_folder_count', 'direct_size_bytes', 'created', 'modified', 'attributes', 'skipped_reason', 'link_type', 'target')
Write-TsvRow $errorWriter @('root', 'path', 'error_type', 'message')

$script:filePart = 0
$script:fileRowsInPart = 0
$script:fileWriter = $null
$script:filePartPaths = [System.Collections.Generic.List[string]]::new()

function Open-NextFilePart {
  if ($null -ne $script:fileWriter) {
    $script:fileWriter.Dispose()
  }
  $script:filePart++
  $script:fileRowsInPart = 0
  $partPath = Join-Path $OutputDir ("files_{0:D3}.tsv" -f $script:filePart)
  $script:filePartPaths.Add($partPath)
  $script:fileWriter = [System.IO.StreamWriter]::new($partPath, $false, $utf8NoBom)
  Write-TsvRow $script:fileWriter @('root', 'file_path', 'folder_path', 'file_name', 'extension', 'size_bytes', 'created', 'modified', 'attributes')
}

function Write-FileRow {
  param([object[]]$Values)
  if (($null -eq $script:fileWriter) -or ($script:fileRowsInPart -ge $FileRowsPerPart)) {
    Open-NextFilePart
  }
  Write-TsvRow $script:fileWriter $Values
  $script:fileRowsInPart++
}

function New-FolderStat {
  param(
    [string]$Root,
    [string]$FolderPath,
    [System.IO.FileSystemInfo]$Item
  )
  $parent = Split-Path -Parent $FolderPath
  $name = Split-Path -Leaf $FolderPath
  [pscustomobject]@{
    Root = $Root
    FolderPath = $FolderPath
    ParentPath = $parent
    FolderName = $name
    DirectFileCount = 0
    DirectFolderCount = 0
    DirectSizeBytes = [int64]0
    Created = if ($Item) { $Item.CreationTime.ToString('o') } else { '' }
    Modified = if ($Item) { $Item.LastWriteTime.ToString('o') } else { '' }
    Attributes = if ($Item) { [string]$Item.Attributes } else { '' }
    SkippedReason = ''
    LinkType = if ($Item.PSObject.Properties.Name -contains 'LinkType') { [string]$Item.LinkType } else { '' }
    Target = if ($Item.PSObject.Properties.Name -contains 'Target') { [string]$Item.Target } else { '' }
  }
}

function Ensure-FolderStat {
  param(
    [hashtable]$FolderStats,
    [string]$Root,
    [string]$FolderPath,
    [System.IO.FileSystemInfo]$Item
  )
  $key = $FolderPath.ToLowerInvariant()
  if (-not $FolderStats.ContainsKey($key)) {
    $FolderStats[$key] = New-FolderStat -Root $Root -FolderPath $FolderPath -Item $Item
  } elseif ($Item) {
    if (-not $FolderStats[$key].Created) { $FolderStats[$key].Created = $Item.CreationTime.ToString('o') }
    if (-not $FolderStats[$key].Modified) { $FolderStats[$key].Modified = $Item.LastWriteTime.ToString('o') }
    if (-not $FolderStats[$key].Attributes) { $FolderStats[$key].Attributes = [string]$Item.Attributes }
    if (-not $FolderStats[$key].LinkType -and ($Item.PSObject.Properties.Name -contains 'LinkType')) { $FolderStats[$key].LinkType = [string]$Item.LinkType }
    if (-not $FolderStats[$key].Target -and ($Item.PSObject.Properties.Name -contains 'Target')) { $FolderStats[$key].Target = [string]$Item.Target }
  }
  return $FolderStats[$key]
}

try {
  foreach ($entry in $roots) {
    $root = $entry.Root
    $exists = Test-Path -LiteralPath $root
    Write-TsvRow $scopeWriter @($root, $entry.Reason, $exists)
    if (-not $exists) { continue }

    $sw = [System.Diagnostics.Stopwatch]::StartNew()
    $folderStats = @{}
    $rootFiles = 0
    $rootBytes = [int64]0
    $rootErrors = 0
    $rootSkipped = 0
    $stack = [System.Collections.Generic.Stack[string]]::new()

    try {
      $rootItem = Get-Item -LiteralPath $root -Force -ErrorAction Stop
      [void](Ensure-FolderStat -FolderStats $folderStats -Root $root -FolderPath $rootItem.FullName -Item $rootItem)
      $stack.Push($rootItem.FullName)
    } catch {
      $rootErrors++
      Write-TsvRow $errorWriter @($root, $root, $_.Exception.GetType().Name, $_.Exception.Message)
    }

    while ($stack.Count -gt 0) {
      $dir = $stack.Pop()
      if ($dir.TrimEnd('\').ToLowerInvariant() -eq $outputLower) {
        $stat = Ensure-FolderStat -FolderStats $folderStats -Root $root -FolderPath $dir -Item $null
        $stat.SkippedReason = 'excluded_output_workspace'
        $rootSkipped++
        continue
      }

      try {
        $children = Get-ChildItem -LiteralPath $dir -Force -ErrorAction Stop
      } catch {
        $rootErrors++
        Write-TsvRow $errorWriter @($root, $dir, $_.Exception.GetType().Name, $_.Exception.Message)
        continue
      }

      foreach ($child in $children) {
        if ($child.PSIsContainer) {
          $parentStat = Ensure-FolderStat -FolderStats $folderStats -Root $root -FolderPath $dir -Item $null
          $parentStat.DirectFolderCount++

          $childStat = Ensure-FolderStat -FolderStats $folderStats -Root $root -FolderPath $child.FullName -Item $child
          $isOutput = $child.FullName.TrimEnd('\').ToLowerInvariant() -eq $outputLower
          $isReparse = ($child.Attributes -band [System.IO.FileAttributes]::ReparsePoint) -ne 0
          if ($isOutput) {
            $childStat.SkippedReason = 'excluded_output_workspace'
            $rootSkipped++
          } elseif ($isReparse) {
            $childStat.SkippedReason = 'reparse_point_not_followed'
            $rootSkipped++
          } else {
            $stack.Push($child.FullName)
          }
        } else {
          $parentStat = Ensure-FolderStat -FolderStats $folderStats -Root $root -FolderPath $child.DirectoryName -Item $null
          $parentStat.DirectFileCount++
          $parentStat.DirectSizeBytes += [int64]$child.Length
          $rootFiles++
          $rootBytes += [int64]$child.Length
          Write-FileRow @($root, $child.FullName, $child.DirectoryName, $child.Name, $child.Extension, $child.Length, $child.CreationTime.ToString('o'), $child.LastWriteTime.ToString('o'), [string]$child.Attributes)
        }
      }
    }

    $folderRows = 0
    foreach ($stat in ($folderStats.Values | Sort-Object FolderPath)) {
      if (($stat.DirectFileCount -gt 0) -or ($stat.DirectFolderCount -gt 0) -or $stat.SkippedReason -or ($stat.FolderPath -eq $root)) {
        $folderRows++
        Write-TsvRow $folderWriter @(
          $stat.Root,
          $stat.FolderPath,
          $stat.ParentPath,
          $stat.FolderName,
          $stat.DirectFileCount,
          $stat.DirectFolderCount,
          $stat.DirectSizeBytes,
          $stat.Created,
          $stat.Modified,
          $stat.Attributes,
          $stat.SkippedReason,
          $stat.LinkType,
          $stat.Target
        )
      }
    }

    $sw.Stop()
    Write-TsvRow $summaryWriter @($root, $entry.Reason, $rootFiles, $folderRows, $rootBytes, $rootErrors, $rootSkipped, [Math]::Round($sw.Elapsed.TotalSeconds, 2))
  }
} finally {
  if ($null -ne $script:fileWriter) { $script:fileWriter.Dispose() }
  $scopeWriter.Dispose()
  $summaryWriter.Dispose()
  $folderWriter.Dispose()
  $errorWriter.Dispose()
}

[pscustomobject]@{
  OutputDir = $OutputDir
  FileParts = $script:filePartPaths
} | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath (Join-Path $OutputDir 'scan_manifest.json') -Encoding UTF8
