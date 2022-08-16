#!/usr/bin/env bash

$KASIMDIR/KaSim  -i init.ka -i FINALrates_thr75inhibition.ka -i FINALrules_thr75inhibition_PKArulesDiff.ka -i stimuli_pulse_spikes_CaWithRates.ka -i obs_phosphoSites_22.ka -i snapshots.ka -t 700 -p 1400 -o ./out/basic_ca-15_1.7_caStim-rateBased.out
