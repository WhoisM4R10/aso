#!/bin/bash

read -p "Dame un numero: " num1
read -p "Dame otro numero: " num2

echo "* SELECCIONA UNA OPCION *
* 1. SUMA               *
* 2. RESTA              *
* 3. DIVISION           *
* 4. MULTIPLICACION     *"
read -p "¿ QUE QUIERES HACER ?: " opcion

case $opcion in
	1)
	  suma=$(echo "$num1 + $num2" | bc)
	  echo "$num1 + $num2 = $suma"

	  ;;
	2)
	  resta=$(echo "$num1 - $num2" | bc)
	  echo "$num1 + $num2 = $resta"
	  ;;
	3)
	  div=$(echo "$num1 / $num2" | bc)
	  echo "$num1 / $num2 = $div"
	  ;;
 	4)
	  mult=$(echo "$num1 * $num2" | bc)
	  echo "$num1 * $num2 = $mult"
	  ;;
	*)
	  echo "No es una opcion valida"
	  ;;
esac
