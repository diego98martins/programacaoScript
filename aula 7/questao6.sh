#!/bin/bash

while :; do

    cat <<EOF
    digitar 1 para testar o terminador ;;
    digitar 2 para testar o terminador ;;&
    digitar 3 para testar o terminador ;&
EOF

    read -p "Digite uma opção:" param

    clear
    case $param in

    1)
        echo "terminador convencional, o comando é encerrado ao entrar no case"
        ;;
    2)
        echo "terminador do bash 4.0, o comando não é encerrado, testará os próximos padrões"
        ;;&
    3)
        echo "terminador do bash 4.0, o próximo bloco será executado, sem sequer testar o seu padrão"
        ;&
    *)
        echo "você escolheu sair"
        break
        ;;

    esac

done
