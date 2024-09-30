#!/bin/bash

hora_act=$(date +"%H")

if [ "$hora_act" -ge 8 ] && [ "$hora_act" -lt 15 ]; then
	echo "Buenos dias"
elif [ "$hora_act" -ge 15 ] && [ "$hora_act" -lt 20]; then
	echo "Buenas tardes"
else
	echo "Buenas noches"
fi
