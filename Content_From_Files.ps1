
# Move-Item -Path 'D:\Download\leads-100.csv' -Destination '.\Folder 1'
# $rawInput = Get-Content -Path '.\Folder 1\leads-100.csv'
# $formatted = $rawInput | ConvertFrom-Csv
# $formatted


$rawInput1 = Get-Content -Path '.\Folder 1\leads-100.csv'
$formatted1 = $rawInput1 | ConvertFrom-Csv
$formatted1 | Out-File -FilePath '.\Folder 1\Obj_data1.txt'

