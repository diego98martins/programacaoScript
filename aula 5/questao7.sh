#!/bin/bash

lista=$(ls)

for x in $lista; do
	md5_1=$(cat "$x" | md5sum)
	for y in $lista; do
		md5_2=$(cat "$y" | md5sum)
		if [[  $md5_1 == $md5_2 ]] && [[ "$x" != "$y" ]]; then
  			echo "$x e $y são iguais"
		fi
	done
done
