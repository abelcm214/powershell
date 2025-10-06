#################################
##### contador de procesos ######
#################################

function busca {
    param(
    [string]$nombre
    )
    $c=0
    $p=get-process
    $l=$p.length
    for($i=0;$i -lt $l;$i++)
    {
        $n=$p[$i].processName
        if($n -eq $nombre){
            $c++
        }
    }
    return $c;
}
$nombre = Read-Host -Prompt "Nombre del proceso"
$contador = busca -nombre $nombre
Write-Host "Hay $contador instancias de $nombre"