for ((n=0;n<40;n++))
do
    echo "$n"
    ~/bin/COPASI-4.20.156-Linux-64bit/bin/CopasiSE --save data_"$n"  tc_stoch_700_1400.cps
done
