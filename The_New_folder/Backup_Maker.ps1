function Backup-Script {
    $source = Read-Host "Enter the source path "
    $backupFolder = Read-Host "Enter the destination path "

    if (-not(Test-Path $source)) {
        Write-Host "Source does not exist"-ForegroundColor Red
        exit
    }

    if (-not(Test-Path $backupFolder)) {
        New-Item -Path $backupFolder -ItemType Directory -Force | Out-Null
    }

    $Date = Get-Date -Format "yyyy-MM-dd_HH-mm-ss"
    $Destination = Join-Path $backupFolder "Backup_$Date"

    Write-Host "Starting backup ....." -ForegroundColor Yellow


    try {
        Copy-Item -Path $source -Destination $Destination -Recurse -Force -ErrorAction Stop
        Write-Host "Backup Successfull...!" -ForegroundColor Green
        Write-Host "Saved to :  $Destination"
    }
    catch {
        Write-Host "Backup Unsuccessfull" -ForegroundColor Red
        Write-Host ._$Exception.message
    }
}
Backup-Script