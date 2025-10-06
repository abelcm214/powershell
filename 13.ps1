#######################################
############ Mayor ################
#######################################


function mayor {
    param(
    [int]$n1,
    [int]$n2
    )
    if($n1 -gt $n2){
        $mayor=$n1
    }else{
        $mayor=$n2
    }
    return $mayor
}
$n1 = Read-Host -Prompt "Operando 1"
$n2 = Read-Host -Prompt "Operando 2"
$resultado= mayor -n1 $n1 -n2 $n2
Write-Host El mayor es $resultado