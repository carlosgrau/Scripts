#!/bin/bash

#Extraer nombre de usuario y hora real.
#nombrelog=who | cut -f1 -d" "
#nombre=`cat /etc/passwd | grep "^$nombrelog" | cut -f5 -d`:
#hora=date |  cut -c13-14

nombrelog=root
nombre=`cat /etc/passwd | grep "^$nombrelog" | cut -f5 -d:`
hora=17

if [ $hora -le 5 ]
then 
	echo "BUENAS NOCHES $nombre"
elif [ $hora -le 12 ]
then 
	echo "BUENOS DIAS $nombre"
elif [ $hora -le 19 ]
then
	echo "BUENAS TARDES $nombre"
elif [ `expr "$hora" \<= 24` ]
then
	echo "BUENAS NOCHES $nombre"
fi
