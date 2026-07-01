$qbank = 'C:\FOC\Workspace\QBank'
$finished = 'C:\FOC\Workspace\Finished'

Write-Host '== QBank count =='
(Get-ChildItem -LiteralPath $qbank -Filter '*.md' | Where-Object { $_.Name -match '^[0-9]' }).Count

Write-Host '== Finished count =='
(Get-ChildItem -LiteralPath $finished -Filter 'CQ*.md' | Where-Object { $_.Name -match '^CQ[0-9]' }).Count

Write-Host '== Existing QBank sample (sorted) =='
Get-ChildItem -LiteralPath $qbank -Filter '*.md' |
  Where-Object { $_.Name -match '^[0-9]' } |
  Sort-Object { [int]($_.BaseName) } |
  Select-Object -First 8 Name

Write-Host '== 14432 exists? =='
Test-Path -LiteralPath (Join-Path $qbank '14432.md')
Get-Item -LiteralPath (Join-Path $qbank '14432.md') | Select-Object Name,Length

Write-Host '== Finished sample =='
Get-ChildItem -LiteralPath $finished -Filter 'CQ*.md' |
  Where-Object { $_.Name -match '^CQ[0-9]' } |
  Sort-Object { [int]($_.BaseName.Substring(2)) } |
  Select-Object -First 5 Name
