###############################
#### LECTURA DE FICHEROS ######
###############################

$fichero="listado.txt"
$buffer=Get-Content -path $fichero
$L=$buffer.Length
for($i=0; $i -lt $l;$i++){
    stop-Process -name $buffer[$i];
}