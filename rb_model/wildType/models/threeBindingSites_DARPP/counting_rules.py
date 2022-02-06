import re

rulefile = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/original/FINALrules_thr75inhibition_PKArulesDiff.ka"

with open(rulefile) as f:
    readl = f.readlines()

ratespart = [l.split('@ ')[-1] for l in readl if not re.match('^#', l)]
## 94 lines of rules;
ratespart2 = [l.rstrip('\n').split(',') for l in ratespart]
ratesNoFinal = [p for l in ratespart2 for p in l]
## 131 rules
countRev = [1 for l in ratespart2 if len(l) > 1]
