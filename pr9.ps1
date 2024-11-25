# Initialize counter
$step = 0

# Open 3 instances of Notepad
Start-Process "notepad.exe"
Start-Process "notepad.exe"
Start-Process "notepad.exe"

# Do-while loop to check for running Notepad processes
do {
    Write-Host 'Notepad is running'
    $step++  # Increment the counter
    Start-Sleep -Seconds 1  # Wait for 1 second
} while (Get-Process Notepad -ErrorAction SilentlyContinue)

# Display the number of times the message was displayed
Write-Host $step
