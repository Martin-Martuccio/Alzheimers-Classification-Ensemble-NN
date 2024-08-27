
# Data Description

## Data Source

The dataset used in this project was sourced from Kaggle and includes MRI scans from various sources. The data was collected from multiple datasets to ensure diversity and robustness in the model training and evaluation.

## Data Processing

The raw MRI scan data underwent several preprocessing steps to prepare it for training, validation, and testing:

1. **Sanitization**: The data was cleaned to remove any inconsistencies or errors, ensuring that only high-quality images were used for model training.

2. **Resizing**: All MRI scans were resized to a uniform dimension of 128x128 pixels. This standardization is crucial for ensuring that all images are of the same size, facilitating efficient model training and evaluation.

3. **Normalization**: The pixel values of the images were normalized to bring them within a standard range, improving the model's ability to learn from the data.

4. **Data Splitting**: The dataset was divided into three subsets:
   - **Training Set**: Used to train the models.
   - **Validation Set**: Used to tune hyperparameters and validate model performance during training.
   - **Test Set**: Used to evaluate the final performance of the model.

## Data Augmentation

To enhance the training process and improve model generalization, various data augmentation techniques were employed:

1. **Synthetic Data Generation**: Techniques were used to create new, synthetic variations of the existing images. This includes transformations such as rotation, flipping, and scaling to increase the diversity of the training data.

2. **Overfitting Prevention**: Data augmentation helped mitigate overfitting by providing a broader range of examples for the model to learn from, reducing the risk of the model memorizing the training data.

3. **Combination Exploration**: Multiple augmentation techniques were experimented with to find the optimal combination that enhances model performance. This includes various approaches to determine which augmentations are most beneficial for improving accuracy and robustness.

## Scripts

Several scripts were used throughout the data preprocessing and augmentation process.
These scripts can be found in the `/src/` directory of this repository.

