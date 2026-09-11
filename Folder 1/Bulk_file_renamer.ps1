$Path = "D:\Document\Powershell_Scripts\Folder 1\Images"

try {
    Get-ChildItem $Path -File | ForEach-Object {
        $NewName = "NewFile_" + $_.Name + "SUFF"
        Rename-Item -Path $_.FullName -NewName $NewName
        Write-Host("Renamed successfully")

    }
}
catch {

    Write-Host("Something went wrong")

}
