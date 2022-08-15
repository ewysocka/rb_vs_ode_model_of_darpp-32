#!/usr/bin/env bash

for ((n=0;n<40;n++))
do
    echo "$n"
    $COPASIDIR/CopasiSE   tc_stoch_700_1400.cps 
done
