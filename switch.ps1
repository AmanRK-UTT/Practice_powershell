[int]$inputData = Read-Host "Enter the num "

switch ($inputData) {
     1{
        Write-Host "Number is 1"
       }
    2{
        Write-Host "Number is 2"
    }
     3{
        Write-Host "Number is 3"
    }
     4{
        Write-Host "Number is 4"
    }
     5{
        Write-Host "Number is 5"
    }
    Default {
        Write-Host "Number more than 5 "
    }
}

for ($i = 0; $i -le 15; $i++) {
   Write-Host $i -ForegroundColor $i
}