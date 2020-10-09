#!/bin/bash

diretorio=$1
lista=$(ls $1)

for x in $lista; do
	cat $x | wc -l >> lista.txt
done

cat lista.txt | sort -n -r
rm lista.txt
