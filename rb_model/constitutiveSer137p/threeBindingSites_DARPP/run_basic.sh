#!/usr/bin/env bash

time $KASIMDIR/KaSim  -i init.ka -i MUTATION_FINALrates_thr75inhibition.ka -i FINALrules_thr75inhibition_PKArulesDiff.ka -i stimuli_pulse_spikes_CaWithRates.ka -i obs_phosphoSites_22.ka -t 700 -p 1400 -o ./out/constSer_oBS_ca-15_1.7_caStim-rateBased.out
