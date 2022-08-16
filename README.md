## Comparison of rule- and ordinary differential equation-based dynamic model of DARPP-32 signalling network
Authors: Emilia M. Wysocka, Matthew Page, James Snowden, T. Ian Simpson 

Repository storing molecular rule-based models in Kappa language and Python-based figures published as the [BioRxiv preprint](https://www.biorxiv.org/content/10.1101/2022.03.26.485918v1).


### Key websites

https://kappalanguage.org

https://www.ebi.ac.uk/biomodels/BIOMD0000000153

https://copasi.org


### The path to the Fernandez (2006) models in the SBML format:


#### Wild-type

* Variable "cAMP_delay" value = 200

```
./ode_model/originalModel/sbmlFormat/pcbi.0020176.sd002_cAMPdelay200.xml
```

* Variable "cAMP_delay" value = 400

```
./ode_model/originalModel/sbmlFormat/pcbi.0020176.sd002.xml
```

#### Constitutive Ser137 mutatation:

```
./ode_model/originalModel_mutants/constSer_pcbi.0020176.sd002_cAMPdelay200.xml
```


#### Serine to Alanine mutatation:

```
./ode_model/originalModel_mutants/ser2ala_pcbi.0020176.sd002_cAMPdelay200.xml
```


### Instructions to use COPASI >= 4.20

Go to https://copasi.org/Download/ and download COPASI version >= 4.20, compatible with your OS.
COPASI does not have to be installed.

To run COPASI from the command line using CopasiSE, export the .cps file from the COPASI GUI.
Parameters to set in the COPASI GUI:
    * StepNumber = 1400
    * StepSize = 0.5
    * Duration = 700
    * Method name = "Stochastic (Direct method)"


First, set a temporary variable to the COPASI executable files in termial, replacing the directory where COPASI was placed:

```
export COPASIDIR=<copasi-path>
```

To run COPASI GUI from command line:

```
$COPASIDIR/CopasiUI
```

To run COPASI from command line:

```
$COPASIDIR/CopasiSE
```


### Instructions to use KaSim == 3.5

To use the KaSim release compatible with the syntax used in the model, download and unpack archives from the releases on the Kappa repository.

For macOS and Linux, open Terminal and type:

```console
cd <path_to_KaSim_folder>
```

```
wget https://github.com/Kappa-Dev/KappaTools/archive/refs/tags/v3.5-250915.zip
```

```
unzip v3.5-250915.zip
```

```
cd KappaTools-3.5-250915/bin
```

Run KaSim with a suffix corresponding to your OS ( linux / mac_OSX) to get the usage instruction:

```console
./KaSim_3.5_linux_x86 
```

```
KaSim 3.5-121114: 
Usage is KaSim -i input_file [-e events | -t time] [-p points] [-o output_file]

```

Set a temporary variable to the KaSim executable files in termial, replacing the directory where KaSim was placed:

```
export KASIMDIR=<kasim-path>
```

To run KaSim, type:

```
$KASIMDIR/KaSim
```



### List of figures reproduced in main.ipynb along with scripts for generating time series:


* Figure 3
  <!--- - (A) wt/wild-type_summedpatternsOriginal_selected_.pdf --->
  
  (A): ODE W-T deterministic trajectories
  
  * ./ode_model/withCopasiGUI_SE/ODEresults/tc_LSODA_700_1400.txt
  * generated with GUI
      
  
  <!--- - (B) wt/wild-type_stochastic_ode_model_selected_SD.pdf --->
  (B): ODE W-T stochastic trajectories - Ensemble of 40-model runs

   ```
   ./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_run.sh
   ```
   
   * OUTPUT: ./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_40runs_tc_directmethod700_1400



  <!--- - (C) wt/wild-typeoBS_rb_model_selected_SD.pdf --->
  (C): RB W-T stochastic trajectories - Ensemble of 40-model runs
  

  ```
  ./rb_model/wildType/models/oneBindingSite_DARPP/run_basic.sh
  ```


  ```
  ./rb_model/wildType/models/oneBindingSite_DARPP/run4tracking.sh
  ```

  *  OUTPUT: ./rb_model/wildType/models/oneBindingSite_DARPP/out_ensemble/data_*.out


* Figure 4
   <!--- - compared/w-t_ode2rb_stoch2stochpaired_resized.pdf --->

      
    ```
    ./rb_model/wildType/models/oneBindingSite_DARPP/run_basic.sh
    ```
    
    * OUTPUT:  ./rb_model/wildType/models/oneBindingSite_DARPP/out_ensemble/data_*.out
    

     ```
     ./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_run.sh
     ```

    
    * OUTPUT:  ./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_40runs_tc_directmethod700_1400
    * OUTPUT: ./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_out


* Figure 6
  <!--- - (A) ca_all_case/all_Ca_all_Ca2_paired_w-t_ode2rb_stoch2stoch.pdf --->

  <!--- - (B) ca_all_case/all_Ca2_all_Ca_paired_all_ca_rb_18_ode_13.pdf --->
  
   <!--- - (C) ca_all_case/all_Ca2_all_Ca_paired_all_ca_summed_first_instance_of_PP2B.pdf --->

    
    ```
    ./rb_model/wildType/models/threeBindingSites_DARPP/run_basic.sh
    ```

    * OUTPUT: ./rb_model/wildType/models/threeBindingSites_DARPP/out_ensemble_ca_all/data_*
 

 
    ```
    ./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_run.sh
    ```
    
    
    * OUTPUT: ./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_40runs_tc_directmethod700_1400
    * OUTPUT: ./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_out
 

* Figure 7
  <!--- - ca_all_case/all_Ca_summed_PP2Bpaired.pdf --> 


* Figure 8
  <!--- - (A) alone/constSer/constitutive_Ser137_summedpatternsOriginal_selected_.pdf
  - (B) alone/constSer/constitutive_serinetBS_rb_model_selected_SD.pdf
  - (C) alone/ser2ala/serine_to_alanine_summedpatternsOriginal_selected_.pdf
  - (D) alone/ser2ala/serine_to_alaninetBS_rb_model_selected_SD.pdf --->

    (A) ODE Constitutive Serine 
    
    
    ```
    ./ode_model/withCopasiGUI_SE/DirMethresults_mutants/ensemble_run.sh
    ```

    * ./ode_model/withCopasiGUI_SE/DirMethresults_mutants/constSer_directMethod_700_1400.txt
   
   

    (B) RB Constitutie Serine
   
   
    ```
    ./rb_model/constitutiveSer137p/threeBindingSites_DARPP/run_basic.sh
    ```
    
    * OUTPUT: ./rb_model/constitutiveSer137p/threeBindingSites_DARPP/out_ensemble


* Figure S1
  <!--- - ca_all_case/CaRates_15_1_7_CaStim_6_representations_of_PP2Bi.pdf --->


* Figure S2
  <!--- - img/ca_all_case/all_Capaired.pdf --->


* Figure S3
  <!--- - compared/w-t_rb2rb_stoch2stochpaired_resized.pdf --->


* Figure S4
 <!--- - compared/s_speciesNum_per_time_tBS_oBS_to_stimuli_2.pdf --->



##### Additional scripts for RB:

```
./rb_model/wildType/models/oneBindingSite_DARPP/run_KaDE.sh
```

```
./rb_model/wildType/models/oneBindingSite_DARPP/run_KaSa.sh
```

###### Three-binding site model:


```
./rb_model/wildType/models/threeBindingSites_DARPP/run_basic.sh
```



```
./rb_model/wildType/models/threeBindingSites_DARPP/tracking/run4tracking.sh
```


```
./rb_model/wildType/models/threeBindingSites_DARPP/tracking/run4tracking_for_KaSim4.0.sh
```
