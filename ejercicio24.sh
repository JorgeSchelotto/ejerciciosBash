#!/bin/bash

num1=(10 3 5 7 9 3 5 4 6 8)
num2=(10 3 5 7 9 3 5 4 6 8)
len=${#num1[*]}
for (( i=0; i<$len; i++ )); do
    echo "La suma de los elementos en la posicion $i es $((${num1[$i]} + ${num2[$i]}))"
done