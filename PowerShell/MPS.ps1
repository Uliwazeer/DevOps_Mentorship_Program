$name = "Ali"

$My_Name = Read-Host "Enter Your Name"
##########################################

$height = Read-Host "Enter The Height"
$surface = ($height  *  $height) /555

Write-Host "Surface Of Square Is $surface"
############################

$p = 3.14
$r = 20
$s = $p * $r * $r 
Write-Host "Surface Of circle $s "
#############################
$z = 1000
$x = 5000
$result = $x - $z 
#############################
$arr = 1,2,3,4,5
$arr2 = "A","B","C","D"
$arr.Length


$v = "Wazeer"
$z = "Muhammed"
$c = "Ali"

$arr3 = @("$v","$z","$c")
##################################
$prim = @(2,3,5,9,7,8,6)
for($i = 0; $i -lt $prim.Length; $i++)  # Use -lt for "less than"
{
    Write-Host "PRIM NUM When $i Is" $prim[$i]
}
$prim += 15  # Add 15 to the array

# Check if 8 and 9 are in the array
if (8 -in $prim) {
    Write-Host "8 is in the array."
} else {
    Write-Host "8 is not in the array."
}

if (9 -in $prim) {
    Write-Host "9 is in the array."
} else {
    Write-Host "9 is not in the array."
}

#################################
#Casting Data Dtype

[int]$num = 3.5

$a = 10 
$b = 3
[int]$result = $a/$b # integer output

####################################
#Boolean Value

$b = 20
$g = 80
$b -eq $g #-eq = equal

##
$boolValue = $true
if ($boolValue) {
    Write-Host "The value is True."
} else {
    Write-Host "The value is False."
}
###########
$a = 5
$b = 10

if ($a -lt $b) {
    Write-Host "5 is less than 10"
} else {
    Write-Host "5 is not less than 10"
}
#############
$condition1 = $true
$condition2 = $false

if ($condition1 -and $condition2) {
    Write-Host "Both conditions are true."
} else {
    Write-Host "At least one condition is false."
}
##############
Boolean Operators in PowerShell:
-eq: Equals
-ne: Not equals
-gt: Greater than
-lt: Less than
-and: Logical AND
-or: Logical OR
-not: Logical NOT

##########################
$isOpen = $false

if (-not $isOpen) {
    Write-Host "The door is closed."
}
##########################
$exists = Test-Path "C:\example.txt"

if ($exists) {
    Write-Host "File exists."
} else {
    Write-Host "File does not exist."
}
############################
#Here, Test-Path returns $true if the file exists, and $false otherwise.

#Summary:
#$true and $false represent Boolean values.
#Boolean logic is widely used in conditionals and loops.
#PowerShell includes various logical operators (-and, -or, -not) for controlling flow based on Boolean conditions.
##

$true 
$false

$true -ne $false #-ne = negative

( 10 - eq 11 ) -eq $false
$false -eq 0 

2 -eq $true 
$true -eq 2 
$a  = 10 
($a -gt 5 ) -and ( $a-lt 100)
($a -gt 5 ) -or ( $a-lt 100) 
($a -gt 5 ) -and ( $a-lt 100)  



#############################
$a = 5
$b = 9
 $number = 10
if ($number -gt 5) {
    Write-Host "The number is greater than 5"
}

#################
$number = 3
if ($number -gt 5) {
    Write-Host "The number is greater than 5"
} else {
    Write-Host "The number is less than or equal to 5"
}
#####################
$number = 5
if ($number -gt 5) {
    Write-Host "The number is greater than 5"
} elseif ($number -eq 5) {
    Write-Host "The number is equal to 5"
} else {
    Write-Host "The number is less than 5"
}
#############################
$age = 25
if ($age -ge 18 -and $age -lt 30) {
    Write-Host "The age is between 18 and 29"
}
############################
$age = 20
if ($age -ge 18) {
    if ($age -lt 25) {
        Write-Host "You are a young adult"
    }
}
################################
$temperature = 35
if ($temperature -gt 30) {
    Write-Host "It's a hot day"
} elseif ($temperature -gt 20) {
    Write-Host "The weather is moderate"
} else {
    Write-Host "It's a cold day"
}
##################################
#SWITCH STATEMENTS

$day = "Monday"

switch ($day) {
    "Monday"    { Write-Host "Start of the work week" }
    "Wednesday" { Write-Host "Midweek day" }
    "Friday"    { Write-Host "End of the work week" }
    default     { Write-Host "It's just another day" }
}
###########################################
$age = 25

switch ($age) {
    {$_ -lt 13}  { Write-Host "Child" }
    {$_ -ge 13 -and $_ -lt 20} { Write-Host "Teenager" }
    {$_ -ge 20 -and $_ -lt 65} { Write-Host "Adult" }
    default { Write-Host "Senior" }
}
###############################################
$name = "John"

switch -regex ($name) {
    "^A" { Write-Host "Name starts with A" }
    "^J" { Write-Host "Name starts with J" }
    default { Write-Host "Name does not start with A or J" }
}
################################################
$color = "Red"

switch ($color) {
    "Red", "Blue" { Write-Host "Primary color" }
    "Green"       { Write-Host "Secondary color" }
    default       { Write-Host "Unknown color" }
}
#################################################
$numbers = @(1, 2, 3, 4, 5)

switch ($numbers) {
    1 { Write-Host "One" }
    2 { Write-Host "Two" }
    3 { Write-Host "Three" }
    default { Write-Host "Other number" }
}
###################################################
$file = "document.txt"

switch -wildcard ($file) {
    "*.txt" { Write-Host "This is a text file" }
    "*.pdf" { Write-Host "This is a PDF file" }
    "*.docx" { Write-Host "This is a Word document" }
    default { Write-Host "Unknown file type" }
}
####################################################
#CONDITION SYNTAX
#FOR(INITIAL VALUE; CONDITION; INCREMENT)
#$i = 0: Initialization (loop starts at 0)
#$i -lt 10: Condition (loop continues as long as $i is less than 10)
#$i++: Increment (increment $i by 1 after each iteration)

for ($i = 0; $i -lt 10; $i++) {
    Write-Host $i
}
#############################33
$numbers = @(1, 2, 3, 4, 5)
foreach ($number in $numbers) {
    Write-Host $number
}
###############################
$counter = 0
while ($counter -lt 5) {
    Write-Host $counter
    $counter++
}
############################
$counter = 0
do {
    Write-Host $counter
    $counter++
} while ($counter -lt 5)
###############################
$counter = 0
do {
    Write-Host $counter
    $counter++
} until ($counter -ge 5)
################################
#Summary of Loop Control in PowerShell:
#for loop: Used when the number of iterations is known.
#foreach loop: Iterates over elements of an array or collection.
#while loop: Repeats code while the condition is true.
#do-while loop: Executes at least once, then checks the condition.
#do-until loop: Executes until the condition becomes true.

####################################

foreach ($item in $collection) {
    # Code block to execute for each item
}


$fruits = @("Apple", "Banana", "Orange")

foreach ($fruit in $fruits) {
    Write-Host "Fruit: $fruit"
}


foreach ($number in 1..5) {
    Write-Host "Number: $number"
}


$files = Get-ChildItem -Path "C:\Logs"

foreach ($file in $files) {
    Write-Host "Processing file: $file"
}



$numbers = @(1, 2, 3, 4, 5)

foreach ($number in $numbers) {
    $squared = $number * $number
    Write-Host "The square of $number is $squared"
}
#####################################

#Hashing groub of values for 1 key 
$myarr = "A","B","C" #Hash table name and keys
$source =            #Hash table keys and values
@{
"A" = 8
"B" = 9
"C" = 6
}

$score.keys 
$score.values 
$score.keys 
$score ,'A'
$score ,'B'
#############################################
$Score = 
@{
"X" = 1
"Y" = 2
"Z" = 3
}
$Score.Keys 

foreach($key in $score.Keys)
{
Write-Host "Ali"
}
$score.Values 
foreach($value in $score.Values)
{
Write-Host "CONGRATULATIONS"
}

