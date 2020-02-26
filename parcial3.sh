#! bin/bash

usuarios=()

usuarios=$(cat /etc/passwd | cut -d: -f1)

existe(){
    for user in ${usuarios[@]}; do
        if [ $user = "$1" ]; then
            echo "1"
            return 1
            
        fi
    done
    
    return 2
}

existe $1

ejecuta(){
    process=` ps -u "$1" | grep "$2" | wc -l `
    if [ $process -gt 0 ] ; then
        return "1"
    fi
}

cantidad(){
    echo "Cantidad de usuarios ` cat /etc/passwd | wc -l `"
}

todos(){
    echo "` cat /etc/passwd | cut -d: -f1 `"
}

ejecuta jorge chrome
cantidad
todos