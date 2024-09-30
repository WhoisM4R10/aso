#!/bin/bash

num=$(( RANDOM % 100 ))
parar=1

echo "-----------------------------------------------------
+ Bienvenido al juego de adivina el numero          +
+ Este juego trata de que vayas escribiendo numeros +
+ Y yo te proporcionare pistas segun si             +
+ el numero es mas grande o no                      +
+ Tienes numero infinito de intentos                +
+ y el numero sera de 0 a 100                       +
+ Si deseas puedes escribir 0 para rendirte         +
+ Empezamos?                                        +
-----------------------------------------------------"

until [ "$parar" -eq 0 ]; do

  read -p "Dime un numero: " numusu

  if [ "$numusu" -eq 0 ]; then
	echo "Te has rendido, el numero era $num"
	parar=0
        exit 1
  fi

  if [ "$numusu" -eq "$num" ]; then
	echo "Has acertado!!!! Enhorabuena"
	parar=0
	exit 1
  elif [ "$numusu" -lt "$num" ]; then
	echo "El numero es mayor"
  else
	echo "El numero es menor"
  fi
done
