#!/bin/bash

function motivacional() {

    frases=(
        'seja persistente! - diego'
    )

    DATA=$(date +%y-%m-%d)
    echo $DATA ${frases[0]}
}

motivacional > frase_do_dia.txt
