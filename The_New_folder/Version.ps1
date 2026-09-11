function Password-Checker {
    $password = "ThePassword" 
    
    for ($i = 4 ; $i -ge 0 ; $i--) {
        

        $try = Read-Host "Enter the password "

        if ($try -eq $password) {
            Write-Host "Password Matched !" -ForegroundColor Green
            exit
        }
        else {
            Write-Host "Wrong password !" -ForegroundColor Red
        
            Write-Host "Attempts Left $i" -ForegroundColor Yellow

        }
        

    }
}
Password-Checker