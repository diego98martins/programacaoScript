#!/bin/bash

function ping_test {
    if (ping -c1 $1 &>/dev/null); then
        echo "OK"
    else
        echo "FALHA"
    fi
}

ping_test 8.8.8.832
ping_test 8.8.8.8
