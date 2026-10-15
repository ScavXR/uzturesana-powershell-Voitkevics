1. uzdevums: Sistēmas apraksts
   $dators = $env:COMPUTERNAME — Saglabā mainīgajā datora sistēmas nosaukumu.
   Get-CimInstance -ClassName Win32_OperatingSystem — Pajautā datoram informāciju par pašu operētājsistēmu.
   $PSVersionTable.PSVersion — Paņem PowerShell versijas numuru.
   Get-Date — Iegūst šodienas datumu un laiku.
   (Get-Process).Count — Saskaita, cik šobrīd datorā ieslēgti procesi.
   Write-Output — Iz drukā tekstu uz ekrāna.

2. uzdevums: Desmit procesi sakārtoti pēc atmiņas
   Get-Process — Dabuj visu darbojošos procesu sarakstu.
   Sort-Object -Property WorkingSet — Sakārto procesus pēc aizņemtās atmiņas no mazākās uz lielāko.
   Select-Object -Last 10 — Paņem pēdējos 10 procesus (tie ir tie, kas rij visvairāk atmiņas), saglabājot augošu secību.
   Select-Object -Property Name, Id, ... — Izvelk tikai procesa vārdu, ID un izveido jaunu kolonnā ar nosaukumu AtmiņaMB.
   [math]::Round(..., 1) — Noapaļo skaitli līdz vienai zīmei aiz komata.  
