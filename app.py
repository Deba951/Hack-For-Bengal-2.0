from flask import Flask,request,jsonify
import pandas as pd
import math
import numpy as np
import json
from pandas import json_normalize
import firebase_admin
from firebase_admin import credentials
from firebase_admin import firestore

PRIVATE_JSON_KEY_PATH="C:/Users/Prahlad/ML_Workspace/HackforBengal/bloodway-adb23-firebase-adminsdk-4nwcc-4395b4b7e8.json"

app = Flask(__name__)

@app.route('/')
def index():
    return "Hello world"
cred = credentials.Certificate(PRIVATE_JSON_KEY_PATH)
firebase_admin.initialize_app(cred)

@app.route('/get_param', methods=['GET'])
def get_param():
    args = request.args
    user_lat=args.get("user_lat", default="", type=str)
    user_long=args.get("user_long",default="",type=str)
    return user_lat,user_long

@app.route('/fxy',methods=['POST'])
def fxy(x, y,user_lat,user_long):
  #user_lat,user_long=35.264,77.254
  distance=math.sqrt((x-user_lat)**2+(y-user_long)**2)
  return distance

@app.route('/get_json',methods=['POST'])
def get_json():
    db = firestore.client()
    collection_ref = db.collection('bank')
    documents = collection_ref.get()
    #print(documents)
    # Loop through the documents and retrieve the document_id
    document_data={}
    doc_lst=[]
    for document in documents:
        document_id = document.id
        #print(document_id)
        document_data=document.to_dict()
        document_data.update({"id":document_id})
        doc_lst.append(document_data)
        #print(document_data)
    #print(type(doc_lst))
    #data = request.get_json()
    #print(data)
    #return 'JSON received successfully'
    #df1=json.loads(data)
    df2 = json_normalize(doc_lst) 
    #print(df2)
    df2 = df2.fillna(0)
    #df2.replace(np.nan,0)
    #print(df2)
    user_lat,user_long=get_param()
    df2['Distance'] = df2.apply(lambda x: fxy(float(x['lat']), float(x['long']),float(user_lat),float(user_long)), axis=1)
    df2.sort_values('Distance',axis=0,inplace=True,kind='quicksort')
    #print(df2['Distance'])
    df2=pd.DataFrame(df2,columns=['id'])
    
    #print(type(df2['id']))
    #df=df2.values().tolist()
    df=dict()
    for col in df2.columns:
        df['id']=df2[col].values.tolist()
    #df=df2.to_dict()
    return jsonify(df)
if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

