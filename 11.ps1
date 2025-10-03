###############################
#### LISTADOD DE USUARIOS ######
###############################
$estilo= get-content -path "estilo.css"
$p=Get-LocalUser
$rutaFichero="C:\xampp\htdocs\power\index1.html"
$l=$p.Length
$cadena="<html><head><style>" + $estilo + "</style></head><body><center><h1>Listado de Usuarios</h1><table><tr><td>Nombre</td><td>Descripcion</td></tr>"
for($i=0;$i -lt $l;$i++){
    $cadena=$cadena + "<tr><td>" + $p[$i].name + "</td><td>" + $p[$i].description + "</td></tr>";
}
$cadena = $cadena + "</table></center></body></html>";
Set-Content -path $rutaFichero -Value $cadena