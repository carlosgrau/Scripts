#!/bin/bash

#Introduce varios nombres de archivo comprueba si existen y te los muestra
#paginado. En caso de que no existan te lo dice por pantalla.

for i in  $*
do
if [ -e $i ]
then
	echo ""
	echo "El archivo $i tiene el siguiente contenido:"
	echo ""
	more $i
else
	echo ""
	echo "El archivo $i no existe"
	echo ""
fi
done
