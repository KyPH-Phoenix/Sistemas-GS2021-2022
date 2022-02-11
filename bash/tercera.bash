#!/bin/bash
echo Programa de listado de documentos introduce un path. Format : /folder/folder
read pathUser
cd $pathUser
listado=$(ls -l)
IFS=$'\n'
expresion="[aA-zZ]+[x]"
for linea in $listado
do
if [[ $linea =~ $expresion ]]
then
echo $linea
fi
done
    