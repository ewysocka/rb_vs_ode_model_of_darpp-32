Trying to use tracking of species
   KaSim_3.5:
   - on my laptop: error of no memory
   - eddie:
     -- is running but first time there was no output;
     -- error of no memory !!!
   - no matter which combination I try (weak not strong compression; just a slice of time):
     -- error: out of memory
   KaSim_4.0:
   - if tracking compression set to 'none' (potentially least memory use) then
     the resulting .dot file can reach even above 4G. Impossible to turn it into .png.
     The simulation cannot be finished. Halts past 200s
   - I try to use KaSa only
So the verdict is that it is something wrong with KaSim 3.5

Trying again with KaSim 4.0 after pulling the changes from git and:
$ make clear
$ make all

There is no error with pattern matching but still it's out of memory:

    File './out/pka_pp2a_d75_ca-15_1.7_caStim-rateBased.out' already exists do you want to erase (y/N)?
    y
    + Building initial state (16384 agents)
    Done
    + Command line to rerun is: 'KaSim' '-i' 'init.ka' '-i' 'FINALrates_thr75inhibition.ka' '-i' 'FINALrules_thr75inhibition_PKArulesDiff.ka' '-i' 'stimuli_pulse_spikes_CaWithRates.ka' '-i' 'obs_pp2_pka_d75.ka' '-i' 'tracking_pp2a_pka_d75.ka' '-l' '700' '-p' '0.5' '-d' './out' '-o' 'pka_pp2a_d75_ca-15_1.7_caStim-rateBased.out' -seed 205625940
    File "obs_pp2_pka_d75.ka", line 1, characters 6-39:
    Warning: Deprecated variable syntax: use |kappa instance| instead.
    File "obs_pp2_pka_d75.ka", line 2, characters 6-41:
    Warning: Deprecated variable syntax: use |kappa instance| instead.
    File "obs_pp2_pka_d75.ka", line 3, characters 6-35:
    Warning: Deprecated variable syntax: use |kappa instance| instead.
    File "obs_pp2_pka_d75.ka", line 4, characters 6-35:
    Warning: Deprecated variable syntax: use |kappa instance| instead.
    249.77 time units (35.68%) in 12651333 eventsCa rate 3974
    251.71 time units (35.96%) in 12893208 eventsCa rate 15
    253.78 time units (36.25%) in 13130866 eventsCa rate 3974
    255.90 time units (36.56%) in 13370767 eventsCa rate 15
    257.76 time units (36.82%) in 13563455 eventsCa rate 3974
    259.77 time units (37.11%) in 13764449 eventsCa rate 15
    261.99 time units (37.43%) in 13963002 eventsCa rate 3974
    263.67 time units (37.67%) in 14114636 eventsCa rate 15
    265.51 time units (37.93%) in 14266810 eventsCa rate 3974
    267.94 time units (38.28%) in 14468220 eventsCa rate 15
    269.94 time units (38.56%) in 14617804 eventsCa rate 3974
    271.95 time units (38.85%) in 14771258 eventsCa rate 15
    273.41 time units (39.06%) in 14872721 eventsCa rate 3974
    275.62 time units (39.37%) in 15027924 eventsCa rate 15
    277.91 time units (39.70%) in 15176119 eventsCa rate 3974
    279.44 time units (39.92%) in 15278551 eventsCa rate 15
    281.95 time units (40.28%) in 15431390 eventsCa rate 3974
    283.64 time units (40.52%) in 15537480 eventsCa rate 15
    285.44 time units (40.78%) in 15639044 eventsCa rate 3974
    287.36 time units (41.05%) in 15743480 eventsCa rate 15
    700.00 time units (100.00%) in 19768031 events (100.00%)
    + Loading trace
    Fatal error: out of memory.
