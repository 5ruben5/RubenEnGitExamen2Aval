#!/bin/bash

# Obtener la línea 16 y 15 del archivo consumo.txt

linea15=$(sed -n '15p' consumos.txt)
linea16=$(sed -n '16p' consumos.txt)

echo "Este es el consumo minimo: $linea15"
echo "Este es el consumo maxiom: $linea16"
