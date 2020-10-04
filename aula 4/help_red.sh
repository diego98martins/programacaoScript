#!/bin/bash

cat << EOF

----------
O operador > redireciona e sobrescreve a saída de sucesso padrão

$ echo "teste" > teste.txt
$ cat teste.txt
teste
---------

O operador >> redireciona mas não sobrescreve a saída de sucesso padrão

$ echo "teste" >> teste.txt
$ echo "teste2" >> teste.txt
$ cat teste.txt
teste
teste2

---------

O operador 2> redireciona e sobrescreve a saída de erro padrão

$ echo "teste" 2> erro.txt
$ cat erro.txt
teste
---------

O operador 2>> redireciona mas não sobrescreve a saída de erro padrão

$ ls arquivo_inexistente 2>> erro.log
$ ls arquivo_inexistente 2>> erro.log
$ cat erro.log
ls: cannot access 'arquivo_inexistente': No such file or directory
ls: cannot access 'arquivo_inexistente': No such file or directory

---------
O operador &> redireciona e sobrescreve a saída padrão

$ echo "teste" &> teste.txt
$ cat teste.txt
teste
---------
O operador &>> redireciona mas não sobrescreve a saída padrão

$ echo "teste" >> teste.txt
$ ls arquivo_inexistente 2>> teste.txt
$ cat teste.txt
teste
ls: cannot access 'arquivo_inexistente': No such file or directory

---------

O operador < redireciona a entrada padrão para um arquivo

$ bc < operação_matemática("2+2").txt
4
---------
O operador << redireciona a entrada padrão, inicia na linha seguinte e termina ao encontrar a linha configurada através do operador 

$ cat << fim
> escrevendo qualquer coisa
> para finalizar escrevo uma linha escrito "fim"
> fim 
escrevendo qualquer coisa
para finalizar escrevo uma linha escrito "fim"
---------
O operador <<< redireciona a entrada padrão para uma string

$ bc <<< "2+2"
4
---------
O operador | envia a saída de um comando para a entrada de outro

# quantidade de linhas em um arquivo
echo \$(cat $arquivo | wc -l)
EOF

