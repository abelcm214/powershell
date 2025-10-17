##########################################################
############ Contador de numero de procesos ##############
##########################################################

$p=get-process
$l=$p.length
$c=0

for($i=0; $i -lt $l; $i++)
{
   $c=$c + $p[$i].CPU
}

$m=$c/$l
write-host "El promedio de uso de CPU por proceso es: $m"