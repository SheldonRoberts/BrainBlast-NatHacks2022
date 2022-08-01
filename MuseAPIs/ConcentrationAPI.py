from fastapi import FastAPI, WebSocket
import argparse
import time
import brainflow
import numpy as np

from brainflow.board_shim import BoardShim, BrainFlowInputParams, LogLevels, BoardIds,BrainFlowError
from brainflow.data_filter import DataFilter, FilterTypes, AggOperations, DetrendOperations
from brainflow.ml_model import MLModel, BrainFlowMetrics, BrainFlowClassifiers, BrainFlowModelParams
from brainflow.exit_codes import *

#Create instance of FastAPI
app = FastAPI()

#Test HTTP get
@app.get("/")
async def root():
    return {"message": "Hello World"}

#Establish websocket
@app.websocket("/concatenate_p1")
async def websocket_endpoint(websocket: WebSocket):
    await websocket.accept()
    data = await websocket.receive_text()
    await start_eeg(websocket)

#Retrive EEG Data
async def start_eeg(websocket: WebSocket):
    
    #Connecting BrainFlow to Muse 2
    BoardShim.enable_board_logger ()
    DataFilter.enable_data_logger ()
    MLModel.enable_ml_logger ()

    params = BrainFlowInputParams()
    params.serial_port = 'COM3'
    BoardShim.enable_dev_board_logger()
    board = BoardShim(22, params)
    master_board_id = board.get_board_id ()
    sampling_rate = BoardShim.get_sampling_rate (master_board_id)
    board.prepare_session()

    concentration_params = BrainFlowModelParams (BrainFlowMetrics.CONCENTRATION.value, BrainFlowClassifiers.REGRESSION.value)
    concentration = MLModel (concentration_params)
    concentration.prepare ()

    board.start_stream () # use this for default options
    print('Board Streaming!')

    try:
        while True:
            # sleep for 2 second
            time.sleep (2)

            #Obtain concentration values
            data = board.get_current_board_data(256*2)
            eeg_channels = BoardShim.get_eeg_channels (int (master_board_id))
            bands = DataFilter.get_avg_band_powers (data, eeg_channels, sampling_rate, True)
            feature_vector = np.concatenate ((bands[0], bands[1]))
            #Send concentration values
            await websocket.send_text(f"{concentration.predict (feature_vector)}")
    finally:
        board.stop_stream ()
        board.release_session ()
        concentration.release ()
        print('stopped!')
        


        