function Process-Checker {

    Get-Process | Sort-Object ProcessName

    $var = 1
    while ($var -eq 1) {  
        $ProcessName = Read-Host "Enter the process name " 

        $process = Get-Process -Name $ProcessName -ErrorAction SilentlyContinue

        if ($process) {
            Write-Host "Process is already running" -ForegroundColor Green
        }

        else {
    
            Write-Host "Process is not running already" -ForegroundColor Red 
            $action = Read-Host "Do you want to start the process(y/n)"

            if ($action -eq "y") {
                Start-Process $ProcessName
                Write-Host "Process is running now" -ForegroundColor Green
            }
        }
    }
}
Process-Checker