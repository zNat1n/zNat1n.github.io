#!/bin/bash

DIR=(`ls etanol_log`)
for step in "${DIR[@]}"
do
    mkdir etanol/$step
    ARCHIVES=(`ls etanol_log/$step | cut -d. -f1`)
    for log in "${ARCHIVES[@]}"
    do
        cp example.html etanol/$step/$log.html
        sed -i "s/step/$step/ ; s/log/$log.log/" etanol/$step/$log.html
    done
done