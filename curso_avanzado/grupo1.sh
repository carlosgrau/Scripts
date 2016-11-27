#!/bin/bash

clear

echo "---------------------------------------------------"
echo "Nombre del grupo \ Numero   \  Usuarios"
echo "---------------------------------------------------"

cat /etc/group | cut -f1,3,4 -d: |sed "s/:/ --- \t/g" | sort | more -10

echo "Pulse intro para continuar"
read

