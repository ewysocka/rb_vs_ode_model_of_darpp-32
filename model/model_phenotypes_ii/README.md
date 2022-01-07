## 1. Run simulations on Eddie cluster:

#### SETTINGS for OBSERVABLES:
i.   For all possible observables sampled with snapshots (every time-step or per given
     amount of events ?)
ii.  22 observables - all phosphorylation sites
iii. observables separately for relaxation, steady-state, stimuli A, stimuli B (to compare)

#### SETTINGS for STIMULI:

Questions :
i. how many folds in variability ? (Fernandez had 300 even)
ii. what is my control:
    - stimuli ?
    - mutants ?
    What is the most well defined

TODO:
* refine the list of parameters (remove not used ones from variation scheme)
* write a function to create parameter file to .csv (clean parameters)
* set all simulation key-points and translate accordingly to temp, const and param
Rkappa files

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# POINTS TO RETHINK (AFTER THIRD REVIEW):

1. How to compare and present the results of RB?
   1.1 Only with time series data??
       Read the manual of KaSim

2.Why the stimuli in Fernandez et al. is so different than in Lindskog and Nakano?

    - Nakano is based on Day et al. 2008 stimuli pattern
    - Fernandez no source
