#!/bin/bash
#815877, Pérez Salazar, Javier, M, 1, A
#816818, Velasco Gimeno, Jaime, M, 1, A
# Fichero practica2_2.sh de la pr2 de adsis
# Dados unos ficheros como parámetros separados por espacios, valida si el nombre corresponde a u archivo común existente,y si es así lo muestra en pantalla paginando.
# En caso contrario, dice que no existe
for i in "$@" #Para cada parámetro de entrada (se guarda en i en cada iteración) ...
do
	if  test -f $i  #si el comando test -f (comprueba si existe el fichero y es comúm) devuelve 0 lo escribimos en pantalla a través del comando "more"
	then 
		more $i
		echo '-------------------------------------------------------------------------'
	else # sino, decimos que el fichero <param[i]> no existe
		echo $i no existe.
		echo '-------------------------------------------------------------------------'
	fi
done
