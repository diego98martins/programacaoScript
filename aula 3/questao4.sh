#!/bin/bash
diretorio1=$1
diretorio2=$2
diretorio3=$3


arquivos1=$(ls $diretorio1 | wc -l)
arquivos2=$(ls $diretorio2 | wc -l)
arquivos3=$(ls $diretorio3 | wc -l)

echo $arquivos1 > temp.txt
echo $arquivos2 >> temp.txt
echo $arquivos3 >> temp.txt

cat temp.txt | sort -n > lista_ordenada.txt

primeiro=$(sed -n '1p' < lista_ordenada.txt)
segundo=$(sed -n '2p' < lista_ordenada.txt)
terceiro=$(sed -n '3p' < lista_ordenada.txt)

rm temp.txt lista_ordenada.txt

(($primeiro == $arquivos1)) && echo $diretorio1
(($primeiro == $arquivos2)) && echo $diretorio2
(($primeiro == $arquivos3)) && echo $diretorio3

(($segundo == $arquivos1)) && echo $diretorio1
(($segundo == $arquivos2)) && echo $diretorio2
(($segundo == $arquivos3)) && echo $diretorio3

(($terceiro == $arquivos1)) && echo $diretorio1
(($terceiro == $arquivos2)) && echo $diretorio2
(($terceiro == $arquivos3)) && echo $diretorio3
