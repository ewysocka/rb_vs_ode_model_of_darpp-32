import sys, getopt
sys.path.append("/home/fewpills/projectrepo/pytoolbox")
import corex_tools
from corex_tools import timeseries_2_array
from corex_tools import plot_timeseries

def main(argv):
    try:
        opts, args = getopt.getopt(argv,"ho:c:t:f:",["outfile=","colsList=","plottitle=","figfilename="])
    except getopt.GetoptError:
        print 'timeseries.py -o <outfile>, -c <colsList>, -t <plottitle>, -f <figfilename>'
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print 'timeseries.py -o <outfile>, -c <colsList>, -t <plottitle>, -f <figfilename>'
            sys.exit()
        elif opt in ("-o", "--outfile"):
            outfile = arg
        elif opt in ("-c", "--colsList"):
            colsList0 = arg
            colsList = [int(a) for a in colsList0.split(',')]
        elif opt in ("-t", "--plottitle"):
            plottitle = arg
        elif opt in ("-f", "--figfilename"):
            figfilename = arg

    plot_timeseries(outfile = outfile, colsList=colsList, plottitle=plottitle, figfilename = figfilename)
    print 'Done'



if __name__ == "__main__":
    main(sys.argv[1:])
