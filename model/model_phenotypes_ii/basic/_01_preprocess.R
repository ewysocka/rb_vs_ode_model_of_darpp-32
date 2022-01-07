library(stringr)

## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
## (1). prepare two files from the parameter .ka file
## -----
## A/ ka file from a format:
##   "%var: 'kcat22_-' 12e10/'VA'"
##
## into a format:
##   "%var: 'kcat22_-' 1e10"
##
## where all VA are replaced with a value and the number is calculated 
## todo: parse row input removing all comments done in Kappa (as entire lines and at the end of line) 
## -------
## B/ char list with name-value pairs (stripped from the ka format)

## First do the dict with key-value
## Load as a char list of strings 
## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# i. Read original file as a list of strings :
f <- readLines("original/rates.ka")

# ii. Remove commented lines:
fg <- grep(pattern = "^#", f)
fg2 <- sapply(matrix(fg), FUN=(function (x) -x))
f2 <- f[fg2]

# iii. Find volume and Avogadro number in the line:
inxVol <- grep(pattern = "%var: 'V' ", f2)
inxAvo <- grep(pattern = "%var: 'Avo' ", f2)
inxAV <- grep(pattern  = "%var: 'VA' ", f2)

vol <- as.numeric(strsplit(f2[inxVol], split = " ")[[1]][3])
avo <- as.numeric(strsplit(f2[inxAvo], split = " ")[[1]][3])

va = vol*avo
f3 <- f2[c(-inxVol,-inxAvo,-inxAV)]
f3 <- f3[f3!='']

# iv. Split lines with comments in the middle:
inxCom <- grep(pattern = "#", f3)

f4 = list()
for(i in 1:length(f3)){
    if(i %in% inxCom){
        cleaned <- str_trim(strsplit(x = f3[i], split = '#')[[1]][1])
        cleanedRep <- str_replace(string = cleaned, pattern = "' ", replacement = "_-' ")
        f4 <- c(f4,cleanedRep)       
    }else{
        cleanedRep <- str_replace(string = f3[i], pattern = "' ", replacement = "_-' ")
        f4 <- c(f4,cleanedRep)
        }
    }

# v. Transform nested list into name--value list:
#    split the list value if '/' is found  and calculate transformation

f5 <- list()
for(i in 1:length(f4)){
    name <- strsplit(f4[[i]], ' ')[[1]][2]
    val <- strsplit(f4[[i]], ' ')[[1]][3]
    valval <- strsplit(val, '/')[[1]]
    
    if(length(valval) > 1) {
        if(valval[2] == "'VA'") {
            f5[name] <- as.numeric(valval[1])/va
        } else if(valval[2] == "('VA'^2)") {
            f5[name] <- as.numeric(valval[1])/va**2
        }
    } else {
        f5[name] <- as.numeric(valval[1])
    }
}

# vi. Build string of a new .ka file

namesf5 <- names(f5)
valuesf5 <- unlist(f5, use.names = FALSE)
start <- "%var:"

tempstr=c()
for(i in 1:length(f5)){
    tempstr = c(tempstr, paste(start,namesf5[i], valuesf5[i], sep = " "))
}

# file A:
# vii. save file with parameters with required format:
fileConn<-file("fernandez_param.ka")
writeLines(tempstr, fileConn)
close(fileConn)

# file B
# vii.  save dictonary to csv:
cleanedparams = data.frame(name = namesf5, param = valuesf5, stringsAsFactors = FALSE)
write.table(x=cleanedparams, "rates_dict.csv", row.names = FALSE, col.names = FALSE, sep=',')
## cleanedParams <- read.csv("rates_dict.csv")
