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

3. uzdevums: Servisu skaitīšana

Sākumā izveidojam divus nulles mainīgos skaitīšanai.

Get-Service — Iegūst visus Windows servisus.

foreach ($s in $servisi) — Cikls, kas iet cauri katram servisam pa vienam. 

if ($s.Status -eq 'Running') — Pārbauda, vai serviss strādā, un pieskaita viennieku.   

elseif — Pārbauda, vai ir apturēts.   

$summa = $darbojas + $aptureeti — Saskaita abus skaitļus kopā.

4. uzdevums: Automātisko servisu palaišana

Get-Service | Where-Object — Atlasa tikai tos servisus, kam palaišanas veids ir Automatic un statuss ir Stopped.   

if ($null -eq $servisi) — Pārbauda, vai šādu servisu vispār nav; ja nav, izvada skaitli 0, nevis tukšumu.   

-WhatIf — Reāli neko nepalaiž, tikai parāda simulāciju, ko tas darītu.

5. uzdevums: Kļūdas sistēmas žurnālā
   (Get-Date).AddHours(-48) — Paņem pašreizējo laiku un atņem 48 stundas (atrod laika filtru caur Get-Member metodēm).

   Get-WinEvent — Nolasa notikumus no sistēmas žurnāla.

   Group-Object un Sort-Object — Sagrupē kļūdas pēc nosaukuma un atrod to, kura atkārtojusies visbiežāk.

6. uzdevums: Draiveri, kas nav Microsoft

   NVIDIA GeForce RTX 5080,"NVIDIA","32.0.16.1742" - Tas ir GPU draiveris

   Win32_PnPSignedDriver — Iegūst datorā instalēto draiveru sarakstu.

   Where-Object {$_.Manufacturer -ne 'Microsoft'} — Atstāj tikai tos draiverus, kuru ražotājs nav Microsoft.

    Export-Csv — Saglabā datus CSV failā.

   Import-Csv ... Count — Saskaita, cik rindu ir failā, un izvada to izvade.txt pirmajā rindā.
