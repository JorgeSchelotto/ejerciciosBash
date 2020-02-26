#!/bin/bash

pila=()

push(){
    
    i=${#pila[*]}
    pila[$i]=$1
    echo "${#pila[*]}"
}

lenght(){
    echo ${#pila[*]}
}

pop(){
    i=$((${#pila[*]} - 1))
    unset pila[$i]
}

print(){
    echo "${pila[*]}"
}

push $1
lenght
pop
lenght
push $1
push $2
push $3
print