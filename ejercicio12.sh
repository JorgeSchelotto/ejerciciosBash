echo "Ingrese dos numeros"
read num1
read num2


echo $((num1 * num2))

echo $((num1 + num2))

echo $((num1 - num2))

if [ $num1 -gt $num2 ]; then

	echo "el mayor es $num1"
else

	echo "el mayor es $num2"
fi


