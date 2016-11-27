#!/bin/bash


usuario=`zenity --forms --title "Introduce un nombre de usuario" \
		--title "Usuario" \
		--add-entry "USU"`

id $usuario 1>/dev/null 2>/dev/null
error=$?


if [ $error -ne 0 ]
then
	echo "El usuario $usuario no existe"
else
uid=`id $usuario | cut -f1 -d" " |cut -f2 -d"=" |cut -f1 -d"("`
gid=`id $usuario | cut -f2 -d" " | cut -f2 -d"="`
grupos=`id $usuario | cut -f3 -d" "| cut -f2 -d"="`
	zenity --info --text "El nombre de usuario es $usuario"
	zenity --info --text "El uid es $uid"
	zenity --info --text "El grupo primario es $gid"
	zenity --info --text "Los grupos secundarios son $grupos"
fi

