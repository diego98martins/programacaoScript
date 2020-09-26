#!/bin/bash

arquivo1=$1
arquivo2=$2
arquivo3=$3

read -p "digite o texto proibido" texto_proibido

echo $texto_proibido

mkdir tmp

cat $arquivo1 | grep $texto_proibido && echo $arquivo1 && mv $arquivo1 ./tmp
cat $arquivo2 | grep $texto_proibido && echo $arquivo2 && mv $arquivo2 ./tmp
cat $arquivo3 | grep $texto_proibido && echo $arquivo3 && mv $arquivo3 ./tmp

