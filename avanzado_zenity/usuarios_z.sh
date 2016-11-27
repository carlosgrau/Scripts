#!/bin/bash


archivo=`tempfile`
temp=`tempfile`
echo "-----------------------:        ----------------------------:    -------------------------------" >>$archivo
echo "Nombre de login: Directorio del usuario:Interprete" >>$archivo
echo "-----------------------:        ----------------------------:   -------------------------------" >>$archivo

cat /etc/passwd | cut -f1,6,7 -d: | sort -n >>$archivo

cat $archivo | column -t -s":" >>$temp

zenity --text-info --height 570 --width 570 \
	--title="/etc/passwd" \
	--filename=$temp 2>/dev/null



