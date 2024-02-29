# -*- coding: utf-8 -*-
"""
Created on Wed Feb 28 20:41:54 2024

@author: user
"""
import numpy as np
import seaborn as sns
import numpy as np
import os
import re
import pandas as pd
import matplotlib.pyplot as plt
import scipy.stats as stats
import warnings

warnings.filterwarnings("ignore")

def rowIndextoTimestamp(row):
    strName = str(row.name)
    year = int(strName[0:4])
    month = int(strName[4:6])
    day = int(strName[6:8])
    hour = int(strName[8:10])
    
    return pd.Timestamp(year = year, month = month, day = day, hour = hour)

def tagAutumnSpringWinterSummer():
    return

def makingNewLag(df):
    return df

def plot():
    plt.plot(df_input.loc[:,"Qrain_Nwp"])
    return

dir = "D:\\Wageningen\\Period 4\\Part 2\\project"
os.chdir(dir)

files = os.listdir(dir)

df = pd.read_csv("input\\PEQrQdrG_Lelystad_3h.dat", delim_whitespace = True, index_col= 0)
df.index = df.apply(rowIndextoTimestamp, axis=1)

start = pd.Timestamp(year=1970, month=1, day=1, hour=0) 
end = pd.Timestamp(year=1974, month=1, day=1, hour=0) 

df_input = df[np.logical_and(df.index>=start, df.index<=end)]

sum = [1, 2, 4, 6, 8, 16, 24, 48, 120, 240, 480, 720, 1440, 2880]

#calculating cumulative sum of rainfall
P = np.zeros((len(df_input.index), np.size(sum)))

P_arr = np.array(df_input["P"])
P_cum = np.array(df_input["P"])

for i in range(1, len(P_cum)):
    P_cum[i]=P_cum[i]+P_cum[i-1]

for i in range(0, len(sum)):
    for j in range(0, len(df_input.index)):
        if(j<(sum[i]-1)):
            P[j, i] = np.nan
        elif(j==(sum[i]-1)):
            P[j, i] = P_cum[j]
        else:
            P[j, i] = P_cum[j]-P_cum[j-sum[i]]
        
#calculating cumulative sum of evapotranspiration
ET = np.zeros((len(df_input.index), np.size(sum)))
ET_arr = np.array(df_input["ETpot"])
ET_cum = np.array(df_input["ETpot"])

for i in range(1, len(ET_cum)):
    ET_cum[i]=ET_cum[i]+ET_cum[i-1]

for i in range(0, len(sum)):
    for j in range(0, len(df_input.index)):
        if(j<(sum[i]-1)):
            ET[j, i] = np.nan
        elif(j==(sum[i]-1)):
            ET[j, i] = ET_cum[j]
        else:
            ET[j, i] = ET_cum[j]-ET_cum[j-sum[i]]
            
#calculating cumulative sum of Qrain_Nwp
Qrain_Nwp = np.zeros((len(df_input.index), np.size(sum)))
Qrain_Nwp_arr = np.array(df_input["Qrain_Nwp"])
Qrain_Nwp_cum = np.array(df_input["Qrain_Nwp"])

for i in range(1, len(Qrain_Nwp_cum)):
    Qrain_Nwp_cum[i]=Qrain_Nwp_cum[i]+Qrain_Nwp_cum[i-1]

for i in range(0, len(sum)):
    for j in range(0, len(df_input.index)):
        if(j<(sum[i]-1)):
            Qrain_Nwp[j, i] = np.nan
        elif(j==(sum[i]-1)):
            Qrain_Nwp[j, i] = Qrain_Nwp_cum[j]
        else:
            Qrain_Nwp[j, i] = Qrain_Nwp_cum[j]-Qrain_Nwp_cum[j-sum[i]]
            
#calculating cumulative sum of Qrain_Pbh
Qrain_Pbh = np.zeros((len(df_input.index), np.size(sum)))
Qrain_Pbh_arr = np.array(df_input["Qrain_Pbh"])
Qrain_Pbh_cum = np.array(df_input["Qrain_Pbh"])

for i in range(1, len(Qrain_Pbh_cum)):
    Qrain_Pbh_cum[i]=Qrain_Pbh_cum[i]+Qrain_Pbh_cum[i-1]

for i in range(0, len(sum)):
    for j in range(0, len(df_input.index)):
        if(j<(sum[i]-1)):
            Qrain_Pbh[j, i] = np.nan
        elif(j==(sum[i]-1)):
            Qrain_Pbh[j, i] = Qrain_Pbh_cum[j]
        else:
            Qrain_Pbh[j, i] = Qrain_Pbh_cum[j]-Qrain_Pbh_cum[j-sum[i]]
    
#calculating cumulative sum of Qdrain_Nwp
Qdrain_Nwp = np.zeros((len(df_input.index), np.size(sum)))
Qdrain_Nwp_arr = np.array(df_input["Qdrain_Nwp"])
Qdrain_Nwp_cum = np.array(df_input["Qdrain_Nwp"])

for i in range(1, len(Qdrain_Nwp_cum)):
    Qdrain_Nwp_cum[i]=Qdrain_Nwp_cum[i]+Qdrain_Nwp_cum[i-1]

for i in range(0, len(sum)):
    for j in range(0, len(df_input.index)):
        if(j<(sum[i]-1)):
            Qdrain_Nwp[j, i] = np.nan
        elif(j==(sum[i]-1)):
            Qdrain_Nwp[j, i] = Qdrain_Nwp_cum[j]
        else:
            Qdrain_Nwp[j, i] = Qdrain_Nwp_cum[j]-Qdrain_Nwp_cum[j-sum[i]]
            
#calculating cumulative sum of Qdrain_Pbh
Qdrain_Pbh = np.zeros((len(df_input.index), np.size(sum)))
Qdrain_Pbh_arr = np.array(df_input["Qdrain_Pbh"])
Qdrain_Pbh_cum = np.array(df_input["Qdrain_Pbh"])

for i in range(1, len(Qdrain_Pbh_cum)):
    Qdrain_Pbh_cum[i]=Qdrain_Pbh_cum[i]+Qdrain_Pbh_cum[i-1]

for i in range(0, len(sum)):
    for j in range(0, len(df_input.index)):
        if(j<(sum[i]-1)):
            Qdrain_Pbh[j, i] = np.nan
        elif(j==(sum[i]-1)):
            Qdrain_Pbh[j, i] = Qdrain_Pbh_cum[j]
        else:
            Qdrain_Pbh[j, i] = Qdrain_Pbh_cum[j]-Qdrain_Pbh_cum[j-sum[i]]            