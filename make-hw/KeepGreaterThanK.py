# Use python to do remove all words of length smaller than k
import argparse

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('-p','--filePath', required=True)
    parser.add_argument('-o','--outputFilePath', required=True)
    parser.add_argument('-k','--kThreshold', required=True)
    io_args = parser.parse_args()

    filePath = io_args.filePath
    kThreshold = int(io_args.kThreshold)
    outputFilePath = io_args.outputFilePath

    words = open(filePath, "r")   
    greaterThanK = []
    for line in words:
        line = line.rstrip("\n")
        if (len(line) > kThreshold):
            greaterThanK.append(line)
    outFile = open(outputFilePath, "w")
    for word in greaterThanK:
        outFile.write(word)
        outFile.write("\n")
