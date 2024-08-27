This directory contains a collection of Bash scripts and Jupyter notebooks for the preprocessing of datasets, conducting initial machine learning tests, data collection, hyperparameter tuning, and implementing majority voting models.

# Folder Structure

## 1. **Sanitizing Dataset**

This directory is focused on preparing and sanitizing the dataset. It includes both shell scripts and a Jupyter notebook to assist in various stages of data cleaning.

- **`Image Resize Script.ipynb`**  
  This notebook guides through the process of resizing images in your dataset. It includes functionalities to:
  - Load images from specified directories.
  - Resize images to a uniform dimension while maintaining aspect ratio.
  - Save the resized images to a designated output directory.
  - Handle exceptions and errors during processing.

- **`Script.sh`**  
  A shell script designed to automate the sanitization process. It executes `Script1.sh`, `Script2.sh` and `Script3.sh`.
  
- **`Script1.sh`**  
  Focuses on renaming each image with the correct label.

- **`Script2.sh`** 
  Deals with duplicated image, removing them.

- **`Script3.sh`**  
  Returns the number of files for each image size.

## 2. **MainScript - First Test.ipynb**

This notebook is used for the initial testing of machine learning models on the sanitized dataset. Key functionalities include:
- Loading the preprocessed dataset and splitting it into training and testing sets.
- Implementing machine learning models.
- Evaluating model performance using standard metrics (e.g., accuracy and precision).
- Visualizing results to identify areas for improvement.

## 3. **MainScript - Data Collection.ipynb**

This notebook focuses on gathering and organizing data for model training. It's similar to the previous script, but it includes some for-loops in order to gather of for each model.

## 4. **MainScript - HyperTuning.ipynb**

This notebook is dedicated to hyperparameter tuning to optimize model performance. It covers:
- Running multiple experiments with different parameter combinations.
- Logging the performance of each model configuration.
- Selecting the best-performing model based on cross-validation results.

## 5. **MainScript - Majority Voting Models.ipynb**

In this notebook, it's implemented ensemble methods, specifically majority voting models. Key components include:
- Training multiple base models on the dataset.
- Combining predictions from these models using a majority voting scheme.
- Evaluating the ensemble’s performance and comparing it with individual models.
   
