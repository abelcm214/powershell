###############################
#### LECTURA DE FICHEROS ######
###############################

$p=Get-Process
$rutaFichero="procesos.xml"
$l=$p.Length
$cadena="<procesos>"
for($i=0;$i -lt $l;$i++){
    $cadena=$cadena + "<proceso><name>" + $p[$i].ProcessName + "</name><id>" + $p[$i].id + "</id></proceso>";
}
$cadena = $cadena + "</procesos>";
Set-Content -path $rutaFichero -Value $cadena