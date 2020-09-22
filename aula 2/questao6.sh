#!/bin/bash

#total
cat /etc/passwd | wc -l

#/bin/bash
echo $(grep "/bin/bash" /etc/passwd | wc -l)

#não /bin/bash
echo $(($(cat /etc/passwd | wc -l) - $(grep "/bin/bash" /etc/passwd | wc -l)))
