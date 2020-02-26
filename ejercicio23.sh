#!/bin/bash

num=(10 3 5 7 9 3 5 4 6 8)

total=0
for i in ${num[*]}; do
    
    if [ $(($i % 2)) -eq 0 ]; then
        echo "$i"
    else
        
        let total++
    fi
done

echo "Impares: $total"