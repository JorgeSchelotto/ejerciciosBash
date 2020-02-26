if [ $# -ne 2 ]; then
    echo "Pasaste mal los parametros pápa, pasalos bien."
    exit 0
fi


echo $(($1 * $2))

echo $(($1 + $2))

echo $(($1 -$2))

if [ $1 -gt $2 ]; then
    
    echo "el mayor es $1"
else
    
    echo "el mayor es $2"
fi


