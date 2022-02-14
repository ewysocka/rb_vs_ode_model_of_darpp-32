import sys, getopt
import os
sys.path.append(os.path.join(sys.path[0], "pytoolbox"))
from basic_tools import plot_timeseries

def main(argv):
    try:
        opts, args = getopt.getopt(argv,"ho:c:t:f:d",["outfile=","colsList=","plottitle=","figfilename=","delim="])
    except getopt.GetoptError:
        print 'timeseries.py -o <outfile>, -c <colsList>, -t <plottitle>, -f <figfilename>, -d <delimiter>'
        sys.exit(2)
    for opt, arg in opts:
        if opt == '-h':
            print 'timeseries.py -o <outfile>, -c <colsList>, -t <plottitle>, -f <figfilename>, -d <delimiter>'
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
        # elif opt in ("-d", "--delim"):
        #     delim = arg

    plot_timeseries(outfile = outfile, colsList=colsList, plottitle=plottitle, figfilename = figfilename)
    print 'Done'



if __name__ == "__main__":
    main(sys.argv[1:])
