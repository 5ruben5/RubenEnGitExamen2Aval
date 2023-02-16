#!/bin/bash

echo "Introduce la ciudad:"
read ciudad

while [[ $ciudad != "Valencia" && $ciudad != "Madrid" && $ciudad != "Barcelona" ]]
do
    echo "La ciudad no es ni Valencia ni Madrid ni Barcelona. Vuelve a intentarlo:"
    read ciudad
done

if [[ $ciudad == "Valencia" ]]; then
    echo "El consumo de Valencia es 2.751"
elif [[ $ciudad == "Madrid" ]]; then
    echo "El consumo de Madrid es 4.032"
else
    echo "El consumo de Barcelona es 3.080"
fi
