###############################
#### LISTADO DE PROCESOS ######
###############################
$estilo= get-content -path "estilo.css"
$p=Get-Process
$rutaFichero="C:\xampp\htdocs\power\index.html"
$l=$p.Length
$cadena="<html<head><style>" + $estilo + "</style></head>><body><center><h1>Listado de Procesos</h1><table><tr><td>Nombre</td><td>Id</td></tr>"
for($i=0;$i -lt $l;$i++){
    $cadena=$cadena + "<tr><td>" + $p[$i].ProcessName + "</td><td>" + $p[$i].id + "</td></tr>";
}
$cadena = $cadena + "</table></center></body></html>";
Set-Content -path $rutaFichero -Value $cadena