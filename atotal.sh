#!/bin/bash

#Declaramos una variable para guardar el nombre de la ciudad
ciudad=""

#Bucle para que el usuario introduzca una ciudad válida
while [[ $ciudad == "" ]]
do
	echo "Introduce una ciudad"
	read ciudad

	#Comprobamos que la ciudad existe
	if [[ $(cat ciudades.txt | grep -w $ciudad) == "" ]]
	then
		echo "Ciudad no existe"
		ciudad=""
	fi
done

#Calculamos el total de consumo de la ciudad
total=$(cat consumo.txt | grep -w $ciudad | awk '{s+=$2} END {print s}')

echo "El total de consumo de $ciudad es $total"
