$darbojas = 0
$aptureeti = 0
$servisi = Get-Service
foreach ($s in $servisi) {
    if ($s.Status -eq 'Running') {
        $darbojas = $darbojas + 1
    } elseif ($s.Status -eq 'Stopped') {
        $aptureeti = $aptureeti + 1
    }
}
$summa = $darbojas + $aptureeti
Write-Output "Strādājošie servisi: $darbojas"
Write-Output "Apturētie servisi: $aptureeti"
Write-Output "Kopējā summa: $summa"