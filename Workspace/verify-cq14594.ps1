$f = (Join-Path $PSScriptRoot 'Finished\CQ14594.md')
$content = Get-Content -Path $f -Raw
$blocks = [regex]::Matches($content, '(?s)```json\s*(.+?)\s*```')
$ok = 0; $fail = 0
foreach ($b in $blocks) {
    $json = $b.Groups[1].Value
    try {
        $obj = $json | ConvertFrom-Json -ErrorAction Stop
        Write-Host "OK: $($obj.question_id)"
        $ok++
    } catch {
        Write-Host "FAIL on: $($json.Substring(0, [Math]::Min(100, $json.Length)))"
        $fail++
    }
}
Write-Host "Passed: $ok, Failed: $fail"
