#!/bin/bash

declare -A array

while read line; do

    index=$(echo $line | awk '{print $1}')
    valor=$(echo $line | awk '{print $2}')

    ((array[$index] += $valor))
done <questao2.txt

for index in ${!array[*]}; do
    echo "$index ${array[$index]}"
done
