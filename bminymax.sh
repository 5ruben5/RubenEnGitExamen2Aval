#!/bin/bash

# Obtener la línea 16 y 15 del archivo consumo.txt

linea8=$(sed -n '8p' consumos.txt)
linea16=$(sed -n '16p' consumos.txt)

echo "Este es el consumo minimo: $linea8"
echo "Este es el consumo maxiom: $linea16"
