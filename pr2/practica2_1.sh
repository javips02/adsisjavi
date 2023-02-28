#!/bin/bash
#815877, Pérez Salazar, Javier, M, 1, A
#816818, Velasco Gimeno, Jaime, M, 1, A
#Practica 2 adsis, fichero practica2_1.sh
#Dado un fichero introducido por el usuario, indica si el archivo es legible, modificable y ejecutable por el usuario.
#En caso de no existir el archivo, se muestra mensaje de error por pantalla

#Pedimos entrada al usuario
echo -n 'Introduzca el nombre del fichero: ' 

#leemos entrada usuario y la guardamos en la variable nomFichero
read nomFichero

# si el comando test nos da return 0 (el archivo existe), devolvemos los permisos
# flae -e del comando test indica si existe o no el fichero (y nada más)
if  test -e $nomFichero 
then 
	lsout=$(ls -la | grep $nomFichero) #guardamos en la variable lsout la línea del comando ls -la que lo contiene (ya sabemos que existe)
	permisos=${lsout:7:3} #del string anterior, nos quedamos sólo con los permisos del usuario (posiciones 7,8,9 del output)
	echo 'Los permisos del archivo $nomFichero son: ' $permisos 
else
# sino, sacamos mensaje de error por pantalla
	echo $nomFichero no existe.
fi
