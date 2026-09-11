$htable = @{
    name = "aman"
    age = 22
    marks = 91.3
}

$htable.GetType()
$htable['name']
$htable['age']

# Get-Member -InputObject $htable


$htable.Keys 

$htable.name = "bruce"

$htable.Add("ID", 531)

$htable


$htable.ContainsKey("ID")
$htable.ContainsValue(531)