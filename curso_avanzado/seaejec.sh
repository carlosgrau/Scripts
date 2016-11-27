#!/bin/bash


echo "Introduce el nombre de un archivo"
read archivo

if [ -f $archivo ]
then
	chmod og=x $archivo
	ls -l $archivo
else

	echo "El archivo no existe"
fi
