#!/bin/bash

ls=$(ls)

for x in *; do
	for y in *; do
		if [ $x -ef $y ]; then
			echo "$x e $y tem a mesma quantidade de linhas"
		fi
	done
done
