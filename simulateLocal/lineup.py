import random
import numpy as np
import pandas as pd

# reading the values
df = pd.read_csv(r"ballCluster.csv")
df2 = pd.read_csv(r"batCluster.csv")
# ballcluster
y = df.values
# batcluster
z = df2.values

f = open("lineup.csv", 'w', encoding = 'utf-8')
f.write('team1')
f.write(',')
f.write('team2')
f.write('\n')

# random batsmen
for i in range(6):
	temp = random.randint(0,99)
	f.write(str(z[temp][0]))
	f.write(',')
	temp = random.randint(0,99)
	f.write(str(z[temp][0]))
	f.write('\n')

# random bowlers
for i in range(5):
	temp = random.randint(0,83)
	f.write(str(y[temp][0]))
	f.write(',')
	temp = random.randint(0,83)
	f.write(str(y[temp][0]))
	f.write('\n')

f.close()