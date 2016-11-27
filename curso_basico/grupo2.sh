#!/bin/bash

clear

echo "Grupos ordenados por numero:"
echo "---------------------------------------------------"
echo "Nombre del grupo \ Numero   \  Usuarios"
echo "---------------------------------------------------"

cat /etc/group | cut -f1,3,4 -d: | sort -t: -n -k2  |sed "s/:/ ---- \t/g" | more -10

echo "Pulse intro para continuar"
read

