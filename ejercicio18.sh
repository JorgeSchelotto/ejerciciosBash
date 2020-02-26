#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Se debe ingresar el nombre de un usuario."
    exit 1
fi

logeo=$(who | grep $1 | wc -l)

while true; do
    
    if [ $logeo = 1 ]; then
        echo "Se logeo $1"
        exit 1
    fi
    
    echo "Esperando a usuario $1"
    sleep 10
    
done