$html = Get-Content -Raw .\index.html
$years = '2022','2023','2024','2025','2026'
$results = $years | ForEach-Object {
    $y = $_
    $html.Contains("href=\"#y$y\"") -and $html.Contains("id=\"y$y\"")
}
Write-Output 'HTML file read OK'
Write-Output ('matching links+sections: ' + ($results -notcontains $false))
Write-Output ('years checked: ' + ($years -join ', '))
