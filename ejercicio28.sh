#!/bin/bash


if [ $# -lt 1 ]; then
    echo "N° de parametros incorrectos."
    exit 0
fi


lectura=0
escritura=0
for archivo in $(ls "$1"); do
    echo "$archivo"
    if [ -f $archivo ]; then
        if [ -r $archivo ]; then
            lectura=$(expr $lectura + 1)
        fi
        if [ -w $archivo ]; then
            escritura=$(expr $escritura + 1)
        fi
    fi
done
echo "Lectura: $lectura"
echo "Escritura: $escritura"