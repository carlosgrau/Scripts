#!/bin/bash

if [ ! -d $HOME/bin ]
then
	mkdir $HOME/bin
fi

contm=0
contnm=0

for i in *
do
	if [ -x $i ]
	then
		cp $i $HOME/bin
		echo "$i a sido movido"
		contm=` expr $contm + 1`
	else
		contnm=`expr $contnm + 1`
	fi
done
zenity --info --text "Se han movido $contm archivos"
zenity --info -text "No se han movido $contnm archivos"

