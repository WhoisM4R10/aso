#!/bin/bash

conta=0
conta_fich=0
conta_dir=0

if [ "$#" -lt 1 ]; then
  echo "No se han pasado caracteres o se ha excedido el limite de 1"
  exit 1
fi

if [ ! -d "$1" ]; then
  echo "El nombre no es un directorio"
else
  for entrada in "$1"/*; do
     conta=$((conta + 1))
     if [ -d "$entrada" ]; then
       conta_dir=$((conta_dir + 1))
     elif [ -f "$entrada" ]; then
       conta_fich=$((conta_fich + 1))
     fi
  done
fi
echo "El directorio contiene $conta archivos dentro de los cuales $conta_dir son directorios y $conta_fich son ficheros"
