##########################################################
######### Calcular prioridad dado el process-name ########
##########################################################

$p=get-process
$l=$p.length
$a=read-host -prompt "Introduce Nombre del proceso"

for($i=0; $i -lt $l; $i++)
{
   if ($p[$i].ProcessName -eq $a) {
       write-host "El proceso $a tiene una prioridad: " $p[$i].BasePriority
   }
  
}