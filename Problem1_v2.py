# Preprocessing
import pandas as pd
import sys

####METHODS###
def Pre_process(string_vector):
	#Pre_process is supposed to input each string not a list of strings
	characters=[",","?","'","!",".","(",")","\"",":"]
	new_strv=[]
	for s in string_vector:
		s=str(s)
		for c in characters:
			if c in str(s):
				s=s.replace(c," ")
    		s=s.strip("-")
		new_strv.append(s.lower())

	return new_strv

#INPUT#
file_name=sys.argv[1]
data=pd.read_csv(file_name, header=None)

#considering the input files are the same then the columns with the questions would be 3 and 4Pre_process(data[3]))
data[3]=Pre_process(data[3])
data[4]=Pre_process(data[4])

data.to_csv("Processed_"+file_name, index=False, header=None)
