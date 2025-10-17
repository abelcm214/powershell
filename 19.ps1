#####################################################
############ Calculo de maximo hilos   ##############
#####################################################

$p=get-process
$l=$p.length
$max=$p[0].Handles;
$proceso=$p[0].ProcessName;
for($i=1; $i -lt $l; $i++)
{
    $id=$p[$i].Handles
    if($id -gt $max){
        $max=$id
        $proceso=$p[$i].ProcessName
    }
  
}
write-host "El proceso $proceso tiene maximo numero de hilos con cantidad: $max"