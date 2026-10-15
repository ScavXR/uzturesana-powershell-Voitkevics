$laiks1 = Measure-Command -Expression { Get-Service -Name Spooler }
$laiks2 = Measure-Command -Expression { Get-CimInstance -ClassName Win32_Service -Filter "Name='Spooler'" }
Write-Output "Get-Service laiks milisekundēs: $($laiks1.TotalMilliseconds)"
Write-Output "Get-CimInstance laiks milisekundēs: $($laiks2.TotalMilliseconds)"