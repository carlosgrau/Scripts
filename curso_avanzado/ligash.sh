#!/bin/bash

echo "Introduce un nombre de un directorio"
read directorio

if [ -d $directorio ]
then
        ls -l $directorio | grep "^-" | sed "s/\s\s*/#/g" | cut -f2,9 -d# | grep -v "^1" |cut -d# -f2
else
        echo "El nombre introducido no corresponde a un directorio"

fi



