#!/bin/bash

while read linha; do

    (ping -c 4 $linha) || echo "Não foi possível acessar o ip: $linha"
    echo " "

done <ips.txt