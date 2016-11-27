#!/bin/bash


suma=0

while [ $suma -le 100 ]
do
	sumasig=`zenity --forms --title="Numeros" \
--text="Numero que quieres sumar" \
--separator="," \
--add-entry="Numero"`
	suma=`expr $suma + $sumasig`
done

zenity --info --text "Resultado: $suma"

