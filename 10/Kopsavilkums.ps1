Write-Output "Kopsavilkums no iepriekšējiem uzdevumiem:"
Write-Output "1. Aktīvo procesu skaits: $((Get-Process).Count)"
Write-Output "3. Aktīvo un apturēto servisu summa:"
$d = 0; $a = 0
foreach ($s in Get-Service) {
    if ($s.Status -eq 'Running') { $d++ }
    elseif ($s.Status -eq 'Stopped') { $a++ }
}
Write-Output "   Strādā: $d, Apturēti: $a, Summa: $($d + $a)"
$kludasSkaits = (Get-WinEvent -FilterHashtable @{LogName='System'; Level=2; StartTime=(Get-Date).AddHours(-48)} -ErrorAction SilentlyContinue).Count
if ($null -eq $kludasSkaits) { $kludasSkaits = 0 }
Write-Output "5. Kļūdu skaits (48h): $kludasSkaits"
$disks = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DeviceID='C:'"
Write-Output "7. C: diska brīvā vieta: $([math]::Round($disks.FreeSpace / 1GB, 2)) GB"