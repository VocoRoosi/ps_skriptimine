Get-ChildItem -Path "C:\temp\test"

# Show how many number of files are in the folder
$file = Get-ChildItem -Path "C:\Temp\Test" | where {$_.Name -like "*.csv"} | Select Name,Length
foreach ($file in $files) {
$sizeinKB = $file.Length/1KB
$sizeinMB = $file.Length/1MB

$result = Get-ChildItem -Path C:\Temp\Test\* -Include *.csv | Select Name, Length

$result

Write-Host
Write-Host "`nFileName  : $($file.Name)"
Write-Host "Size in KB : "$sizeinKB
Write-Host "Size in MB : "$sizeinMB
}