
#Script will display that Notepad is running until you close it, then script stops.
while(Get-Process Notepad -ErrorAction SilentlyContinue)
  {
   Write-Host "Notepad is running"
  }