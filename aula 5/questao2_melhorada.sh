#!/bin/bash

lista=$(ls)

for x in $lista; do
	cat $x | wc -l >> lista.txt
done

cat lista.txt | sort -n -r
rm lista.txt
