#!/bin/bash

arquivo=$1
x=$2

y=$x

while true; do
    cat $arquivo | head -$y | tail -$x
    y=$((y += $x))
    read -p "Pressione enter para continuar"
done
