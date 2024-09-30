#!/bin/bash

echo "***** Elige una opcion *****
*     1. Añadir		   *
*     2. Buscar		   *
*     3. Listar 	   *
*     4. Ordenar	   *
*     5. Borrar		   *
*     6. Salir		   *
****************************"
read -p "Que quieres hacer?: " opcion

case $opcion in
	1)
	  read -p "Nombre: " nom
	  read -p "Apellido: " appe
	  read -p "Direccion: " dir
	  read -p "Telefono: " telf
	  echo "$nom, $appe, $dir, $telf" >> agenda.txt
	  ;;
	2)
	  read -p "Nombre que buscas: " nom2
	  grep "$nom2" agenda.txt
	  ;;
	3)
	  cat agenda.txt
	  ;;
	4)
	  sort agenda.txt
	  ;;
	5)
	  rm -r agenda.txt
	  ;;
	6)
	  echo "Hasta luego"
	  exit 1
	  ;;
	*)
	  echo "No se ha pasado un caracter valido"
	  ;;
esac
