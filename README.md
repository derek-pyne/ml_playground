# Machine Learning Playground
Hosted here are a series of machine learning and data science projects that I have been working on.

## Repository Structure
To avoid putting the large datasets in the repository, all the datasets are put into a *Data* folder in each project that is not synced. To setup the repository, the script *load_datasets.py* can be used. It looks through the repo's directory and checks in each project for an empty *Data* folder and a *kaggle.dat* file. The *kaggle.dat* file contains the name for the competition that is needed to download the data from the Kaggle servers (it is the name in the URL of each competition). If both of these are found, the *Kaggle-cli* library is used to login (using your personal Kaggle login) and download the datasets. For this to work, you need to have already gone into each Kaggle competition and accepted the terms and conditions. After they are downloaded, the datasets are also extracted.

## Computation Setup
Each project is done in a Jupyter notebook. Instructions are given for setting up your virtual machine on the Google Cloud, running your Jupyter Notebook server on the remote machine, and then opening an ssh tunnel to it on your local machine. This allows for serious computational resources to be used at an incredibly cheap rate. For me this meant being able to keep my beloved Macbook Air and avoid buying a larger machine :) 
