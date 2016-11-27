#!/bin/bash

echo "Introduce un nombre de grupo"
read grupo

existe=`cat /etc/group |grep "^$grupo" | cut -f1 -d:`

if [ $existe != $grupo ]
then 
	echo "El grupo $grupo no existe"
else
gid=`cat /etc/group |grep "^$grupo"| cut -f3 -d:`
grupoprimario=`cat /etc/passwd | grep "^$grupo"| cut -f5 -d:`
gruposecundario=`cat /etc/group | grep "$grupo"| cut -f4 -d:`

echo "El nombre del grupo es $grupo"
echo "El numero de grupo(GID) es $gid"
echo "Los usuarios que pertenecen a el son $grupoprimario $gruposecundario"
fi
