library(rkappa)
library("gdata")
library("randtoolbox")
library("sensitivity")

cleanedParams <- read.csv("rates_dict.csv", col.names = c("name","params"))

## ND: Removed any '0'-parameters (cleanedParams$params[9] <- 0.00001)

## 
min = lapply(cleanedParams$param, function(x) x*10)
max = lapply(cleanedParams$param, function(x) x/10) 

parTable <- data.frame(param=cleanedParams$name, Min = unlist(min), Max = unlist(max),stringsAsFactors = FALSE)

## running rkappa with more dense settings:
## SETTINGS:
## time -t =  450
## datapoints -p = 900
## num of trials = 5

fernandezBase<-prepareProject(project='fernandezBase',
                              numSets=1000,
                              exec.path="/exports/home/s1153636/KaSim_3.5",
                              constantfiles=c("fernandez_const.ka"),
                              templatefiles=c("fernandez_templ.ka"),
                              paramfile=c("fernandez_param.ka"),
                              type='parallel')

## introducing changes whenever necessary:
fernandezBase$shLines[["run.sh.templ"]][2] <-"numEv=5"
fernandezBase$shLines[["run.sh.templ"]][3] <-"time=450"
fernandezBase$shLines[["run.sh.templ"]][16] <-
"$KASIM_EXE _- -t $time -p 900 -d \"./pset***/try$i\" -make-sim prom.kasim"
fernandezBase$shLines[["run.sh.templ"]][21] <- 
"$KASIM_EXE -t $time -p 900 -d \"./pset***/try$i\" -load-sim  ./pset***/try1/prom.kasim"

fernandezBase$shLines[["job.sh.templ"]][13]<-"#$ -N fernandezBase" 
fernandezBase$shLines[["job.sh.templ"]][15]<-"#$ -l h_rt=47:59:59"
fernandezBase$shLines[["job.sh.templ"]][16]<-"#$ -t 1-5000"
##fernandezBase$shLines[["job.sh.templ"]][19]<-'echo "./run$N.sh"'

## default state of running scripts:
print(fernandezBase$shLines)
write.kproject(fernandezBase)

setwd('fernandezBase')
system('qsub job.sh')
