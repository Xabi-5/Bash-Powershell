#Xera o array
function Add-array {
    $array = @()
    $remain = $true

    do {
        [int]$num = Read-Host "Introduce un número: "
        if ($num -eq 0) {
            $remain = $false
        }else{
            $array += $num
        }
        
    } while (
        $remain
    )
    Redo-array $array

}
#Ordena o array
function Redo-array {
    param(
        [Parameter(mandatory)]
        [array]$array
    )

    $array = $array | Sort-Object
    Write-Host "A lista ordenada é "$array
}
#Main
Add-array


