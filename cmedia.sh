#!/bin/bash 

#Obtenemos el nombre de la ciudad que nos han pasado como parametro 
ciudad=$1

#Calculamos la media de los consumos 
media=$(cat consumos.txt | grep $ciudad | awk '{sum+=$4} END {print sum/NR}')

#Mostramos el resultado
echo "La media de consumo en $ciudad es $media"
