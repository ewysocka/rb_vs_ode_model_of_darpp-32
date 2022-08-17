#!/usr/bin/env bash

for ((n=0;n<40;n++))
do
	echo "$n"

	$KASIMDIR/KaSim  -i oBS_init.ka -i MUTATION_FINALrates_thr75inhibition.ka -i oBS_FINALrules_thr75inhibition_PKArulesDiff.ka -i oBS_stimuli_pulse_spikes_CaWithRates.ka -i oBS_obs_phosphoSites_22.ka -i oBS_snapshots.ka  -t 700 -p 1400 -o ./out_ensemble/data_"$n"

done
