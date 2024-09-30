#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "No has pasado ningun parametro"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "Eso no es un directorio"
  exit 1
fi

dir=$1
conta=0

for entrada in "$dir"/*; do
  conta=$((conta + 1))

if [ -d "$entrada" ]; then
  echo "$entrada es un directorio"
elif [ -f "$entrada" ]; then
  echo "$entrada es un fichero"
else
  echo "$entrada es otro tipo de entrada"
fi
done

echo "Total de entradas procesadas: $conta"

