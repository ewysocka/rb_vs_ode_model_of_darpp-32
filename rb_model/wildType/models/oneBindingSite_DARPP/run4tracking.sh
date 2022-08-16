#!/usr/bin/env bash


$KASIMDIR/KaSim  -i oBS_init.ka -i oBS_FINALrates_thr75inhibition.ka -i oBS_FINALrules_thr75inhibition_PKArulesDiff_NAMED_2.ka -i oBS_stimuli_pulse_spikes_CaWithRates.ka -i oBS_obs_phosphoSites_22.ka -i tracking.ka  -t 700 -p 1400 -o ./out/tracking_d34_ca-15_1.7_caStim-rateBased.out
