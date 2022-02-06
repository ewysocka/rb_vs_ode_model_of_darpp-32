###### RULES FOR SETTING MINIMAL TIME TO RUN Fernandez et al. model with
###### the same settings as in original model:
    + for relaxation minimum : 150s
    + for Ca2+ stimuli : 50s
    + for distance between cAMP and Ca2+ : 25s (<50s) -- the strongest
    + to reach steady state at the beginning minimum : 200s but better 250
    (check: 'fernandez_model/model_5/experiments/productive-to-all_Events.png')


###### Explanation why cAMP was set to 4 molecules at the intial state:
As in Qi et al. (2010) and other modeling papers, basal level of
DA is 10 nM (* 10^-9 M) and stimuli rises it to 10 microM (*10^-6 M)
In Fernandez model the basal level of cAMP is set to 0 reuslitng in
D@pThr34 equal to 0 as well, which is not a basal level.
Since cAMP signal in Fernandez et al. is encoded as an influx of 4000 molecules
to the system, what corresponds to roughly 6.6 * 10^-6 M (micro M), then
setting it to  4 molecules (6.6 * 10^-9 (nM)) sounds plausible.
