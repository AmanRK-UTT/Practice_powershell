Get-PSDrive
Write-Host "====================================================" -ForegroundColor Green
Set-Location -Path "HKCU:\Software\Microsoft"
Write-Host "====================================================" -ForegroundColor Green
Get-ChildItem
Write-Host "====================================================" -ForegroundColor Green
Get-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"