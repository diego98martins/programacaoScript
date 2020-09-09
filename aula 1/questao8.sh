
#!/bin/bash

cat << EndOfMessage

SUBSTITUIÇÃO DE VARIÁVEIS

Em shell script o conceito de substituição de variáveis
se refere a ideia de que é possível atribuir valores a
variáveis para que possam ser usadas posteriormente no
código ou também podemos usar as variáveis de sistema
estas, por sua vez, já vem atrelada ao sistema e não é
necessário fazer nenhuma atribuição para ter acesso ao
seu conteúdo.

São exemplos de substituição de variáveis:

#!/bin/bash
nome="ifpb"
echo \${nome}
>> ifpb


#!/bin/bash
echo \${HOME}
>> /home/nome_do_usuário


SUBSTITUIÇÃO DE SHELL

Em shell script o conceito de substituição de shell se
refere a ideia de que é possível executar um comando
shell dentro de um outro comando e fazer com que a
saída desse novo comando substitua o trecho de código
que o chamou.


É exemplo de substituição de shell:

#!/bin/bash
nome=\$(echo "ifpb")
echo \${nome}
>> ifpb




EndOfMessage


