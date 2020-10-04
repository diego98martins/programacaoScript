#!/bin/bash
workdir=”/tmp/workdir” 2> /dev/null
mkdir $workdir

{
cd $workdir
ls $1 || exit 1
ls $2 || exit 1
ls $3 || exit 1

cat $1 $2 $3 | tr ‘ ‘ ‘\n’ | sort | grep -v “comentario”
} 2> /dev/null
