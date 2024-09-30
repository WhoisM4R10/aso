#!/bin/bash

read -p "Dame un numero para saber si es primo: " num

primo=1

for ((i = 2; i * i <= num; i++)); do
        if (( num % i == 0 )); then
            primo=0
	fi
done

if [ "$primo" -eq 1 ]; then
	echo "$num es primo"
else
	echo "$num no es primo"
fi
