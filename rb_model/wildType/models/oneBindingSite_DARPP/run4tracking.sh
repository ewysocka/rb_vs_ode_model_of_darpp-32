#!/usr/bin/env bash


$KASIMDIR/KaSim  -i oBS_init.ka -i oBS_rates.ka -i oBS_rules_NAMED.ka -i oBS_stimuli_pulse_spikes.ka -i oBS_obs_phosphoSites_22.ka -i tracking.ka  -t 700 -p 1400 -o ./out/tracking_d34_ca-15_1.7_caStim-rateBased.out
