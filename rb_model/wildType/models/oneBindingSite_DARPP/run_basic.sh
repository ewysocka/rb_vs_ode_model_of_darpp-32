#!/usr/bin/env bash

~/bin/KaSim-3.5-250915/KaSim  -i oBS_init.ka -i oBS_FINALrates_thr75inhibition.ka -i oBS_FINALrules_thr75inhibition_PKArulesDiff.ka -i oBS_stimuli_pulse_spikes_CaWithRates.ka -i oBS_obs_phosphoSites_22.ka  -t 700 -p 1400 -o ./out/basic_oBS_ca-15_1.7_caStim-rateBased.out
