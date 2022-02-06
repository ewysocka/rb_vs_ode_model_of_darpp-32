Final file with rules:
/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/original/rules_thr75inhibition_PKArulesDiff.ka

Final changes in the model:

1. Added rule to inhibit PKA phosphorylation of Thr34
   when Thr75 is phosphorylated -- effect: both sites are more
   coupled and act more like a switch
2. PKA rules of creation where verified and rewritten to
   fit the concept of rule pattern but it didn't
   -- make any significant change in the level of PKA (is 500 but should be
      just bellow 1000 -> to verify once I rerun original model)
   -- reduce the rule number; it actually was the opposite (from 36 rules I got 40)
      but they are clearer
3. Again trying to come up with rate of creation of Ca2+ because it appear
   that it heavily influences the shape of Thr34, the 'relaxation bump' appears.
   -- Reasoning:
       Original k57 is  2.5e-8 M.s-1
       Spiking is introduced as change of k57 to 6.6e-6. When tested with these numbers,
       there is no Ca2+ in any form.

    -- Given that unchanged k57 supported by the argument of unimolarity of Ca2+ creation
    (see Seker & Faeder 2012), gives no results (no visible Ca2+ input in the system - '0'-case below);
    lets say that I will multiply the k57 by 6.022e8 to get 15.  I will vary the number between
    15 and 8 and observe Ser137, Thr34, PKA curves.
    Cases to test with Thr75 inhibition of PKA to correct the Thr34 curve:

    0. K57 = 2.5e-8; stimuli K57 raised to 6.6e-6
    1. K57 = 8; stimuli K57 raised to 4000
    2. K57 = 8; stimuli Ca2+(a) 1900

    -- The last version looks most promising but still Thr34 curve is not as it should.
    -- The best option up to now is:
        __inh_th75_Ca_cAMPasInFernandez_PKArulesDiff_CaRate_7_CaStim_1800.out__
        1. Ca rate = 7
        2. Ca spiking = 1800
        (saved as plot: inh_th75stimuliDiff_CaRates_7_CaStim_k57_1800.jpeg)

   *!!! SOLVED !!! The problem was in:*

4. There was mistake in PP2ACa phosphorylation state for koff50 rate;
   Corrected in files:
   -- rules_thr75inhibition_PKArulesDiff.ka
   -- rules_thr75inhibition.ka

5. There were two copies of the last rule; corrected in the same files as above

6. Conclusion RE: role of the additional part in the B model:
   The only difference is that if Ca is bound to PP2A to has much lower
   rate of dissociation, both when PP2A is phosphorylated and not, 6 to 24; 10 to 40
   respectively.

    List of merged parameters up to now because of rule patterns:
        1. kcat6 => kcat17
        2. kcat27 => kcat19
        3. k*1 => k*4, k*11, k*18
        4. k*2 => k*5, k*7, k*14
        5. kcat3 => kcat12
        6. kcat8 => kcat21
        7. kon3 => kon8, kon21, kon12
        8. koff3 => koff8, koff12, koff21
        9. kcat17 => kcat19
        10. kcat34 => kcat56
        11. k*33 => k*55
        12. koff46 => koff47, koff48, koff49
        13. kon9 => kon46, kon47, kon48, kon49
        14. kon10 => kon50, kon51, kon52, kon53
        15. k*54 => k*56
        16. kon19 => kon27

    With these changes I reduced the model from 69 to 64; I could remove even more
    parameters; candidates:
    1. kon35 and kon36 - kon36 is a 3-times of kon35 (binding of two Ca2+ to PP2Bi)
    2. koff36 and koff35 - both are 1 and relate to two Ca2+ ions dissociation

7. *!!! THERE IS DIFFERENCE IN THE PAPER AND IN THE MODEL IN THE Ca_destroy PARAMETER !!!*
      In the paper is 0.6 s-1, in the model is 1.7 s-1 !!!
      It also required to change the Ca influx to 2400 (4e-6), but because the shape is not
      similar (doesn't last for 2 seconds), the level that transient Ca stimulus reaches is a bit lower.

8. Corrected final mistake with the alternative and conditionning sites occupation;
   the fact that there was no specification of bindings of sites that did not take part
   in binding at a given rule restricted this rule to cases where the sites are free, what is incorrect
   if set without ‘?’ next to the alternative binding, e.g.:

    D(thr34~u!1, thr75~u? ),PKA(a!1)  -> D(thr34~p, thr75~u? ),PKA(a  )   @ 'kcat3'
    D(thr34~u!1, thr75~p? ),PKA(a!1)  -> D(thr34~p, thr75~p? ),PKA(a  )   @ 'kcat8'

9. **Problems left:**
   -- shape of cAMP curve is dropping too slow
   -- PKA is not reaching 1000 (too many rules to create PKA ?? should I increase some rates??)
       . it can potentially explain why cAMP decline is slower, e.g.:
       at a time 200 cAMP number is 3975, at a time 200.5 drops to 148 ?? PKA is picking it up too
       slowly in my model (check file:
       /home/fewpills/projectrepo/original_fernandezModel/withCopasiGUI/ODEresults/Stimuli_Ca_cAMP) ??
   -- PDEp decreases too fast
   -- D75 and D132 curves on my model look as in the paper plot but are different than the
       model ODE model curves ?? possible reasons:
       . different rates used than given in the paper ? -- *CHECKED*: they are the same
       . got through the reactions encoded in SBML
        model and a reaction list in the paper -- *CHECKED*: they are the same
       . scrap koffs and kons and kcats from sbml file to a form: param, value
        compare with my model rates -- *CHECKED*: they are the same
        . go through the rules again and compare with the model

10. CK1 was set to unphosphorylated as it is in the original model

11.
