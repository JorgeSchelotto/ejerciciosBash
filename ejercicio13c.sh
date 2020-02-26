#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Debe ingresar el nombre de una archivo por parametro."
    exit 0
fi

if [ -e $1 ]; then
    if [ -f $1 ]; then
        echo "$1 es un archivo"
        elif [ -d $1 ]; then
        echo "$1 es un directorio"
    fi
else
    echo "El archivo no existe. Se creara el archivo"
    touch $1
    echo "Se creo el archivo $1"
fi