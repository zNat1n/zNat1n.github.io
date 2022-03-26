#!/bin/bash

DIR=(`ls etanol`)
for step in "${DIR[@]}"
do
    ARCHIVES=(`ls etanol/$step | cut -d. -f1`)
    for log in "${ARCHIVES[@]}"
    do
        cp example.html $log.html
        sed -i " s/step/$step/ ; s/log/$log.log/ ; s/name/$log.log/" $log.html
    done
done