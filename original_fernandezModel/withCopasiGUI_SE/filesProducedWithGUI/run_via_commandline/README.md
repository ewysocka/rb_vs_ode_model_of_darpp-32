Commandline runs of ode and stoch simulations but shorter (stopped before Ca and cAMP stimuli)
work well and are producing successful reports but not the full stochastic simulation.


Dear All,

I was wandering if someone could help me with problems I encountered when
running a stochastic simulation with COPASI on a computer cluster (Sun Grid Engine) aiming to get
time-courses of species as an output.
The model I would like to simulate was originally published as a deterministic
one but I would like to see its stochastic results.
The model was published a quite long time ago and can be found here: http://www.ebi.ac.uk/biomodels-main/BIOMD0000000153.
At first, I successfully ran it with LSODA method through a commandline, GUI and with Python API on my laptop.
However, it's not the case with the direct method.
The simulation stalls at the point where a stimulus is repeatedly injected into the system, which I guess complicates the simulation.
By 'stall' I mean that the simulation report (Time-Course) stops being updated with new values and stays hanged.
If I indicate the simulation to stop before that point all work just great and COPASI produces reports successfully with the direct method but not otherwise.

I tried to run simulations on a computing cluster as well. I managed to start the simulation
but I keep getting an error pointing only that there is a problem in the model .cps file:

File error when opening '/path/to/model/copasiRun/ts_stoch_300_600_partNo.cps'.

It happens no matter the simulation method. I'm not sure if I'm setting something in a wrong way or could it be something else.
That's why I've attached a .cps file with all settings that I used to run the model within the commandline.

Thank you for any suggestions.

Emilia
