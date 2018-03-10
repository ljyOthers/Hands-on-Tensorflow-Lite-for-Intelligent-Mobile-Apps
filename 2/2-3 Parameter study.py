#
# Packt Publishing
# Hands-on Tensorflow Lite for Intelligent Mobile Apps
# @author: Juan Miguel Valverde Martinez
#
# Section 2: Developing our first model in Tensorflow Lite
# Video 2-3: Parameter study
#

import numpy as np
import matplotlib.pyplot as plt
import random
import tensorflow as tf
import itertools

# Constants

NUM = 100
b_size = 5
epochs = 500
n_times = 5

# Functions

def generateNoise():
	''' This function returns a small random value between -1.0 and 1.0
	'''
	if np.random.random()>0.5:
		sign=1
	else:
		sign=-1
	return (np.random.random()*sign)/4
					
def realFun(p1,p2):
	''' Function the model will learn.
	'''
	return np.sin(p1)+3+np.cos(p2)

def noisyFun(p1,p2):
	''' Measurement of the function including noise.
	'''
	return realFun(p1,p2)+generateNoise()

def shuffleData(data):
	''' This function shuffles the rows of the given data
	'''
	randIndices = [x for x in range(data.shape[0])]
	random.shuffle(randIndices)
	return data[randIndices]

def generateSets(data,splits):
	''' This function will generate Training, Testing and Validation sets given
		the data (numpy array), splits (list of percentages, i.e. [0.7,0.2,0.1]
		corresponding to 70% training, 20% testing and 10% validation data
		respectively
	'''
	cut1 = int(splits[0]*NUM)
	cut2 = int(splits[1]*NUM)
	cut3 = int(splits[2]*NUM)

	totalIndices = np.array([x for x in range(NUM)])
	indicesTraining = np.array([i*NUM//cut1 + NUM//(2*cut1) for i in range(cut1)])
	restIndices=np.array(sorted(list(set(totalIndices)-set(indicesTraining))))

	indicesTesting = np.array([i*len(restIndices)//cut2 + len(restIndices)//(2*cut2) for i in range(cut2)])
	indicesTesting = restIndices[indicesTesting]

	indicesValidating = np.array(sorted(list(set(restIndices)-set(indicesTesting))))

	return shuffleData(data[indicesTraining,:]),shuffleData(data[indicesTesting,:]),shuffleData(data[indicesValidating,:])


def createNoiseVector():
	''' This function will create a vector that will contain a continuous
		amount of noise within a range. For example, within the range between
		20-25%, there will be a linear increment of the noise.
	'''
	# 2-3, 7,8
	noiseVector = np.zeros(NUM)
	initRange = int(NUM*0.2)
	endRange = int(NUM*0.25)
	noise = np.linspace(0.2,0.4,num=endRange-initRange)
	noiseVector[initRange:endRange] = noise

	initRange = int(NUM*0.7)
	endRange = int(NUM*0.73)
	noise = np.linspace(0.2,0.5,num=endRange-initRange)
	noiseVector[initRange:endRange] = noise

	return noiseVector

def getTensorByName(name):
	for t in tf.global_variables():
		if t.name==name:
			return name
	return None

def myLossFun(x,y):
	return tf.reduce_sum(tf.abs(tf.subtract(x,y)))

# --- OUR CODE ---
### PART 0: THE DATA ### 
realData = np.zeros(NUM)
noisyData = np.zeros((NUM,3))
results = np.zeros(NUM) 
# Parameters
p1 = np.linspace(-2,2,num=NUM)
p2 = np.linspace(6,12,num=NUM)

for i in range(NUM):
	realData[i] = realFun(p1[i],p2[i])
	noisyData[i,:] = [p1[i],p2[i],noisyFun(p1[i],p2[i])]

noisyData[:,-1]+=createNoiseVector()

### PART 1: MODEL ###
def createGraph(config):
	init,loss,lr,_ = config

	# Network Parameters
	Nodes = [2,5,10,12,14,15,12,8,5,1]

	# tf Graph input
	x = tf.placeholder("float", [None, Nodes[0]])
	y = tf.placeholder("float", [None, Nodes[-1]])

	# Hidden layer with RELU activation
	with tf.variable_scope("layer1") as scope:
		if init=="xavier":
			W = tf.get_variable("W",shape=[Nodes[0],Nodes[1]],initializer=tf.contrib.layers.xavier_initializer())
		else:
			W = tf.get_variable("W",initializer=tf.random_normal([Nodes[0],Nodes[1]]))
		b = tf.get_variable("b",initializer=tf.zeros([Nodes[1]]))

		layer = tf.add(tf.matmul(x,W),b)
		layer = tf.nn.sigmoid(layer)

	for i in range(1,8):
		with tf.variable_scope("layer"+str(i+1)) as scope:
			if init=="xavier":
				W = tf.get_variable("W",shape=[Nodes[i],Nodes[i+1]],initializer=tf.contrib.layers.xavier_initializer())
			else:
				W = tf.get_variable("W",initializer=tf.random_normal([Nodes[i],Nodes[i+1]]))
			b = tf.get_variable("b",initializer=tf.zeros([Nodes[i+1]]))
			layer = tf.add(tf.matmul(layer,W),b)
			layer = tf.nn.sigmoid(layer)

	with tf.variable_scope("layer9") as scope:
		if init=="xavier":
			W = tf.get_variable("W",shape=[Nodes[-2],Nodes[-1]],initializer=tf.contrib.layers.xavier_initializer())
		else:
			W = tf.get_variable("W",initializer=tf.random_normal([Nodes[-2],Nodes[-1]]))
		b = tf.get_variable("b",initializer=tf.zeros([Nodes[-1]]))
		# Output layer with linear activation
		pred = tf.add(tf.matmul(layer,W),b)

	# Define loss and optimizer
	cost = loss(pred,y)
	optimizer = tf.train.AdamOptimizer(learning_rate=lr).minimize(cost)

	return x,y,cost,optimizer,pred

initP = ["xavier","random"]
lossesP = [tf.losses.absolute_difference,tf.losses.hinge_loss,myLossFun]
lrP = np.linspace(0.0001,0.1,10)
batchP = range(3,7)
parameters = [initP,lossesP,lrP,batchP]

allConfgs = list(itertools.product(*parameters))


### PART 2: RUN THE MODEL ###
# Launch the graph
counter = 0

for conf in allConfgs:
	counter+=1
	print(counter,len(allConfgs))
	x,y,cost,optimizer,pred = createGraph(conf)
	b_size = conf[-1]

	lowestError = 999
	for times in range(n_times):

		with tf.Session() as sess:

			# Initializing the variables
			sess.run(tf.global_variables_initializer())
			# Generating datasets
			trainingData,testingData,validationData = generateSets(noisyData,[0.7,0.2,0.1])

			for e in range(epochs):

				# Training cycle
				for i in range(0,trainingData.shape[0],b_size):
					x_raw = trainingData[i:i+b_size,:-1]
					y_raw = trainingData[i:i+b_size,-1]
					y_raw = np.reshape(y_raw,(y_raw.shape[0],1))

					# Run optimization op (backprop) and cost op (to get loss value)
					_, c = sess.run([optimizer,cost], feed_dict={x: x_raw,y: y_raw})
							

			# Testing cycle
			tmpErrorNoisy = 0
			tmpError = 0
			for i in range(testingData.shape[0]):
				x_raw = np.reshape(testingData[i,:-1],(1,2))
				prediction = pred.eval({x:x_raw})
				tmpErrorNoisy += abs(noisyFun(x_raw[0,0],x_raw[0,1])-prediction)
				tmpError += abs(realFun(x_raw[0,0],x_raw[0,1])-prediction)

		if tmpErrorNoisy<lowestError:
			lowestError=tmpErrorNoisy
	
	f=open("logRes","a")
	f.write("{0},{1},{2},{3},{4}\n".format(conf[0],conf[1].func_name,conf[2],conf[3],float(lowestError)))
	f.close()
	
	tf.reset_default_graph()

