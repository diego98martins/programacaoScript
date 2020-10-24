#!/bin/bash

while [ ! -f "key" ]; do
    sleep 2
    echo "oi"
done

echo "key criado!"