#!/usr/bin/env bash

./ode_model/withCopasiGUI_SE/DirMethresults/ensemble_run.sh
./ode_model/withCopasiGUI_SE/filesProducedWithGUI/ensemble_run_n_times.sh
./ode_model/withCopasiGUI_SE/filesProducedWithGUI/run_it.sh
./ode_model/withCopasiGUI_SE/DirMethresults_mutants/ensemble_run.sh
./rb_model/wildType/models/oneBindingSite_DARPP/run_basic.sh
./rb_model/wildType/models/oneBindingSite_DARPP/run4tracking.sh
./rb_model/wildType/models/oneBindingSite_DARPP/run_KaDE.sh
./rb_model/wildType/models/oneBindingSite_DARPP/run_KaSa.sh
./rb_model/wildType/models/threeBindingSites_DARPP/run_basic.sh
./rb_model/wildType/models/threeBindingSites_DARPP/tracking/run4tracking_for_KaSim4.0.sh
./rb_model/wildType/models/threeBindingSites_DARPP/tracking/run4tracking.sh
./rb_model/constitutiveSer137p/oneBindingSite_DARPP/run_basic.sh
