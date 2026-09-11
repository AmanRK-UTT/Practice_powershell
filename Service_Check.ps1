function Service-Script {

    Get-Service | Sort-Object ServiceName

    while ($true) {

        $serviceName = Read-Host "Enter the service name "
        $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

        if ($service) {

            Write-Host "Service is running already" -ForegroundColor Green

        }

        else {
            Write-Host "Service is not running" -ForegroundColor Red
 
            $actionS = Read-Host "Do you want to start the service(Y/N)"

            if ($actionS -eq "Y") {
                Write-Host "Service started and running" -ForegroundColor Green
            }
            else {
                Write-Host "Service not started " -ForegroundColor Red
            }
        }

    }
}
Service-Script
