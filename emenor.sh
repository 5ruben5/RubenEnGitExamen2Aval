#!/bin/bash

menor=9999
ciudad=""

while read linea
do
  ciudad_actual=`echo $linea | awk '{print $1}'`
  consumo_actual=`echo $linea | awk '{print $4}'`
  if [ $consumo_actual -lt $menor ]
  then
    menor=$consumo_actual
    ciudad=$ciudad_actual
  fi
done < consumos.txt

echo "La ciudad con menor consumo es $ciudad su consumo es de $menor"
