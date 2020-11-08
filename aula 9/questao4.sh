#!/bin/bash

read -p 'digite uma senha' senha

if (echo $senha | grep -P '(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])'); then
    echo 'a senha está no padrão'
else
    echo 'a senha não está no padrão'
fi