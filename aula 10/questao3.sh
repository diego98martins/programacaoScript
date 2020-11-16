#!/bin/bash

arquivo=$1 #(99) 9999-9999 ou (99) 99999-9999

cat $arquivo | sed -E 's/^\([0-9]{2}\) ([0-9]{5}|[0-9]{4})-([0-9]{4})/**CENSURADO**/g'