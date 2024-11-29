function Main-Menu {
    Write-Host "`n"  
    Write-Host "`t`t`tArea Calculator" -ForegroundColor Green
    Write-Host "`n`t`t`tMain Menu" -ForegroundColor Yellow
    Write-Host "`nPlease select the option to perform the respective task`n" -ForegroundColor Yellow

    Write-Host "1: Area of Square" -ForegroundColor Green
    Write-Host "2: Area of Rectangle" -ForegroundColor Green
    Write-Host "3: Area of Circle" -ForegroundColor Green
    Write-Host "4: Area of Triangle" -ForegroundColor Green
    Write-Host "5: Exit`n" -ForegroundColor Green

    $choice = Read-Host "Please enter your choice"
    Write-Host "`n"  

    return $choice
}

function Square {
    Write-Host "`t`tArea of Square`n" -ForegroundColor Green
    [int]$side = Read-Host "Enter the side of the square"
    $area = $side * $side
    Write-Host "`nArea of the square : $area" -ForegroundColor Green
    NextMenu
}

function Rectangle {
    Write-Host "`t`tArea of Rectangle`n" -ForegroundColor Green
    [int]$length = Read-Host "Enter length of the rectangle"
    [int]$width = Read-Host "Enter width of the rectangle"
    $area = $length * $width
    Write-Host "`nArea of the rectangle : $area" -ForegroundColor Green
    NextMenu
}

function Circle {
    Write-Host "`t`tArea of Circle`n" -ForegroundColor Green
    [int]$radius = Read-Host "Enter the radius of the circle"
    $area = 3.14 * $radius * $radius
    Write-Host "`nArea of the circle : $area" -ForegroundColor Green
    NextMenu
}

function Triangle {
    Write-Host "`t`tArea of Triangle`n" -ForegroundColor Green
    [int]$height = Read-Host "Enter height of triangle"
    [int]$base = Read-Host "Enter base of triangle"
    $area = 0.5 * $height * $base
    Write-Host "`nArea of Triangle : $area" -ForegroundColor Green
    NextMenu
}

function NextMenu {
    $validChoice = $false
    while (-not $validChoice) {
        Write-Host "`n"  
        Write-Host "Please select the next option" -ForegroundColor Yellow
        Write-Host "`n"
        Write-Host "1: Return to Main Menu" -ForegroundColor Green
        Write-Host "2: Exit" -ForegroundColor Green
        Write-Host "`n"

        $nextChoice = Read-Host "Enter your choice"
        
        if ($nextChoice -eq 1) {
            $validChoice = $true
        } elseif ($nextChoice -eq 2) {
            Write-Host "Exiting the script." -ForegroundColor Green
            exit
        } else {
            Write-Host "Incorrect entry. Please enter 1 or 2." -ForegroundColor Red
        }
    }
}


$exitScript = $false

while (-not $exitScript) {
    $choice = Main-Menu

    switch ($choice) {
        1 {
            # Area of Square
            Square
        }
        2 {
            # Area of Rectangle
            Rectangle
        }
        3 {
            # Area of Circle
            Circle
        }
        4 {
            # Area of Triangle
            Triangle
        }
        5 {
            Write-Host "Exiting the script." -ForegroundColor Green
            $exitScript = $true
        }
        default {
            Write-Host "Invalid selection. Please select a number between 1 and 5." -ForegroundColor Red
        }
    }
}
