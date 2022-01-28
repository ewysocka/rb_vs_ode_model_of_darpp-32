# Verify oneBindingSite model:
#         . load one and three binding sites models to Python
#         . pair the same line from both files and each pair separate with \n
#         . save to a file
#         . verify if you haven't change anything else than the binding site
#           (accidentally)

one = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/original/oneBindingSite_DARPP/oBS_FINALrules_thr75inhibition_PKArulesDiff.ka"
three = "/home/fewpills/projectrepo/postmodel_pipeline/model_phenotypes_ii/basic/original/threeBindingSites_DARPP/FINALrules_thr75inhibition_PKArulesDiff.ka"


def compere_rules_of_2_files(one, two):

    with open(one) as f:
        oneread = f.readlines()

    with open(two) as f:
        tworead = f.readlines()

    zipped = zip(oneread, tworead)

    with open('combined_ruleFiles.ka', 'wb') as f:
        for t in zipped:
            f.write(''.join(str(s) for s in t)+'\n')
    print "Done!"
