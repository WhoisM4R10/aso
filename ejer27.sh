#!/bin/bash
existe() {
    if [ -e "$1" ]; then
        echo "El fichero '$1' existe."
        chmod u+x,go-x "$1"
        echo "Se han cambiado los permisos del fichero para que solo el propietario pueda ejecutarlo."
    else
        echo "El fichero '$1' no existe."
    fi
}

if [ $# -eq 0 ]; then
    echo "No se han proporcionado parametros"
    exit 1
fi

existe "$1"

