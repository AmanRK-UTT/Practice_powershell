New Item 

 New-Item -Path 'D:\Document\Powershell_Scripts\Direct11'
 New-Item -Path "D:\Document\Powershell_Scripts\Sample_Direc" -ItemType Directory
 New-Item -Path "D:\Document\Powershell_Scripts\Sample_Direc\new.txt"
New-Item -Path "D:\Document\Powershell_Scripts\Folder 1" -ItemType Directory
New-Item -Path "D:\Document\Powershell_Scripts\Folder 2" -ItemType Directory

Copy Item

Copy-Item "D:\Document\Powershell_Scripts\Folder 1" "D:\Document\Powershell_Scripts\Folder 2"
New-Item -Path "D:\Document\Powershell_Scripts\Folder 2\newtext.txt"
Copy-Item "D:\Document\Powershell_Scripts\Folder 2\newtext.txt" "D:\Document\Powershell_Scripts\Folder 1"

Remove Item

New-Item -Path "D:\Document\Powershell_Scripts\Folder3" -ItemType Directory
New-Item -Path "D:\Document\Powershell_Scripts\Folder 2\del.txt"
Remove-Item -Path "D:\Document\Powershell_Scripts\Folder3"
Remove-Item "D:\Document\Powershell_Scripts\Folder 2\del.txt"

Move Item

New-Item -Path "D:\Document\Powershell_Scripts\Folder 1\move1.txt"
Move-Item -Path "D:\Document\Powershell_Scripts\Folder 1\move1.txt" -Destination "D:\Document\Powershell_Scripts\Folder 2"

Rename Item

Rename-Item -Path "D:\Document\Powershell_Scripts\Folder 2" -NewName "Folder_NEW"
Rename-Item -Path "D:\Document\Powershell_Scripts\Folder 2\move1.txt" -NewName "NEW_NAME.txt"

Fetch Item

Get-Item -Path "D:\Document\Powershell_Scripts\Folder_NEW\NEW_NAME.txt"

Check Item Existence

Test-Path -Path "D:\Document\Powershell_Scripts\Folder_NEW\newtext.txt"
Test-Path -Path "D:\Document\Powershell_Scripts\Folder_NEW\NEWTEXT.txt"
Test-Path -Path "D:\Document\Powershell_Scripts\Folder_NEW\NEWfile.txt"


Read Item
Get-ChildItem -Path "D:\Document\Powershell_Scripts\Folder_NEW"
Get-Content -Path "D:\Document\Powershell_Scripts\Folder_NEW\NEW_NAME.txt"

Update Item
Set-Content -Path "D:\Document\Powershell_Scripts\Folder_NEW\NEW_NAME.txt" -Value "This is a new chnaged content"
Get-Content -Path "D:\Document\Powershell_Scripts\Folder_NEW\NEW_NAME.txt"
Add-Content -Path "D:\Document\Powershell_Scripts\Folder_NEW\NEW_NAME.txt" -Value "This is an added content"
Get-Content -Path "D:\Document\Powershell_Scripts\Folder_NEW\NEW_NAME.txt"