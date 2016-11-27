#!/bin/bash

echo "--------------------------------------------------------------------"
echo "Nombre de login    \    Directorio del usuario     \    Interprete"
echo "--------------------------------------------------------------------"

echo
cat /etc/passwd | cut -f1,6,7 -d: |sed "s/:/\t --- \t/g"| sort | more -10
echo


