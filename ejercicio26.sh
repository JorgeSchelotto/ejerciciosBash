#!/bin/bash

if [ $# -lt 1 ]; then
    echo "Se debe ingresar como minimo un parametro"
    exit 4
fi
cant=0
pos=0
for dir in "$@"; do
    if [ -e "$dir" ]; then
        if [ $(($pos % 2)) -ne 0 ]; then
            
            if [ -f "$dir" ]
            then
                echo "La direccion $dir es un archivo"
            elif [ -d "$dir" ]
            then
                echo "La direccion $dir es un directorio"
            fi
            
        fi
        let pos++
    else
        let cant++
    fi
done

echo "No existen $cant directorios"