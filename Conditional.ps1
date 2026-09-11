function File-Exists{

param(
    [string]$filePath
)

if (Test-Path -Path $filePath) {
  Get-Content -Path $filePath  
}

else{
    Write-Host "File with path $filePath does not exists"
}
}

$userPath = Read-Host "Enter the path "

File-Exists -filePath $userPath