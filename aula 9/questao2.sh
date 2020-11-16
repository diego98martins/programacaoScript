#!/bin/bash

arquivo=$1
contar=$2 # 0 ou 1

((contar == 0)) && grep -v -E '^$' $arquivo > tmp && mv tmp $arquivo
((contar == 1)) && grep -E '^$' $arquivo | wc -l