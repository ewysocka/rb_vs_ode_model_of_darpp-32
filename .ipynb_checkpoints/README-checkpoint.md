## Comparison of rule- and ordinary differential equation-based dynamic model of DARPP-32 signalling network
Authors: Emilia M. Wysocka, Matthew Page, James Snowden, T. Ian Simpson 

Repository storing molecular rule-based models in Kappa language and Python-based figures published in the [BioRxiv preprint](https://www.biorxiv.org/todo).

### Abstract
Dynamic modelling has significantly improved our understanding of the complex molecular mechanisms. 
The most detailed and popular approach to model dynamics of molecular systems are ordinary diffferential equations (ODEs). However, their application in  signalling networks, characterised by multi-state molecular complexes, can be forbidding. These issues have been addressed by contemporary methods, such as rule-based (RB) modelling. Although advantages of RB modelling over ODE modelling have been presented and discussed in numerous reviews, no direct comparison of time courses of one
molecular system encoded in the two frameworks have been presented before. To perform such comparison, a set of reactions that underlie an ODE model by Fernandez et al. 2006 [[1]](#1) was manually encoded into one of RB frameworks, the Kappa language. Closer comparison of models was performed on the level of model specification and results acquired through model simulations. We established that rule patterns reduce reaction number in a certain type of model components. Furthermore, the Kappa model recapitulated general dynamics represented by its ODE counterpart with minor discrepancies. They occurred whenever a molecules have multiple sites binding the same interactor. Notation of such rules requires a complete listing of all possible binding configurations. Furthermore, activation of such molecules is slower than in the ODE model. Therefore, rate constants that define this type of rules ought to be revised.
We conclude that the RB representation offers a more expressive and flexible syntax that eases access to fine-grain details of the model, facilitating model reuse.
Alongside these analyses, this manuscript reports a refactored model of DARPP-32 interaction network that can serve as a canvas for development of more complex interaction network to study this particular molecular system.
  
### Repository content:
* rb\_model

* ode\_model

* pytoolbox


### List of figures reproduced in main.ipynb:

* Figure 7
  <!--- - (A) wt/wild-type_summedpatternsOriginal_selected_.pdf --->
  <!--- - (B) wt/wild-type_stochastic_ode_model_selected_SD.pdf --->
  <!--- - (C) wt/wild-typeoBS_rb_model_selected_SD.pdf --->
    
* Figure 8:
   <!--- - compared/w-t_ode2rb_stoch2stochpaired_resized.pdf --->

* Figure 10:
  - (A) ca_all_case/all_Ca_all_Ca2_paired_w-t_ode2rb_stoch2stoch.pdf
  - (B) ca_all_case/all_Ca2_all_Ca_paired_all_ca_rb_18_ode_13.pdf
  - (C) ca_all_case/all_Ca2_all_Ca_paired_all_ca_summed_first_instance_of_PP2B.pdf
  
* Figure 11:
  - ca_all_case/all_Ca_summed_PP2Bpaired.pdf
  
* Figure 12:
  <!--- - (A) alone/constSer/constitutive_Ser137_summedpatternsOriginal_selected_.pdf
  - (B) alone/constSer/constitutive_serinetBS_rb_model_selected_SD.pdf
  - (C) alone/ser2ala/serine_to_alanine_summedpatternsOriginal_selected_.pdf
  - (D) alone/ser2ala/serine_to_alaninetBS_rb_model_selected_SD.pdf --->

* Figure S1:
  - ca_all_case/CaRates_15_1_7_CaStim_6_representations_of_PP2Bi.pdf

* Figure S2:
  - img/ca_all_case/all_Capaired.pdf

* Figure S3:
  <!--- - compared/w-t_rb2rb_stoch2stochpaired_resized.pdf --->

* Figure S4
 <!--- - compared/s_speciesNum_per_time_tBS_oBS_to_stimuli_2.pdf --->


## References
<a id="1">[1]</a>
Fernandez E, Schiappa R, Girault JA, Le Novère N. DARPP-32 is a robust integrator of dopamine and glutamate signals. PLoS Comput Biol. 2006 Dec 22;2(12):e176. doi: 10.1371/journal.pcbi.0020176. Epub 2006 Nov 6. PMID: 17194217; PMCID: PMC1761654.
