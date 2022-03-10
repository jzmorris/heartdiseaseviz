import pandas as pd

import glob

files = glob.glob("*.csv")

print(files)
data= []
#columns = 
result = pd.DataFrame(data=data)

frames = [pd.read_csv(dir) for dir in files]

merge = pd.concat(frames)

merge = merge[(merge['State'] == 'California')]

merge.to_csv("aqiCounty.csv")

print(merge)

