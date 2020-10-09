#!/bin/bash

arquivos=$*

for x in $arquivos ; do
	ls $x &> /dev/null && echo $x "SIM" || echo $x "NAO"
done
