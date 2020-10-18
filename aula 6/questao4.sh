#!/bin/bash

arq1=$1
arq2=$2
arq3=$3

contador_arq_critico=0

(($(cat $arq1 | wc -l) >= 5)) && contador_arq_critico+=1
(($(cat $arq2 | wc -l) >= 5)) && contador_arq_critico+=1
(($(cat $arq2 | wc -l) >= 5)) && contador_arq_critico+=1

if (($contador_arq_critico >= 2)); then
	echo "pelo menos 2 arquivos críticos"
fi
