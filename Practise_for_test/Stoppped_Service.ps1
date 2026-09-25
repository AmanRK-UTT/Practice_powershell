# Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object -Property Name, Status

Get-ChildItem -Path 'D:\Document\NewAppProject' -Recurse 