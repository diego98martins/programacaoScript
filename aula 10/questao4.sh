#!/bin/bash

arquivo=$1

cat $arquivo | sed -E 's/^([0-9]{3})([0-9]{3})([0-9]{3})([0-9]{2})$/\1.\2.\3-\4/g'