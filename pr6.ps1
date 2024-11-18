$students = Import-Csv -Path "C:\Users\Rose\ps_skriptimine\ages.csv"


$schools = @()
$names = @()
$schoolNames = @()
 
 
 $studentCategories = $students | ForEach-Object {
$age = [int]$_.Age
 $school = if ($_.Age -ge 4 -and $age -le 10) { "Junior" 
    } else { "Senior" }
    
    # Create a custom object for each student
    [PSCustomObject]@{
        Name   = $_.Name
        School = $school
    }
}

# Step 3: Display the resulting table
$studentCategories

# Step 4: Export the categorized data to a new CSV
$studentCategories | Export-Csv -Path "C:\Users\Rose\ps_skriptimine\ages.csv" -NoTypeInformation