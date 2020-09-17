#!/bin/bash

diretorio1=$1
diretorio2=$2
diretorio3=$3

ls $diretorio1 $diretorio2 $diretorio3 &> /dev/null || exit 0

echo $(ls | wc -l $diretorio1 $diretorio2 $diretorio3)
