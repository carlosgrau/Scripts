#!/bin/bash
file=`tempfile`
directorio=`zenity --forms --title="Introduce un directorio" \
		--text="Directorio" \
		--add-entry="Directorio"`

if [ -d $directorio ]
then
	ls -lR $directorio 2>/dev/null | grep '^d' >>$file
	zenity --text-info --height 500 --width 500 \
		--title "El directorio $directorio existe" \
	 	--filename=$file 2>>/dev/null
else
	zenity --info --text "El directorio no existe"
fi
