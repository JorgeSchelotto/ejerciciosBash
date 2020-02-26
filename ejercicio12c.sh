if [ $# -ne 3 ]; then
    echo "Numero de parametros incorrectos. Debe ingresar un numero, una operacion y otro numero"
    exit 0
fi

if [ $2 = "+" ]; then
    echo $(($1 + $3))
fi

if [ $2 = "-" ]; then
    echo $(($1 - $3))
fi

if [ $2 = "*" ]; then
    echo $(($1 * $3))
fi

if [ $2 = "/" ]; then
    echo $(($1 / $3))
fi