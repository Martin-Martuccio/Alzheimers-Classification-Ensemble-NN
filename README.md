# Alzheimers-Classification-Ensemble-NN

## Introduction
Alzheimer's disease is a progressive neurological disorder that leads to memory loss and cognitive decline. Early diagnosis is crucial as it allows for timely intervention, potentially slowing the progression of the disease.

## Project Overview
This project aims to develop a Ensemble Neural Network model for the accurate classification of Alzheimer's disease using MRI scans. The model classifies the scans into four distinct stages of the disease, helping in the early detection and diagnosis, which is crucial for improving treatment outcomes and the quality of life for patients. The dataset used for this project was sourced from Kaggle.

## Methodology
The ensemble model leverages the strengths of different architectures to better generalize across the dataset. The following steps were taken:

1. **Data Preprocessing**: MRI scans were resized and normalized. Data augmentation techniques were applied to increase the diversity of the training set.
2. **Model Training**: Multiple CNN architectures, including custom models and ResNet, were trained independently. Hyperparameter tuning was performed to optimize each model.
3. **Ensemble Learning**: The outputs of the individual models were combined using a weighted average approach to form the final classification decision.

## Repository Structure

- /data/: Contains the dataset used for training, validation, and testing. The images are resized to 128x128 pixels for uniformity.
- /scripts/: Contains scripts for data preprocessing, model training, and evaluation. This includes scripts for data augmentation and splitting the dataset.
- /src/: Contains scripts and Jupyter notebooks used during the development process. These include : data preprocessing, model training, evaluation and model optimization.
- /results/: Contains graphs, tables and all elements used to measure the performance for our models.
- README.md: This file, providing an overview and instructions for the project.

Authors : Martin Martuccio - Samuele Pellegrini

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)
![Python: 3.8](https://img.shields.io/badge/Python-3.8-blue.svg)
