#!/bin/bash

lista=$(ls)

for x in $lista; do
	cat $x | wc -l
done
