#!/bin/bash

read -p "Dime un numero: " num1
read -p "Dime otro numero: " num2

if [ $num1 -gt $num2 ]; then
	echo "El numero $num1 es el mayor"
else
	echo "El numero $num2 es mayor"
fi
