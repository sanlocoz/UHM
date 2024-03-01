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



dir = "D:\\Wageningen\\Period 4\\Part 2\\project\\input"
os.chdir(dir)

files = os.listdir(dir)

a=pd.read_csv(files[0],  delim_whitespace=True, index_col = 0)

plt.scatter(a.iloc[:,0],a.iloc[:,8], c ="blue")