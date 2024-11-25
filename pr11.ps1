

$n1 = Read-Host "Enter first number "
$n2 = Read-Host "Enter second number "

if($n1 -notmatch '^\d+$' -or $n2 -notmatch '^\d+$'){
    Write-Host "Use only numbers" -ForegroundColor Red
} else {

    Write-Host 'Calculator' -ForegroundColor Green
    $calcMenu = @('Addition', 'Substraction', 'Division', 'Multiplication')
    for($i = 0; $i -lt $calcMenu.Count; $i++){
        Write-Host "$($i + 1): $($calcMenu[$i])" -ForegroundColor Yellow
    }

    $operation = Read-Host "Enter your choice "

    switch($operation){
        1 {
            Write-Host "Sum is : $([int]$n1 + [int]$n2)"
        }
        2 {
            Write-Host "Difference is : $([int]$n1 - [int]$n2)"
        }
        3 {
            Write-Host "Quotient is : $([int]$n1 / [int]$n2)"
        }
        4 {
            Write-Host "Product is : $([int]$n1 * [int]$n2)"
        }
        default {
            Write-Host "Use values 1-4"
        }
    }
}