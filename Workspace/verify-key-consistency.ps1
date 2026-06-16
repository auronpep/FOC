$c = Get-Content 'C:\FOC\Workspace\Finished\CQ14594.md' -Raw
if ($c -match 'key:\s*([A-D])') { Write-Host 'frontmatter key:' $Matches[1] }
if ($c -match 'official_key:\s*([A-D])') { Write-Host 'yaml official_key:' $Matches[1] }
if ($c -match 'credited_answer.*?"([A-D])"') { Write-Host 'c3_annotation credited_answer:' $Matches[1] }
if ($c -match 'original_key:\s*([A-D])') { Write-Host 'original_key:' $Matches[1] }
if ($c -match 'new_key_letter:\s*([A-D])') { Write-Host 'new_key_letter:' $Matches[1] }
Write-Host 'File size:' (Get-Item 'C:\FOC\Workspace\Finished\CQ14594.md').Length 'bytes'
