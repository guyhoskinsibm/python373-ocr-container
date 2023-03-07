## Import Required Packages

# For image Extraction and Pre-processing
from PIL import Image
import glob
import cv2
import argparse
import os
os.path

# For OCR
import numpy as np
import pandas as pd
import pytesseract

# For Language Detection
import re
import langdetect

# For Spacy NLP
import spacy
from spacy import displacy


# TO count word Frequecy
from collections import Counter

# Third Party TF-IDF libaries
# from sklearn.feature_extraction.text import TfidfVectorizer

# For Topic Modeling
from top2vec import Top2Vec

# For dimensionality (word) reduction
from sklearn.decomposition import TruncatedSVD

# For Normalization of datframes
from sklearn import preprocessing

# For KMeans clustering
from sklearn.cluster import KMeans

## For KNearestNeighbor - ONLY WORKS WITH LABELLED DATA
#from sklearn.neighbors import NearestNeighbors
#from sklearn.neighbors import KNeighborsClassifier

# For SVD Dimensionality Reduction
from sklearn.decomposition import TruncatedSVD

# For Principle Component Analysis
from sklearn.decomposition import PCA

# For Fuzzy C matching - inte
from fcmeans import FCM

print("Success!!!")
