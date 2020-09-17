#!/bin/bash

cat /etc/passwd | wc -l

echo $(grep "/bin/bash" /etc/passwd | wc -l)
