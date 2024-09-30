#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "No has puesto los caracteres necesarios"
	exit 1
else
	if [ ! -f "$1" ]; then
		echo "El archivo $1  no existe"
		exit 1
	else
		if [ -e "$2" ]; then
			echo "El archivo $2 ya existe"
			exit 1
		else
			cp "$1" "$2"
fi
fi
fi

if [ "$?" -eq 0 ]; then
    echo "El archivo $1 se ha copiado exitosamente"
else
    echo "El archivo $1 no se ha copiado"
fi
