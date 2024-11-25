# Initialize counter
$step = 0
$isNotepadOpen = (Get-Process Notepad -ErrorAction SilentlyContinue)

# Open 3 instances of Notepad
Start-Process "notepad.exe"
Start-Process "notepad.exe"
Start-Process "notepad.exe"

# Do-Until loop to check for running Notepad processes
do {
    Write-Host 'Notepad is running'
    $step++  # Increment the counter
    $isNotepadOpen = (Get-Process Notepad -ErrorAction SilentlyContinue)
    Start-Sleep -Seconds 1  # Wait for 1 second
} until ($isNotepadOpen.Count -eq 0)

# Display the number of times the message was displayed
Write-Host $step