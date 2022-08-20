#!/usr/bin/env bash


for ((n=0;n<40;n++))
do
	echo "$n"
	$KASIMDIR/KaSim  -i oBS_init.ka -i oBS_rates.ka -i oBS_rules.ka -i oBS_stimuli_pulse_spikes.ka -i oBS_obs_phosphoSites_22.ka  -t 700 -p 1400 -o ./out_ensemble/data_"$n"
	
done
	
