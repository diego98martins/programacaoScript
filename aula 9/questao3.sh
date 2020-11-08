#!/bin/bash

numero='R$ 1,00' #R$ 1.000,00    R$ 1.000.000,00

if (echo $numero | grep -E '^R\$ ([0-9]{1,3}(\.[0-9]{3})*|[0-9]+)(\,[0-9]{2})?$'); then
    echo 'o número está no padrão'
else
    echo 'o número não está no padrão'
fi
