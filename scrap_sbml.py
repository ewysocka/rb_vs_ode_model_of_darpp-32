from bs4 import BeautifulSoup

ferandezorignal = "./ode_model/originalModel/sbmlFormat/pcbi.0020176.sd002.xml"

with open(ferandezorignal) as f:
    readF = f.read()


ferndezSoup = BeautifulSoup(readF)

applystirngs = []
for i in ferndezSoup.find_all('apply'):
    applystirngs.append(str(i))

cdk1cat = [i for i in applystirngs if ('CK1' in i) and ('kcat' in i )]
pp2ccat = [i for i in applystirngs if ('PP2C' in i) and ('kcat' in i )]
