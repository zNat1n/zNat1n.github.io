#!/bin/bash

DIR=(`ls etanol`)
for step in "${DIR[@]}"
do
    ARCHIVES=(`ls etanol/$step | cut -d. -f1`)
    for log in "${ARCHIVES[@]}"
    do
        cp example.html etanol/$step/$log.html
        sed -i " s/log/$log.log/ ; s/name/$log.log/" etanol/$step/$log.html
    done
done