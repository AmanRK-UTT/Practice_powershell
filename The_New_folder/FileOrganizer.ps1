function File-OrganizerFun {
    param(
        [string]$sourceFolder
    )

    $files = Get-ChildItem -Path $sourceFolder -File
    foreach ($file in $files) {
        switch ($file.Extension.toLower()) {
            
            
            ".jpg" { $folder = "Images" }
            ".png" { $folder = "Images" }

            ".odt" { $folder = "Documents_1" }
            ".pdf" { $folder = "Documents_1" }

            ".txt" { $folder = "Documents_2" }
            ".csv" { $folder = "Documents_2" }

        }

        $destination = Join-Path $sourceFolder $folder

        if(!(Test-Path $destination)){
            New-Item -Path $destination -ItemType Directory
        }

        Move-Item $file.FullName $destination
    }

    Write-Host "Folder created successfully" -ForegroundColor Green 
}
$inputUser = Read-Host "Enter the source "
File-OrganizerFun -sourceFolder $inputUser