#!/bin/bash
#815877, Pérez Salazar, Javier, M, 1, A
#816818, Velasco Gimeno, Jaime, M, 1, A
#Fichero practica2_3.sh de la pr2 de adsis
#Dado un fichero introducido como parametro, comprueba si existe y es común, lo convierte en ejecutable para el usuario y el grupo y muestra el modo final con el comando stat
#En caso de no existir el archivo, se muestra mensaje de error por pantalla

# Se escribe en un script un único nombre de archivo el cual existe y es común, y se le da permisos de ejecución para el propietario del grupo
# Si no existe o el numero de argumentos es diferente a 1, se escribe un mensaje de error por pantalla 
if test $# -ne 1 # $# contiene el número de parámetros
then
	echo Sintaxis: practica2_3.sh \<nombre_archivo\>
elif test -f "$@"  
then 
	chmod ug+x "$@"	#Se dan permisos de ejecución
	statout=$(stat -l "$@") #guardamos en la variable lsout la línea del comando stat -l que lo contiene (ya sabemos que existe)
	permisos=${statout:0:10} #del string anterior, nos quedamos sólo con los permisos del usuario (posiciones 0,1,2,3,4,5,6,7,8,9 del output)
	echo $permisos 
else
# sino, sacamos mensaje de error por pantalla
	echo "$@" no existe.
fi
