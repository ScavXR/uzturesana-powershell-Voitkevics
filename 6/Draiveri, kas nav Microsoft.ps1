Get-CimInstance -ClassName Win32_PnPSignedDriver | Where-Object {$_.Manufacturer -ne 'Microsoft'} | Select-Object -Property DeviceName, Manufacturer, DriverVersion | Export-Csv -Path "draiveri.csv" -NoTypeInformation -Encoding utf8
$rinduSkaits = (Import-Csv -Path "draiveri.csv").Count
Write-Output "Rindu skaits CSV failā: $rinduSkaits"