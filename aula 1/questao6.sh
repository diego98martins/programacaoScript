#!/bin/bash

date=$(date +%F)

mkdir -p bin/${date}
cp * bin/${date}

cd ./bin
zip -r ${date}.zip ./${date}

cp ${date}.zip ..
rm -r ./${date}

