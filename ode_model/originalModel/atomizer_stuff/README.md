## Trials to run SBML in BNG directly:

1/ with this file:
   >> simple_sbml_import_run_fernandez.bngl
   Errors everywhere:
   >> first_autorun_pcbi.0020176.sd002_cAMPdelay200.bngl.log

2/ directly via BNG2.pl:
    >> ~/bin/BioNetGen-2.3.1/BNG2.pl pcbi.0020176.sd002_cAMPdelay200.bngl
    >>  ~/bin/BioNetGen-2.3.1/BNG2.pl sbml2bngl_atomizer_output.bngl
    Same results

./sbmlTranslator -i /path/to/sbml/file [-a] [-o output.bngl]
