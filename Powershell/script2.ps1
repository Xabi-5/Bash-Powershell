function Guesser {
    param (
        [Parameter(Mandatory)]
        [Int]$TopMargin,

        [Parameter(Mandatory)]
        [Int]$BottomMargin
    )
    $remain = $true
    $solution = NumRandom $TopMargin $BottomMargin
    $contador = 0
    do {
        [int]$num = Read-Host "Introduce un número: "
        if (($num -gt $TopMargin) -or ($num -lt $BottomMargin)) {
            Write-Host "Número non válido"
            $contador++
        }elseif ($num -gt $solution) {
            Write-Host "A solución é menor"
            $contador++
        }elseif ($num -lt $solution){
            Write-Host "A solución é maior"
            $contador++
        }else{
            $contador++
            Write-Host "Acertaches!"
            Write-Host "A solución era $solution e conseguichelo en $contador intentos"
            $remain = $false
        }

    } while (
        $remain
    )
    
}

function NumRandom {
    param (
        [Parameter(Mandatory)]
        [Int]$TopMargin,

        [Parameter(Mandatory)]
        [Int]$BottomMargin
    )

    $result = Get-Random -Maximum $TopMargin -Minimum $BottomMargin 
    return $result
}

$TopMargin = Read-Host "Introduce o número da marxe superior: "
$BottomMargin = Read-Host "Introduce o número da marxe inferior: "

Guesser $TopMargin $BottomMargin

