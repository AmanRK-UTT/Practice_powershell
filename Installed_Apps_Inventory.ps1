$RegistryPaths = @(
    "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall",
    "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall"
)

$Inventory = foreach ($Path in $RegistryPaths) {

    foreach ($App in Get-ChildItem $Path) {

        $Info = Get-ItemProperty $App.PSPath

        if ($Info.DisplayName) {

            [PSCustomObject]@{
                Name      = $Info.DisplayName
                Version   = $Info.DisplayVersion
                Publisher = $Info.Publisher
            }
        }
    }
}

$Inventory |
Sort-Object Name |
Export-Csv -Path "D:\Document\Powershell_Scripts\Folder 1\Apps_Inventory.csv" -NoTypeInformation

Write-Host "Exported Successfully!"