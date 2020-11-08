#!/bin/bash

echo "Escolha uma opção: "

options=("Liste apenas os diretórios de uma pasta" "Liste apenas os executáveis" "Liste apenas os scripts shell" "Sair")
select opt in "${options[@]}"
do
    case $opt in
        "Liste apenas os diretórios de uma pasta")
            ls -l | grep -E '^d' | cut -d ' ' -f11
            ;;
        "Liste apenas os executáveis")
            ls -l | grep -E '^-..x' | cut -d ' ' -f11
            ;;
        "Liste apenas os scripts shell")
             ls -l | grep -E '\.sh$' | cut -d ' ' -f11
            ;;
        "Sair")
            break
            ;;
        *) echo "$REPLY : opção inválida";;
    esac
done