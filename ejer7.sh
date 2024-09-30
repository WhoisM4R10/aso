#!/bin/bash

if [ -z "$1" ]; then
    echo "Tienes que poner un directorio como parámetro."
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "'$1' no es un directorio válido."
    exit 1
fi

fecha=$(date +"%Y-%m-%d")
nom_dir=$(basename "$1")
archivo="$fecha-$nom_dir.tar.gz"
tar -czf "$archivo" "$1"
