#!/bin/bash

ls=$(ls)

for x in *; do
	for y in *; do
		# verifica se x e y são arquivos, se x e y são arquivos diferentes, por fim o número de linhas
		if [ -f $x -a -f $y -a $x != $y -a $(cat $x | wc -l) -eq $(cat $y | wc -l) ]; then
			echo "$x e $y tem a mesma quantidade de linhas"
		fi
	done
done
