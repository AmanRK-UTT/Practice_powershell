function Check-number{
    param(
        [int]$userInp
    )

    $number = [int]$userInp 

    if ($number -gt 0) {
        Write-Host "Positive number" -ForegroundColor Green
    }
    elseif($number -lt 0){
        Write-Host "Negetive Number" -ForegroundColor Red
    }
    else {
        Write-Host "Number is zero" -ForegroundColor Blue
    }
}

try{
$inputnum = Read-Host "Enter the num "
Check-number -userInp $inputnum
}
catch {
    Write-Host "An Unexpected error occoured" -ForegroundColor Yellow
}