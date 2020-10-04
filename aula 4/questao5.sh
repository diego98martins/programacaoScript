#!/bin/bash

primeira_execucao=1
ls 1.log &> /dev/null && primeira_execucao=0
ls 2.log &> /dev/null && primeira_execucao=0


while true; do
	a=$(( ${RANDOM} % 10 ))
	touch ${a} 2>> 2.log && echo “$(date +%H:%M) ${a}: criado!” >> 1.log
	sleep 1
	b=$(( ${RANDOM} % 10 ))
	rm ${b} 2>> 2.log && echo “$(date +%H:%M) ${b}: removido!” >> 1.log
	
	((${primeira_execucao} == 0)) && echo -e "SUCESSO \n" > 3.log
	((${primeira_execucao} == 0)) && cat 1.log >> 3.log
	((${primeira_execucao} == 0)) && echo -e "FALHA \n" >> 3.log
	((${primeira_execucao} == 0)) && cat 2.log >> 3.log
done
