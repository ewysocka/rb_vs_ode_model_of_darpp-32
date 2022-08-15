#!/usr/bin/env bash

for ((n=0;n<40;n++))
do
    echo "$n"
    $COPASIDIR/CopasiSE   constSer_direct_method_700_1400.cps 
done
