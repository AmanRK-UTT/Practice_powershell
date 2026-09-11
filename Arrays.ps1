#Arrays 

$newArr = @(1,2,"string",5.7)
$newArr
$newArr+=999
$newArr

Get-Member -InputObject $newArr


#ArrayList 

$arrList = New-Object -TypeName System.Collections.ArrayList

$arrList.Add(4)
$arrList.Add(10)
$arrList.Add(0)
$arrList.Add(1)
$arrList.Add(9)
$arrList.Add(8)


$arrList.Capacity
$arrList.IsFixedSize

$arrList


