$Path = 'D:\Document\flex.txt'

if(-not(Test-Path $Path)){
    New-Item -Path $Path -ItemType File 
    Write-Host "File created successfully" -ForegroundColor Green
}

else{
    Write-Host "File already exists" -ForegroundColor Yellow
}
