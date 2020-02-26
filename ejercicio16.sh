#!/bin/bash

if [ $# -ne 1 ]; then
    exit 0
fi


for usuario in $(ls *.$1 -la | cut -d' ' -f3); do
    echo "$usuario $(find -user $usuario -name "*.$1" | wc -l)"
done
