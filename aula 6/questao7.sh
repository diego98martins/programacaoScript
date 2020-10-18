#!/bin/bash

ls=$(ls)
recente=$(ls | head -1)

for x in *; do
    if [ $x -nt $recente ]; then
        recente=$x
    fi
done

echo $recente