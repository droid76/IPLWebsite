import sys
file1 = open(sys.argv[1],"r")
file2 = open(sys.argv[2],"r")
file = open("file.csv","w")
contents1 = file1.read()
contents2 = file2.read()
file.write(contents1)
file.write("\n")
file.write(contents2)

