#!/bin/bash

for (( i=1; i<=10; i++ )); do
	operacion=$(echo "$1 * $i" | bc)
	echo "$1 x $i = $operacion"
done

