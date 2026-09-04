$c = Get-Content (Join-Path $PSScriptRoot 'Finished\CQ14594.md') -Raw
Write-Host "=== KEY CONSISTENCY CHECK ==="
if ($c -match '(?m)^key:\s*([A-D])') { Write-Host "frontmatter key: $($Matches[1])" }
if ($c -match '(?m)^original_key:\s*([A-D])') { Write-Host "original_key: $($Matches[1])" }
if ($c -match '(?m)^letter_map:.+original.+([A-D])\s*→\s*new.+([A-D])') { Write-Host "letter_map original→new check" }
if ($c -match '(?m)^official_key:\s*([A-D])') { Write-Host "yaml official_key: $($Matches[1])" }
if ($c -match '(?m)^new_key_letter:\s*([A-D])') { Write-Host "new_key_letter: $($Matches[1])" }
if ($c -match '(?m)^credited_answer.*?"([A-D])"') { Write-Host "c3_annotation credited_answer: $($Matches[1])" }
if ($c -match '(?m)^## 4\. Correct Answer\s*\n\s*\*\*([A-D])\*\*') { Write-Host "Pass-1 report Section 4 correct answer: $($Matches[1])" }
Write-Host ""
Write-Host "=== LETTER MAP VERIFICATION ==="
$m = [regex]::Match($c, '(?s)letter_map: (.+?)(\r?\n)(\S|\w)')
if ($m.Success) { Write-Host $m.Value.Substring(0, [Math]::Min(200, $m.Value.Length)) }
Write-Host ""
Write-Host "=== BANK VALIDATION VERDICT ==="
if ($c -match '(?m)^bank_validation_verdict:\s*(\w+)') { Write-Host "bank_validation_verdict: $($Matches[1])" }
Write-Host ""
Write-Host "File size:" (Get-Item (Join-Path $PSScriptRoot 'Finished\CQ14594.md')).Length
