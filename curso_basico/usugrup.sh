#!/bin/bash


echo "Introduce un nombre de usuario"
read usuario

id $usuario 1>/dev/null 2>/dev/null
error=$?


if [ $error -ne 0 ]
then
	echo "El usuario $usuario no existe"
else
uid=`id $usuario | cut -f1 -d" " |cut -f2 -d"=" |cut -f1 -d"("`
gid=`id $usuario | cut -f2 -d" " | cut -f2 -d"="`
grupos=`id $usuario | cut -f3 -d" "| cut -f2 -d"="`
	echo "El nombre de usuario es $usuario"
	echo "El uid es $uid"
	echo "El grupo primario es $gid"
	echo "Los grupos secundarios son $grupos"
fi

