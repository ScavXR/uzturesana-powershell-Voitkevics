$laiks = (Get-Date).AddHours(-48)
$kludas = Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=$laiks} -ErrorAction SilentlyContinue
if ($null -eq $kludas) {
    Write-Output "Kļūdu skaits pēdējās 48 stundās: 0"
} else {
    $skaits = $kludas.Count
    $biezākais = $kludas | Group-Object -Property ProviderName | Sort-Object -Property Count -Descending | Select-Object -First 1
    Write-Output "Kļūdu skaits pēdējās 48 stundās: $skaits"
    Write-Output "Biežākais avots: $($biezākais.Name) ($($biezākais.Count) reizes)"
}