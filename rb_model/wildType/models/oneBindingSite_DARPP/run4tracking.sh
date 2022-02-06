#!/usr/bin/env bash

## ~/bin/KaSim-3.5-250915/KaSim  -i init.ka -i FINALrates_thr75inhibition.ka -i FINALrules_thr75inhibition_PKArulesDiff.ka -i stimuli_pulse_spikes_CaWithRates.ka -i obs_pp2_pka_d75.ka -i tracking_pp2a_pka_d75.ka  -t 700 -p 1400 -o ./out/tracking_pka_pp2a_d75_ca-15_1.7_caStim-rateBased.out


~/bin/KaSim-3.5-250915/KaSim  -i oBS_init.ka -i oBS_FINALrates_thr75inhibition.ka -i oBS_FINALrules_thr75inhibition_PKArulesDiff_NAMED_2.ka -i oBS_stimuli_pulse_spikes_CaWithRates.ka -i oBS_obs_phosphoSites_22.ka -i tracking.ka  -t 600 -p 1200 -o ./out/tracking_d34_ca-15_1.7_caStim-rateBased.out
