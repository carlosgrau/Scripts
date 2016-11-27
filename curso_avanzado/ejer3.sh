#!/bin/bash

if [ -d $1 ]
then
	echo "El directorio $1 existe"
	ls -lR $1 2>/dev/null | grep '^d' | more -23
else
	echo "El directorio no existe"
fi
