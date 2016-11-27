#!/bin/bash

archivo=`zenity --forms --title="Introduce el nombre de un archivo" \
		--text="Nombre del archivo" \
		--add-entry="Archivo"`

if [ -f $archivo ]
then
	chmod og=x $archivo
	ls -l $archivo
else

	zenity --info --text "El archivo no existe"
fi
