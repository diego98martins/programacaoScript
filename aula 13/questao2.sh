#!/bin/bash

source questao1.sh

array=($(cat questao2.txt | tr '\n' ' '))

max=0
min=0

for i in ${array[*]}; do
    max=$(maior $i $max)
    min=$(menor $i $min)
done

echo $max
echo $min