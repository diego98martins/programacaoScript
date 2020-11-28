#!/bin/bash

while read line; do
    nomes=($line)
    sobrenomes=${nomes[*]:1:$((${#nomes[*]} - 2))}

    arrayS=($sobrenomes)

    for s in "${arrayS[@]}"; do
        bar="$bar ${s:0:1}."
    done

    echo ${nomes[0]} $bar ${nomes[*]: -1}
    bar=''
done <questao3.txt
