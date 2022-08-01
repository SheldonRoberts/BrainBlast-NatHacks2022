import time 
import random
import numpy as np
import math
from fastapi import FastAPI, WebSocket
from websocket import create_connection

#Create Fast API Instantance 
app = FastAPI()


#Function to round to the nearest 0.5
def nearest_point_five(number):
    return round(number * 2) / 2

#Function to Scale for Differences in Concentration
def scaling_function(dif_av):

	#Cap the scaling to be 1 at the maximum 
	if dif_av > .4779:
		dif_av = .4779

	#Difference in averages must be greater than 0.04 
	#for there to be any change in scores
	if dif_av <= 0.04:
		scaled_num = 0

	#Scaling function for differences in averages 
	#between 0.04 and 1
	else:
		scaled_num = round((((10**(dif_av+.45)-1)/9)+.17),3)

	return scaled_num


async def main(websocket):
	#Record starting time
	start_time = time.time()

	#Initialize Variables

	#Last five concentration values of the players
	concentration_p1 = np.array([0.5] * 5 )
	concentration_p2 = np.array([0.5] * 5 ) 

	#Percentage to win
	bar_p1 = 50
	bar_p2 = 50

	#Iterative value to update 
	con_val_1 = .5
	con_val_2 = .5

	#Create connection p1 & p2
	ws = create_connection("ws://192.168.104.172:8000/concatenate_p1")
	ws2 = create_connection("ws://192.168.104.185:8001/concatenate_p2")

	#Tell the Main program, this program is ready to recieve data
	ws.send("start")
	ws2.send("start")

	#Main Loop
	while True:

		if bar_p1 >= 100 or bar_p2 >= 100:
			ws.close()
			ws2.close()
			break 

		#Scrap concentration values from online  
		con_val_1 = float(ws.recv())
		con_val_2 = float(ws2.recv())

		#Delete first concentration value from array
		concentration_p1 = np.delete(concentration_p1,0)
		concentration_p2 = np.delete(concentration_p2,0)

		#Append new concentration value to array
		concentration_p1 = np.insert(concentration_p1,0,con_val_1)
		concentration_p2 = np.insert(concentration_p2,0,con_val_2)

		#Mark time
		interative_time = time.time()
		
		#Calculate difference in time
		dif_time = interative_time - start_time

		#Value to enter into time scaling function
		scaler_time = dif_time // 5

		#Calculate average of last 5 values
		av_p1 = np.average(concentration_p1)
		av_p2 = np.average(concentration_p2)

		#Calculate difference in averages
		dif_av = abs(av_p1 - av_p2)

		#Scale for difference between values
		power_scale = scaling_function(dif_av)

		#Round to nearest 0.5 value after scaling for time
		scaler_bar = nearest_point_five((1.25**scaler_time) * power_scale)

		#Adjust percentages based on who concentrated more 
		if av_p1 > av_p2: 
			bar_p1 = bar_p1 + scaler_bar
			bar_p2 = bar_p2 - scaler_bar

		elif av_p1 < av_p2: 
			bar_p2 = bar_p2 + scaler_bar
			bar_p1 = bar_p1 - scaler_bar

	 
		#If player reaches 100 or past 100, values are adjusted and the 
		#game is prepared 
		if bar_p1 >= 100:
			bar_p1 = 100
			bar_p2 = 0
		elif bar_p2 >= 100:
			bar_p2 = 100
			bar_p1 = 0

		await websocket.send_text(str(bar_p1))
		time.sleep(1)
			

#Test HTTP get
@app.get("/")
async def root():
    return {"message": "Message Sent"}


#Establish Webstock
@app.websocket("/Score")
async def websocket_endpoint(websocket: WebSocket):
    await websocket.accept()
    data = await websocket.receive_text()
    await main(websocket)



