#!/bin/bash

#Introduce varios nombres de archivo comprueba si existen y te los muestra
#paginado. En caso de que no existan te lo dice por pantalla.

archivos=`zenity --forms --title="Introduce los nombres de archivos" \
		--text="Nombre de archivos separados por un espacio" \
		--separator=" " \
		--add-entry="Archivo" `



for i in $archivos
do
if [ -e $i ]
then
	zenity --info --text "El archivo $i tiene el siguiente contenido:"
	more $i
else
	zenity --info --text "El archivo $i no existe"
fi
done
