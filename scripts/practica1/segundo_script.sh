#!/bin/bash
final_cadena=", como estas?"

for i in hola mundo $final_cadena #se interpreta como una lista de las dos variables seguidas
do
	echo "$i"
done
