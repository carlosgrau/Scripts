#!/bin/bash

archivo=`tempfile`
temp=`tempfile`
echo "Grupos ordenados por numero:">>$archivo
echo "-----------------:-----------:-----------------------">>$archivo
echo "Nombre del grupo:Numero      : Usuarios">>$archivo
echo "-----------------:-----------:-----------------------">>$archivo

cat /etc/group | cut -f1,3,4 -d: | sort -t: -n -k2 >>$archivo

cat $archivo |column -t -s":" >>$temp

zenity --text-info --height 500 --width 500 \
        --title="/etc/group" \
        --filename=$temp 2>/dev/null 




