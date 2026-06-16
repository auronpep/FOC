$content = Get-Content 'C:\FOC\Workspace\Finished\CQ14392.md' -Raw

# Find all ```json ... ``` blocks
$pattern = '```json\s*([\s\S]*?)\s*```'
$matches = [regex]::Matches($content, $pattern)

$i = 0
foreach ($m in $matches) {
    $i++
    $jsonStr = $m.Groups[1].Value.Trim()
    try {
        $null = $jsonStr | ConvertFrom-Json
        Write-Host "JSON block $i : VALID"
    } catch {
        Write-Host "JSON block $i : INVALID - $($_.Exception.Message)"
    }
}
Write-Host "Total JSON blocks found: $i"
