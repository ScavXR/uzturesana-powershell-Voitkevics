Get-CimInstance -ClassName Win32_Process | ForEach-Object {
    $owner = $_.GetOwner()
    [PSCustomObject]@{
        ProcessName = $_.Name
        ProcessId   = $_.ProcessId
        User        = if ($owner.User) { "$($owner.Domain)\$($owner.User)" } else { "Nav pieejams / Sistēmas tiesības" }
    }
} | Format-Table -AutoSize