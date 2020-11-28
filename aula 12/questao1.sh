#!/bin/bash

echo 'digite números separados por espaço'
read -a array

min=${array[0]}

for i in "${array[@]}"
do
    if [[ "$i" -lt "$min" ]]; then
        min="$i"
    fi
done

echo "Mínimo é: $min"