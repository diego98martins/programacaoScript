#!/bin/bash

arquivo1=$1
arquivo2=$2
arquivo3=$3

ls $arquivo1 $arquivo2 $arquivo3 &> /dev/null || exit 0
echo $(wc -l $arquivo1 $arquivo2 $arquivo3)
