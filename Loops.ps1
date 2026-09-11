# For Loop

for($i = 0; $i -le 10;$i++){
    Write-Host "Loop"
}

for($i = 1; $i -le 10;$i++){
    Write-Host "2 X $i= $(2*$i)"
}


# While loop

$a = 1
while($a -le 10){
   Write-Host "3 X $a= $(3*$a)" 

   $a++
}       

# Do while loop
$b = 1
do{
    Write-Host "4 X $b= $(4*$b)"
    $b++
}while(
    $b -le 10
)

$arr1 = @(1,4,2,8,3)

foreach($item in $arr1){
    Write-Host " Num is : $item"    
}