# List of colors
$groups = @("Red", "Green", "Yellow", "Blue")

$result = @()

# Loop through 20 students (Roll Number 1 to 20)
for ($i = 1; $i -le 20; $i++) {
    # Select a random color from the list
    $g = Get-Random $groups
    
    # Create a custom object for each student
    $result += [PSCustomObject]@{
        RollNumber = $i
        Color      = $g
    }
    $result += $temp
}

# Display the resulting table
$result 