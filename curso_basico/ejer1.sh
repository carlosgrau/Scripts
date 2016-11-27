#!/bin/bash

#Introduce el nombre del fichero por teclado y si el fichero existe
#realiza las comprobaciones de si es legible, si es ejecutable
#o si es modificable.

echo "Introduce un nombre de archivo"
read archivo

if [ -e $archivo ]
then
	if [ -r $archivo ]
	then
	echo "El archivo es legible"
	else
	echo "El archivo no es legible"
	fi

	if [ -x $archivo ]
	then
        echo "El archivo es ejecutable"
	else
        echo "El archivo no es ejecutable"
	fi

	if [ -w $archivo ]
	then
        echo "El archivo es modificalbe"
	else
        echo "El archivo no es modificable"
	fi
else 
	echo "El fichero no existe"
fi
