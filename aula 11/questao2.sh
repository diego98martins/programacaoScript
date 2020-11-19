#!/bin/bash

>meninos.txt
>meninas.txt

cat questao2.txt | awk '{ print $1" "$2 }' > meninos.txt
cat questao2.txt | awk '{ print $3" "$4 }' > meninas.txt