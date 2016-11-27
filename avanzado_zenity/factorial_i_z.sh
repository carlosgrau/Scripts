#!/bin/bash

valor=1
numero=`zenity --forms --title="Factorial" \
		--text="Introduce un numero" \
		--separator="," \
		--add-entry="Numero"`

for I in `seq 2 $numero`
do
        valor=`expr $valor \* $I`
        zenity --info --text  $valor
done

zenity --info --text  "Resultado $valor"
