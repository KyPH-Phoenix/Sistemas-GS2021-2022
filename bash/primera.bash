#!/bin/bash

es_primo() {
    if [ $1 -eq 1 ]; then
        return 0
    fi

    for ((i = 2; i < $1; i++)); do
        if [ $(($1 % $i)) -eq 0 ]; then
            return 1
        fi
    done

    return 0
}

numero1=$1
numero2=$2

for ((j = $numero1; j < $numero2 + 1; j++)); do
    es_primo $j
    if [ $? -eq 0 ]; then
        echo $j
    fi
done



#!/bin/bash

cd $1

lineas=$((ls -l))

regex="(-.{2}x.*\s)^(.*)$"

echo $lineas