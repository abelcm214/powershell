###############################
#### LECTURA DE FICHEROS ######
###############################

$fichero="readme.md"
$buffer=Get-Content -path $fichero
$L=$buffer.Length
for($i=0; $i -lt $l;$i++){
    Write-Host $buffer[$i];
}