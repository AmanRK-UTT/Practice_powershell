$arr = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20;
$even = @()
$odd = @()
foreach($i in $arr){ 
    if($i % 2 -eq 0){
       $even += $i
    }
    else{
        $odd += $i
    }
}

Write-Host "Even Numbers are : $even" -ForegroundColor Green
Write-Host "Odd Numbers are : $odd" -ForegroundColor red



$empARR = @(
    "aman",
    "rohit",
    "sachin",
    "rahul",
    "priya"
)
 Write-Host $empARR.Count


 Write-Host "First Employee is : $($empARR[0])"
 Write-Host "Last Employee is : $($empARR[$empARR.Count - 1])"

 foreach($emp in $empARR){
    Write-Host "Employee Name is : $emp"
 }