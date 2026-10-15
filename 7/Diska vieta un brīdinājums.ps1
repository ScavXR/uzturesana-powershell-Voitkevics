$robezaGB = 50
$diski = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"
foreach ($d in $diski) {
    [double]$kopāGB = $d.Size / 1GB
    [double]$brīviGB = $d.FreeSpace / 1GB
    Write-Output "Disks: $($d.DeviceID) | Kopā: $([math]::Round($kopāGB, 2)) GB | Brīvi: $([math]::Round($brīviGB, 2)) GB"
    if ($brīviGB -lt $robezaGB) {
        Write-Output "BRĪDINĀJUMS: Diskam $($d.DeviceID) brīvās vietas ir mazāk par $robezaGB GB!"
    }
}