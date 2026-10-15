$dators = $env:COMPUTERNAME
$os = Get-CimInstance -ClassName Win32_OperatingSystem
$versija = $PSVersionTable.PSVersion
$laiks = Get-Date
$procesi = (Get-Process).Count

Write-Output "Datora nosaukums: $dators"
Write-Output "Operētājsistēma: $($os.Caption) (būvējums: $($os.BuildNumber))"
Write-Output "PowerShell versija: $versija"
Write-Output "Pašreizējais datums un laiks: $laiks"
Write-Output "Aktīvo procesu skaits: $procesi"