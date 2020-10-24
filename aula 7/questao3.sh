#!/bin/bash

while :; do

    cat <<EOF
    digitar q, sai do script
    digitar d, mostra os diretórios da pasta atual
    digitar f, exibe os arquivos da pasta atual
    digitar v <arq>, exibe o conteúdo do arquivo <arq>
    digitar cd <dir>, muda para o diretório <dir>
EOF

    read -p "Digite uma opção:" param arq

    clear
    case $param in

    q)
        break
        ;;
    d)
        ls -F | grep '/'
        ;;
    f)
        ls -F | grep -v '/'
        ;;
    v)
        cat $arq
        ;;
    cd)
        cd $dir
        ;;
    *)
        echo "digite uma opção válida"
        ;;
    esac

done
