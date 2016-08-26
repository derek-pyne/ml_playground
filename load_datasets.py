'''
Kaggle Dataset Loader

To avoid a giant repository, datasets are not synced with repository.
Datasets are stored in a 'Data' folder within each project. If these
datasets are from Kaggle, then a 'kaggle.dat' file should be present
with the official name of the contest. This is used by the Kaggle-cli
to download the dataset.

Inputs
Username: Kaggle Username
Password: Kaggle Password

Eg. python3 load_datasets.py username password
'''

import os
import subprocess
import sys

for d in os.listdir():
    #Checking for files and hidden folders
    if not (os.path.isdir(os.path.join('.', d)) and not d.startswith('.')):
        continue

    #Looking for Data folder
    data_path = os.path.join('.', d, 'Data')
    print('Data path: ', data_path)
    if not os.path.isdir(data_path):
        print('Could not find Data folder')
        continue

    #Looking for Kaggle file
    kaggle_config = os.path.join('.', d, 'kaggle.dat')
    if not os.path.isfile(kaggle_config):
        print('Could not find kaggle.dat')
        continue

    #Reading Kaggle file
    with open(kaggle_config, 'r') as f:
        print('Found kaggle config file: ', kaggle_config)
        contest = f.read().rstrip()
    
    #Loading data
    print('Loading contest data')
    print('Contest: ', contest)
    subprocess.run(['kg', 'download', '-u', sys.argv[1], '-p', sys.argv[2], '-c', contest], cwd=data_path)

    #Extracting compressed files
    for f in os.listdir(data_path):
        if (os.path.splitext(f)[1][1:] in ('zip', 'gz')):
            print('Extracting: ', f)
            subprocess.run(['7z', 'x', f], cwd=data_path)
