from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import JSONResponse
from fastapi.staticfiles import StaticFiles

import tensorflow as tf
from fastapi import FastAPI, File, UploadFile
import cv2 
import numpy as np
import shutil
import tempfile
import os

app = FastAPI()
app.mount("/temp", StaticFiles(directory="./temp"), name="temp")

origins = [
    "http://localhost:3000",
    "localhost:3000"
]

app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"]
)

TEMP_DIR = tempfile.mkdtemp()
age_ranges = ['1-2', '3-9', '10-20', '21-27', '28-45', '46-65', '66-116']
gender_ranges = ['male', 'female']

def save_temp_file(file: UploadFile, temp_dir: str):
    temp_file_path = os.path.join(temp_dir, file.filename)
    with open(temp_file_path, "wb") as temp_file:
        shutil.copyfileobj(file.file, temp_file)
    return temp_file_path

@app.get("/")
async def root():
    return JSONResponse(content={"message": "Hello World"}, status_code=200)

@app.post("/predict")
async def predict(file: UploadFile):
    gender_model = tf.keras.models.load_model('../notebooks/gender_saved_model/')
    age_model = tf.keras.models.load_model('../notebooks/saved_model/')
    ori_file_path = save_temp_file(file, TEMP_DIR)

    img = cv2.imread(ori_file_path, cv2.IMREAD_COLOR)
    
    face_cascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml')
    gray_image = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
    faces = face_cascade.detectMultiScale(
        gray_image, scaleFactor=1.1, minNeighbors=5, minSize=(40, 40)
    )

    cropped_face = None
    prediction_results = list()
    i=0
    # Check if any faces are detected
    if len(faces) > 0:
        for(x, y, w, h) in faces:
            file_extension = '_face_{i}.jpg'.format(i=i)
            i+=1
            file_name = file.filename.replace('.jpg', file_extension)
            processed_file_url = f"./temp/{file_name}"
            cropped_face = img[y:y + h, x:x + w]
            
            cv2.imwrite(processed_file_url, cropped_face)
            
            gray_image = cv2.cvtColor(cropped_face, cv2.COLOR_BGR2GRAY)
            prediction = age_model.predict(cv2.resize(gray_image, (200, 200)).reshape(1, 200, 200, 1))
            predicted_age = np.argmax(prediction)
            age = age_ranges[predicted_age]
            
            prediction = gender_model.predict(cv2.resize(gray_image, (100, 100)).reshape(1, 100, 100, 1))
            predicted_gender = np.argmax(prediction)
            gender = gender_ranges[predicted_gender]
            
            prediction_results.append({
                "age": age,
                "gender": gender,
                "face_url": 'http://localhost:8000/temp/{file_name}'.format(file_name=file_name)
            })
      
    else:
        return JSONResponse(content={"message": "No face detected"}, status_code=501)

    return JSONResponse(content={"message": "Success", "data": prediction_results}, status_code=200)