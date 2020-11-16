#!/bin/bash

echo "Escolha uma opção: "

options=("Liste apenas os diretórios de uma pasta" "Liste apenas os executáveis" "Liste apenas os scripts shell" "Sair")
select opt in "${options[@]}"
do
    case $opt in
        "Liste apenas os diretórios de uma pasta")
            ls -l | grep -E '^d'
            ;;
        "Liste apenas os executáveis")
            ls -l | grep -E '^-..x'
            ;;
        "Liste apenas os scripts shell")
             ls -l | grep -E '\.sh$'
            ;;
        "Sair")
            break
            ;;
        *) echo "$REPLY : opção inválida";;
    esac
done