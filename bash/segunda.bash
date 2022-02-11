#!/bin/bash

varrandom=$((RANDOM%11))

echo "Adivina un numero del 0 al 10. Introduce un valor:"
read varuser

if [ $varrandom -eq $varuser ]; then
    echo "Felicidades, lo has adivinado"
else
    echo "El numero era" $varrandom
    echo "Menudo parguelón"
fi