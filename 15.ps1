###############################################
############ Calculo de maximo   ##############
###############################################

$p=get-process
$l=$p.length
$max=$p[0].BasePriority;
$proceso=$p[0].ProcessName;
for($i=1; $i -lt $l; $i++)
{
    $id=$p[$i].BasePriority
    if($id -gt $max){
        $max=$id
        $proceso=$p[$i].ProcessName
    }
  
}
write-host "El proceso $proceso tiene prioridad maximo con nivel: $max"