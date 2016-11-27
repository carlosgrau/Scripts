#!/bin/bash

directorio=`zenity --forms --title "Introduce un nombre de un directorio" \
		--text "INTRODUCE UN DIRECTORIO" \
		--add-entry "Directorio"`


directorio1=`tempfile`
if [ -d $directorio ]
then
        ls -l $directorio | grep "^-" | sed "s/\s\s*/#/g" | cut -f2,9 -d# | grep -v "^1" |cut -d# -f2>>$directorio1 

	zenity --text-info --width 100 --height 100 \
		--title "Directorio" \
		--filename=$directorio1 2>>/dev/null
else
        zenity --text-info "El nombre introducido no corresponde a un directorio"

fi



