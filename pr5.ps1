
Start-Process "notepad.exe"
Start-Process "notepad.exe"


# Find all Notepad processes and display only Process Name and Id
Get-Process notepad | Select-Object Name, Id
