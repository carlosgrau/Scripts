#!/bin/bash

edad=`zenity --forms --title="Edades" \
	--text="Introduzca la edad." \
	--add-entry="Edad"`
case $edad in
 [0-9]|1[0-3]) zenity --info --text "Niño";;
 1[4-8]) zenity --info --text "Joven";;
 *) zenity --info --text "Mayor";;
esac
