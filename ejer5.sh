#!/bin/bash

read -p "Dame un numero: " num1
read -p "Dame otro numero: " num2

media=$(echo "scale=2; ($num1 + $num2) / 2" | bc)

echo "La media de los 2 numeros es $media"
