#!/bin/bash
#815877, Pérez Salazar, Javier, M, 1, A
#816818, Velasco Gimeno, Jaime, M, 1, A
#Fichero practica2_4.sh de la pr2 de adsis

echo -n "Introdizca una tecla: "

read -r -n 1 tecla #guardamos entrada usuario en la variable tecla (sólo 1 carácter)
#flag -r para no interpretar secuencias de escape
if [tecla = "1"] || [tecla = "2"] || [tecla = "3"] || [tecla = "4"] || [tecla = "5"] || [tecla = "6"] || [tecla = "7"] || [tecla = "8"] || [tecla = "9"]  #cmprobamos numeros uno a uno
then 
    echo $tecla "es un numero"
elif  [tecla = '/'] || [tecla = '\'] || [tecla = `:`] || [tecla = '.'] || [tecla = ','] || [tecla = ';'] || [tecla = '-'] || [tecla = '_']   #idem, pero con caracs especiales   
    echo $tecla "es un caracter especial"
else # dejamos las letras para el final porque son muchas, así no hay que escribirlas una a una
    echo $tecla "es una tecla"
fi

