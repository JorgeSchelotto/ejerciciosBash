#!/bin/bash

select opcion in listar dondeEstoy quienEsta salir
do
    if [ $opcion = "listar" ]
    then
        echo `ls`
        
    elif [ $opcion = "dondeEstoy" ]
    then
        echo `pwd`
        
    elif [ $opcion = "quienEsta" ]
    then
        echo `who`
        
        
    elif [ $opcion = "salir" ]
    then
        echo "Nos vi."
        break
        
    fi
done