import json
import sys

print "loading file: " + sys.argv[1]
json_file = sys.argv[1]

json_data=open(json_file)
data = json.load(json_data)
#pprint(data)
json_data.close()

if data['summary']['failure'] > 0:
    print "failure have been found - check logs"
    exit(-1)
else: 
    print "no erros found.. quitting"
    exit(0)