#!/bin/bash

VALORES=`zenity --forms --title="Añadir dos numeros" \
	--text="Añadir dos numeros" \
	--separator="," \
	--add-entry="Primer numero" \
	--add-entry="Segundo numero"`
V1=`echo $VALORES | cut -f1 -d","`
V2=`echo $VALORES | cut -f2 -d","`

if [ `echo $V1 $V2 | wc -w` -ne 2 ]

        then zenity --info --text  "Necesito dos argumentos"
else

	if [ $V1 -ge 0 ] && [ $V1 -le 100 ]
	then
		zenity --info --text  "$V1 esta entre 0 y 100"
	else
		zenity --info --text  "$V1 no esta entre 0 y 100"
	fi

	if [ $V2 -ge 0 ] && [ $V2 -le 100 ]
	then
		zenity --info --text  "$V2 esta entre 0 y 100"
	else
		zenity --info --text  "$V2 no esta entre 0 y 100"
	fi
fi
