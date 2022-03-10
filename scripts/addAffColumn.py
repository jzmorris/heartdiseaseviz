# Jarod Morris
# Senior Project
# Script, grabs all csv files in current directory
# add affiliation column to table based on name of the file
# needed for determining main affiliation associated with a publication


from os import listdir
from os.path import isfile, join
onlyfiles = [f for f in listdir('.') if isfile(join('.', f))]
onlyfiles.remove("script.py")

print(onlyfiles)
num = 0
for file in onlyfiles:
	num += 1
	file1 = open(file)
	output = open("output"+ str(num) + ".csv", 'w')

	Lines = file1.readlines()

	#add affiliation column header
	output.write(Lines[0].strip() + ",Affiliation\n" )

	for i in range(1, len(Lines)):
		output.write(Lines[i].strip() + "," + file[:len(file)-4] + "\n" )
