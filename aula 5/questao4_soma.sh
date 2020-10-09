#!/bin/bash

for x in $(cat num.txt) ; do
	soma=$((soma+=$x))
done

echo "SOMA: " $soma
