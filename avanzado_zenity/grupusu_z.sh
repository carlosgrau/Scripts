#!/bin/bash

grupo=`zenity --forms --text "Introduce un nombre de grupo" \
	      --text "Nombre del grupo" \
	      --add-entry "Grupo"`

existe=`cat /etc/group |grep "^$grupo" | cut -f1 -d:`

if [ $existe != $grupo ]
then
	zenity --info --text "El grupo $grupo no existe"
else
gid=`cat /etc/group |grep "^$grupo"| cut -f3 -d:`
grupoprimario=`cat /etc/passwd | grep "^$grupo"| cut -f5 -d:`
gruposecundario=`cat /etc/group | grep "$grupo"| cut -f4 -d:`

zenity --info --text  "El nombre del grupo es $grupo"
zenity --info --text "El numero de grupo(GID) es $gid"
zenity --info --text "Los usuarios que pertenecen a el son $grupoprimario $gruposecundario"
fi
