#!/bin/bash

directorio=`zenity --forms --title "Introduce un nombre de un directorio" \
			   --text "PON UN DIRECTORIO" \
			   --add-entry "Directorio"`

directorio2=`tempfile`
if [ ! -d $directorio ]
then
	zenity --text-info "El nombre introducido no corresponde a un directorio"
else
	ls -l $directorio| grep "^l" | cut -f17 -d" ">>$directorio2
	zenity --text-info --height 100 --width 100 \
		--title "Directorio con enlace simbolico es:" \
		--filename=$directorio2 2>>/dev/null
fi
