# Read the file as UTF-8
$content = [System.IO.File]::ReadAllText('C:\FOC\Workspace\Finished\CQ17685.md', [System.Text.Encoding]::UTF8)

# Find the remaining non-ASCII characters
for ($i = 0; $i -lt $content.Length; $i++) {
    $cp = [int]$content[$i]
    if ($cp -gt 127) {
        $context = $content.Substring([Math]::Max(0, $i - 5), [Math]::Min(15, $content.Length - [Math]::Max(0, $i - 5)))
        Write-Output ('Position ' + $i + ': U+' + ('{0:X4}' -f $cp) + ' context: [' + $context + ']')
    }
}
