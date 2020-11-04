#!/bin/bash

nome=$1
x=$2

cat $nome | head -$x | tail -1