#!/usr/bin/env bash


for ((n=0;n<40;n++))
do
	echo "$n"

	$KASIMDIR/KaSim  -i tBS_init.ka -i tBS_rates.ka -i tBS_rules.ka -i tBS_stimuli_pulse_spikes.ka -i tBS_obs_phosphoSites.ka -i tBS_snapshots.ka -t 700 -p 1400 -o ./out_ensemble/data_"$n"

done
