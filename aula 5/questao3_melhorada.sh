#!/bin/bash

a=$1
b=$2

for ((i=0;i<=$b;i+=$a)) ; do
	echo $i
done
