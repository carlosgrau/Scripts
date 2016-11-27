#!/bin/bash

bytes=`cat  ./respaldo.error | cut -f4 -d" "`

for num in $bytes
do
total=`expr $total + $num`
done

Kb=`expr "$total" \/ 1024`
Mb=`expr "$Kb" \/ 1024`
Gb=`expr "$Mb" \/ 1024`


zenity --info --text "Total de bytes respaldatos: $total"

zenity --info --text "Total de Megabytes respaldados: $Mb"

zenity --info --text "Total de Gigabytes respaldados: $Gb"
