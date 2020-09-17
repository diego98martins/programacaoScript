#!/bin/bash

mkdir 0

read -p "digite um número inteiro" numero
modulo=$(($numero%2))


ls $modulo 2> /dev/null && echo "PAR"
ls $modulo 2> /dev/null || echo "IMPAR"

rmdir 0
