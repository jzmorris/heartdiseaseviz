import pandas as pd

import glob

files = glob.glob("*.csv")

print(files)
data= []
#columns = 
result = pd.DataFrame(data=data)

frames = [pd.read_csv(dir, encoding= 'unicode_escape') for dir in files]

merge = pd.concat(frames)

merge.to_csv("waterCounty.csv")

merge = merge.dropna(1)

print(merge)

