#!/bin/bash

num_numeros=0
num_strings=0

while read linha; do

    if [ $linha -eq $linha ] 2> /dev/null ; then
        ((num_numeros+=1))
        continue
    fi
    ((num_strings+=1))

done <arq.txt

echo "Total: $num_strings strings e $num_numeros números"
