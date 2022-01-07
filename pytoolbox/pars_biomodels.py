# File: pars_biomodels.py
from bs4 import BeautifulSoup

__all__ = ["Pars_Biomodels "]

class Pars_Biomodels():

    """
    Given SBML file of a curated model retrieve data. All done without sbmllib tools.
    """

    def __init__(self,  sbml_file):
        self.sbml_file = sbml_file
        self.all_ids = self._sbml_to_ids()

        print("Available IDs: "+ ', '.join(self.list_ids()) )

    def _sbml_to_ids(self):
        """

        :return:
        """
        try:
            zupa = BeautifulSoup(self.sbml_file)

            res = {}
            for line in zupa.find_all('rdf:li'):

                if isinstance(line.get('rdf:resource'), type(None)):
                    next
                else:
                    lista = line.get('rdf:resource').encode('ascii').split("/")
                    res.setdefault(lista[3], []).append(lista[4])
                    res[lista[3]] = list(set(res[lista[3]]))

            return res

        except Exception, e:
            print e




#__________  ACCESS METHODS ___________#


    def list_ids(self):

        return self.all_ids.keys()

    def get_uniprot(self):

        assert 'uniprot' in self.list_ids(), "There is no Uniprot Ids"
        return self.all_ids['uniprot']

    def get_taxonomy(self):

        assert 'taxonomy' in self.list_ids(), "There is no taxonomy Ids"
        return self.all_ids['taxonomy']


    def get_ec_code(self):

        assert 'ec-code' in self.list_ids(), "There is no EC Ids"
        return self.all_ids['ec-code']

    def get_interpro(self):

        assert 'interpro' in self.list_ids(), "There is no Interpro Ids"
        return self.all_ids['interpro']

    def get_chebi(self):
        assert 'obo.chebi' in self.list_ids(), "There is no CHEBI Ids"
        return self.all_ids['obo.chebi']

    def get_go(self):
        assert 'obo.go' in self.list_ids(), "There is no GO Ids"
        return self.all_ids['obo.go']

    def get_pirsf(self):
        assert 'pirsf' in self.list_ids(), "There is no PIRSF Ids"
        return self.all_ids['pirsf']

    def get_pubmed(self):
        assert 'pubmed' in self.list_ids(), "There is no PubMed Ids"
        return self.all_ids['pubmed']

