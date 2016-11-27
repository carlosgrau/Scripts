#!/bin/bash

echo "Introduce un nombre de un directorio"
read directorio

if [ ! -d $directorio ]
then
	echo "El nombre introducido no corresponde a un directorio"
else
	ls -l $directorio| grep "^l" | cut -f17 -d" "
fi
