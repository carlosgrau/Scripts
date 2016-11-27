#!/bin/bash

#Introduce el nombre del fichero por teclado y si el fichero existe
#realiza las comprobaciones de si es legible, si es ejecutable
#o si es modificable.

archivo=`zenity --forms --title= "Introduce un nombre de archivo" \
		--text="Nombre del archivo" \
		--add-entry="Archivo"`

if [ -e $archivo ]
then
	if [ -r $archivo ]
	then
	zenity --info --text "El archivo es legible"
	else
	zenity --info --text "El archivo no es legible"
	fi

	if [ -x $archivo ]
	then
        zenity --info --text "El archivo es ejecutable"
	else
        zenity --info --text "El archivo no es ejecutable"
	fi

	if [ -w $archivo ]
	then
        zenity --info --text "El archivo es modificalbe"
	else
        zenity --info --text "El archivo no es modificable"
	fi
else 
	zenity --info --text "El fichero no existe"
fi
