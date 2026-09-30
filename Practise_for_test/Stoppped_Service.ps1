Get-Service | Where-Object {$_.Status -eq "Stopped"} | Select-Object -Property Name, Status
Start-Service -Name "wuauserv"
Get-Service -Name "wuauserv" | Select-Object -Property Name, Status

