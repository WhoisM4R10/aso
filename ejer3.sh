#!/bin/bash

ls /etc  > /home/martoa/ls1.txt
cat /home/martoa/ls1.txt

echo "El numero de lineas son $(wc -l < ls1.txt) y el numero de palabras son $(wc -w < ls1.txt)"
