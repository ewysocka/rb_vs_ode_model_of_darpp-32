#!usr/bin/env python


def read_rates_as_list(f):

    with open(f, 'rb') as fi:
        r = fi.readlines()
        fi.close()

def convert_to_rates(k, v, order):
    """

    :param k: concentration-based rate
    :param v: volume
    :param order: order of reaction
    :return: float point number of molecule-counts
    """
    # Avogadro's number:
    a = 6.022e23
    y = (a*v)**(order-1)
    return k/y

def convert_concentrations_to_copies(conc, v=10**-15):
    """
    Calculation 1mol = a*v
    :param conc: float number for concentration in moles
    :param v: volume of the compartment
    :return: copy number of molecules
    """
    a = 6.022e23
    mol = a*v
    return conc*mol

def convert_copies_to_concentrations(copies, v=10**-15):
    """
    :param conc: float number for concentration in M (mols)
    :param v: volume of the compartment
    :return: copy number of molecules
    """
    a = 6.022e23
    mol = a*v
    return copies/mol

def replace_rates(lista, v):
    """

    :param lista:
    :param v:
    :return:
    """

    # lista = r

    listb = []
    for i in lista:
        if 'kon' in i:
            i_split = i.split(" ")

            i_split_c = [i for i in i_split if i!='']

            rate=float(i_split_c[2])

            ## According to units calcultations: k = M^(1-arrity)s^(-1)
            arrity = 1 - int(i_split_c[4])

            rep_concent = str(convert_to_rates(float(i_split_c[2]), v, arrity))
            for idx, val in enumerate(rep_concent):
                if val != '0':
                    caught= idx
                    break

            rep_mol = str(round(float(rep_concent), caught+3))
            j = i_split_c[:2]
            j.append(rep_mol)
            j.append('\n')

            jj  =' '.join(j)

            listb.append(jj)
        else:
            listb.append(i)

    return listb



def save_rates_as_file(listb, file_out):
    """

    :return:
    """
    with open(file_out, 'wb') as f:
        f.writelines(listb)
        f.close()

def macro2micro_rates(file_in, vol, file_out):

    l_rates = read_rates_as_list(file_in)
    l_conv_rates = replace_rates(l_rates,vol)
    save_rates_as_file(l_conv_rates, file_out)



if __name__ == '__main__':

    import sys
    file_in = sys.argv[1]
    vol  = sys.argv[2]
    file_out = sys.argv[3]

    macro2micro_rates(file_in,vol, file_out)
