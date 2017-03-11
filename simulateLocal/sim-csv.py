#!/usr/bin/env python
import random
import numpy as numpy
import pandas as pd
import sys

# reading the values
df = pd.read_csv(r"/home/aki/Desktop/IPL/simulateLocal/ballCluster.csv")
df2 = pd.read_csv(r"/home/aki/Desktop/IPL/simulateLocal/batCluster.csv")
df3 = pd.read_csv(r"/home/aki/Desktop/IPL/simulateLocal/prob.csv")
# removing the first column
del df3['tuple']
x = sys.argv[1]
y = sys.argv[2]

df4 = pd.read_csv(x)
df5 = pd.read_csv(y)
# ballcluster
y = df.values
# batcluster
z = df2.values
# matchdata
x = df3.values
# lineup
t1 = df4.values
t2 = df5.values


# hashmap containing bowler names and cluster numbers
dictB1 = {}
# hashmap containing batsman names and cluster numbers
dictB2 = {}

# populating the dictionary
for i in range(84):
    dictB1[y[i][0]] = y[i][3]
for i in range(100):
    dictB2[z[i][0]] = z[i][3]

# creating the probability matrix
p = [0]*20

for i in range(20):
	l = [0] * 8
	p[i] = l

# populating the probability matrix with cumulative probabilities
for i in range(20):
    for j in range(8):
        for k in range(j,8):
            p[i][k] += x[i][j]

# array containing player names
team1 = [0]*11
team2 = [0]*11

# populating the arrays
for i in range(11):
	team1[i] = t1[i][0]
	team2[i] = t2[i][0]

def simulateInnings(bat,ball):
	f = open("/home/aki/Desktop/IPL/simulateLocal/team1.csv", 'w') #encoding = 'utf-8')
	f.write('overs')
	f.write(',')
	f.write('score')
	f.write(',')
	f.write('Batsman')
	f.write(',')
	f.write('Non-Strike Batsman')
	f.write(',')
	f.write('Bowler')
	f.write(',')
	f.write('Runs')
	f.write('\n')

	runs = 0
	wickets = 0
	strike = 0
	overs = 0
	balls = 0
	nstrike = 1
	bowler = 10
	while(wickets<10 and overs<20):
		# print(str(overs)+'.'+str(balls)+'\t'+str(runs)+'/'+str(wickets),end='\t')
		# print(bat[strike]+'\t'+bat[nstrike]+'\t'+ball[bowler],end='\t')
		f.write(str(overs)+'.'+str(balls))
		f.write(',')
		f.write(str(runs)+'/'+str(wickets))
		f.write(',')
		f.write(str(bat[strike]))
		f.write(',')
		f.write(str(bat[nstrike]))
		f.write(',')
		f.write(str(ball[bowler]))
		f.write(',')
		temp = random.random()
		a = dictB2.get(bat[strike],4)
		b = dictB1.get(ball[nstrike],3)
		#b = dictB2.get(bat[nstrike],3)
		index = 5*b + a
		i=0
		while(temp>p[index][i]):
			i += 1

		if(i==0):
			# print('no runs')
			f.write('no runs')
			pass
		elif(i==1):
			# print('single')
			f.write('single')
			runs += 1
			foo = strike
			strike = nstrike
			nstrike = foo
		elif(i==2):
			# print('double')
			f.write('double')
			runs += 2
		elif(i==3):
			# print('three runs')
			f.write('three runs')
			runs += 3
			foo = strike
			strike = nstrike
			nstrike = foo
		elif(i==4):
			# print('four runs!')
			f.write('four runs!')
			runs += 4
		elif(i==5):
			# print('six!!')
			f.write('six!!')
			runs += 6
		elif(i==6):
			# print('out')
			f.write('out')
			strike = wickets+2
			wickets += 1
		else:
			# print('extra')
			f.write('extra')
			runs += 1
			f.write('\n')
			continue
		f.write('\n')
		if(balls+1<6):
			balls+=1
		else:
			balls = 0
			overs += 1
			foo = strike
			strike = nstrike
			nstrike = foo
			if(bowler-1>5):
				bowler -= 1
			else:
				bowler = 10
	f.close()
	return runs,wickets

def simulateInnings1(bat,ball,runs1):
	f = open("/home/aki/Desktop/IPL/simulateLocal/team2.csv", 'w')# encoding = 'utf-8')
	f.write('overs')
	f.write(',')
	f.write('score')
	f.write(',')
	f.write('Batsman')
	f.write(',')
	f.write('Non-Strike Batsman')
	f.write(',')
	f.write('Bowler')
	f.write(',')
	f.write('Runs')
	f.write('\n')

	runs = 0
	wickets = 0
	strike = 0
	overs = 0
	balls = 0
	nstrike = 1
	bowler = 10
	while(wickets<10 and overs<20 and runs<=runs1):
		# print(str(overs)+'.'+str(balls)+'\t'+str(runs)+'/'+str(wickets),end='\t')
		# print(bat[strike]+'\t'+bat[nstrike]+'\t'+ball[bowler],end='\t')
		f.write(str(overs)+'.'+str(balls))
		f.write(',')
		f.write(str(runs)+'/'+str(wickets))
		f.write(',')
		f.write(str(bat[strike]))
		f.write(',')
		f.write(str(bat[nstrike]))
		f.write(',')
		f.write(str(ball[bowler]))
		f.write(',')
		temp = random.random()
		a = dictB2.get(bat[strike],4)
		b = dictB1.get(ball[nstrike],3)
		index = 5*b + a
		i=0
		while(temp>p[index][i]):
			i += 1

		if(i==0):
			# print('no runs')
			f.write('no runs')
			pass
		elif(i==1):
			# print('single')
			f.write('single')
			runs += 1
			foo = strike
			strike = nstrike
			nstrike = foo
		elif(i==2):
			# print('double')
			f.write('double')
			runs += 2
		elif(i==3):
			# print('three runs')
			f.write('three runs')
			runs += 3
			foo = strike
			strike = nstrike
			nstrike = foo
		elif(i==4):
			# print('four runs!')
			f.write('four runs!')
			runs += 4
		elif(i==5):
			# print('six!!')
			f.write('six!!')
			runs += 6
		elif(i==6):
			# print('out')
			f.write('out')
			strike = wickets+2
			wickets += 1
		else:
			# print('extra')
			f.write('extra')
			runs += 1
			f.write('\n')
			continue
		f.write('\n')
		if(balls+1<6):
			balls+=1
		else:
			balls = 0
			overs += 1
			foo = strike
			strike = nstrike
			nstrike = foo
			if(bowler-1>5):
				bowler -= 1
			else:
				bowler = 10
	f.close()
	return runs,wickets


runs1,wickets1 = simulateInnings(team1,team2)
runs2,wickets2 = simulateInnings1(team2,team1,runs1)
print('Team1 : '+str(runs1)+'/'+str(wickets1))
print('Team2 : '+str(runs2)+'/'+str(wickets2))
if(runs1==runs2):
	print('Match was a tie!')
elif(runs1>runs2):
	print('team1 won by '+str(runs1-runs2)+' runs')
else:
	print('team2 won by '+str(10-wickets2)+' wickets')

