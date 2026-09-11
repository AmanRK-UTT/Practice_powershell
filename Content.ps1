New-Item -Path 'D:\Document\Powershell_Scripts\The_New_folder' -ItemType Directory
New-Item -Path 'D:\Document\Powershell_Scripts\The_New_folder\NewText.txt'
Set-Content -Path 'D:\Document\Powershell_Scripts\The_New_folder\NewText.txt' -Value "This is a new entereed content"
Rename-Item -Path 'D:\Document\Powershell_Scripts\The_New_folder\NewText.txt' -NewName "NewText2.txt"
Move-Item -Path 'D:\Document\Powershell_Scripts\The_New_folder\NewText2.txt' -Destination 'D:\Document\Powershell_Scripts\Folder 1'

