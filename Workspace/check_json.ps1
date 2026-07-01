$content = Get-Content "C:\FOC\Workspace\Finished\CQ14884.md" -Raw
$marker = "```json"

# c3_annotation
$start = $content.IndexOf($marker, $content.IndexOf("### 3. c3_annotation"))
$end = $content.IndexOf("```", $start + $marker.Length)
$json1 = $content.Substring($start + $marker.Length, $end - $start - $marker.Length).Trim()
Write-Host "c3_annotation JSON length: $($json1.Length)"
try { $parsed1 = $json1 | ConvertFrom-Json; Write-Host "c3_annotation JSON: VALID" } catch { Write-Host "c3_annotation JSON: INVALID - $_" }

# program_elements
$start2 = $content.IndexOf($marker, $content.IndexOf("### 4. program_elements"))
$end2 = $content.IndexOf("```", $start2 + $marker.Length)
$json2 = $content.Substring($start2 + $marker.Length, $end2 - $start2 - $marker.Length).Trim()
Write-Host "program_elements JSON length: $($json2.Length)"
try { $parsed2 = $json2 | ConvertFrom-Json; Write-Host "program_elements JSON: VALID" } catch { Write-Host "program_elements JSON: INVALID - $_" }

# program_intelligence
$start3 = $content.IndexOf($marker, $content.IndexOf("### 5. program_intelligence"))
$end3 = $content.IndexOf("```", $start3 + $marker.Length)
$json3 = $content.Substring($start3 + $marker.Length, $end3 - $start3 - $marker.Length).Trim()
Write-Host "program_intelligence JSON length: $($json3.Length)"
try { $parsed3 = $json3 | ConvertFrom-Json; Write-Host "program_intelligence JSON: VALID" } catch { Write-Host "program_intelligence JSON: INVALID - $_" }

Write-Host ""
Write-Host "=== Consistency ==="
Write-Host "c3 key: $($parsed1.credited_answer) | qid: $($parsed1.question_id) | oc: $($parsed1.outline_code)"
Write-Host "pe key: n/a | qid: $($parsed2.question_id) | oc: $($parsed2.outline_code)"
Write-Host "pi key: n/a | qid: $($parsed3.question_id) | oc: $($parsed3.outline_code)"
Write-Host ""
Write-Host "GK c3: $($parsed1.c3.gold_keys.Count) | GK pi: $($parsed3.gold_keys.Count)"
Write-Host "GK id c3: $($parsed1.c3.gold_keys[0].id)"
Write-Host "GK id pi: $($parsed3.gold_keys[0].id)"
Write-Host "red_zone_dimensions: $($parsed2.red_zone_dimensions -ne $null)"
Write-Host "component_routing destinations:"
foreach ($r in $parsed3.component_routing) { Write-Host "  $($r.destination_key)" }
