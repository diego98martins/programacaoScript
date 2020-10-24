#!/bin/bash

cat << EOF 

UNTIL
The syntax of the until command is:

until test-commands; do consequent-commands; done

Execute consequent-commands as long as test-commands has an exit status which is not zero. The return status is the exit status of the last command executed in consequent-commands, or zero if none was executed.

O exemplo abaixo funciona porque 5 é menor que 10, o loop incrementa o valor ATÉ o valor do index se tornar 10.

index=5
until [ \$index -gt 10 ]
do
  echo \$index
  let index+=1
done


WHILE
The syntax of the while command is:

while test-commands; do consequent-commands; done

Execute consequent-commands as long as test-commands has an exit status of zero. The return status is the exit status of the last command executed in consequent-commands, or zero if none was executed.

O exemplo abaixo não funciona porque o valor do index não é inicialmente verdadeiro, o index se torna maior que 10 apenas durante o loop.

index=5
while [ \$index -gt 10 ]
do
  echo \$index
  let index+=1
done

EOF     