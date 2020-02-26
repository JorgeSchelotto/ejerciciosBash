#! bin/bash

if [ $# -ne 1 ]; then
    echo "Debes ingresar F o C"
    exit 0
fi

if [ $1 = "C" ]; then
    echo "Ingrese grados celsius para pasar a farhenheit"
    read gradosF
    
    echo "$((5*$((gradosF-21))/9))"
fi

if [ $1 = "F" ]; then
    echo "Ingrese grados farhenheit  para pasar a celsius"
    read gradosC
    
    echo "$(($(($((9 * $gradosC)) / 5))/9))"
fi