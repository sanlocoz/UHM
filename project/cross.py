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

dir = "D:\\Wageningen\\Period 4\\Part 2\\project"
os.chdir(dir)

files = os.listdir(dir)

df = pd.read_csv("input\\PEQrQdrG_Lelystad_3h.dat", delim_whitespace = True, index_col= 0)
df.index = df.apply(rowIndextoTimestamp, axis=1)
