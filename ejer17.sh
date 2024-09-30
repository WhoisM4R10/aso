#!/bin/bash

suma=0
num=-1

while [[ $num -ne 0 ]]; do
  read -p "Introduce un numero: " num
  resul=$(echo "$suma + $num" | bc)
  suma="$resul"
  echo "El resultado es $resul"

done
