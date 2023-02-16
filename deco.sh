
#!/bin/bash

echo "Introduce el nombre de la ciudad:"
read ciudad

media=$(cat consumos.txt | grep $ciudad | awk '{ sum += $5 } END { if (NR > 0) print sum / NR }')

if [ $media -lt 400 ]
then
    echo "ECO"
else
    echo "NO ECO"
fi
