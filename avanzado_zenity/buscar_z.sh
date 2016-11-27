#!/bin/bash

function buscar () {
        for F in *
        do
                if [ -f "$F" ]
                then
                  zenity --info --text  "Encontrado fichero $F"
                elif [ -d "$F" ];
                then
                  cd "$F"
                  buscar
                  cd ..
                fi
        done
}

buscar 

