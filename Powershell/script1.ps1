#Comproba se o número é primo e devolve o resultado
function Get-Prime {
    param(
        [Parameter(Mandatory)]
        [Int]$num
    )
    $prime = $true
    if ($num -eq 2) {
        $prime = $true
        
    }elseif ($num % 2 -eq 0) {
        $prime = $false
    }
    else {
        for ($i = 2; $i -le $num / 2; $i++) {
            if ($num % $i -eq 0) {
                $prime = $false
            }
        }
    }
    return $prime    
}

#Obter numero a validar
$num = Read-Host "Introduce o número a validar se é primo: "

#Interpreta o resultado da función e imprimeo por pantalla 
switch (Get-Prime $num) {
    $false { Write-Host "O número $num non é primo" }
    $true { Write-Host "O número $num é primo" }
}
