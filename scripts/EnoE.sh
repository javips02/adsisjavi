#!/bin/bash

file=no_existe

if (ls $file) 
then
	echo "El fichero $file existe"
else 
	echo "El fichero $file no existe"
fi
