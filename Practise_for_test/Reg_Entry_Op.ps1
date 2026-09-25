# Get-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion'

function Registery-Creator{
    $IPath = 'HKCU:\SOFTWARE'
    Write-Host "Initial Paths is : $IPath" -ForegroundColor Green
    $UserP = Read-Host "Enter the app to create"

    $fullPath = Join-Path $IPath $UserP

    if (-not(Test-Path -Path $fullPath)) {
        New-Item -Path $fullPath -Force
        New-ItemProperty -Path $fullPath -Name "ENTRY2" -Value "1.0" -PropertyType String -Force
        Write-Host "Registry entry created successfully at $fullPath" -ForegroundColor Green
    }
    else {
        Write-Host "Registry entry already exists at $fullPath" -ForegroundColor Yellow
    }
}
Registery-Creator