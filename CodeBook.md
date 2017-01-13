# CodeBook

This is a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.

## The data source

* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## The data

The dataset includes the following files:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

## Variables

### Measurements

*`subject` 
*`Activity_Label` 
*`tBodyAcc-mean()-X` 
*`tBodyAcc-mean()-Y`
*`tBodyAcc-mean()-Z` 
*`tBodyAcc-std()-X` 
*`tBodyAcc-std()-Y` 
*`tBodyAcc-std()-Z` 
*`tGravityAcc-mean()-X` 
*`tGravityAcc-mean()-Y` 
*`tGravityAcc-mean()-Z` 
*`tGravityAcc-std()-X` 
*`tGravityAcc-std()-Y` 
*`tGravityAcc-std()-Z` 
*`tBodyAccJerk-mean()-X` 
*`tBodyAccJerk-mean()-Y` 
*`tBodyAccJerk-mean()-Z` 
*`tBodyAccJerk-std()-X` 
*`tBodyAccJerk-std()-Y` 
*`tBodyAccJerk-std()-Z` 
*`tBodyGyro-mean()-X` 
*`tBodyGyro-mean()-Y` 
*`tBodyGyro-mean()-Z` 
*`tBodyGyro-std()-X` 
*`tBodyGyro-std()-Y` 
*`tBodyGyro-std()-Z` 
*`tBodyGyroJerk-mean()-X` 
*`tBodyGyroJerk-mean()-Y` 
*`tBodyGyroJerk-mean()-Z` 
*`tBodyGyroJerk-std()-X` 
*`tBodyGyroJerk-std()-Y` 
*`tBodyGyroJerk-std()-Z` 
*`tBodyAccMag-mean()` 
*`tBodyAccMag-std()` 
*`tGravityAccMag-mean()` 
*`tGravityAccMag-std()` 
*`tBodyAccJerkMag-mean()` 
*`tBodyAccJerkMag-std()` 
*`tBodyGyroMag-mean()` 
*`tBodyGyroMag-std()` 
*`tBodyGyroJerkMag-mean()` 
*`tBodyGyroJerkMag-std()` 
*`fBodyAcc-mean()-X` 
*`fBodyAcc-mean()-Y` 
*`fBodyAcc-mean()-Z` 
*`fBodyAcc-std()-X` 
*`fBodyAcc-std()-Y` 
*`fBodyAcc-std()-Z` 
*`fBodyAcc-meanFreq()-X` 
*`fBodyAcc-meanFreq()-Y` 
*`fBodyAcc-meanFreq()-Z` 
*`fBodyAccJerk-mean()-X` 
*`fBodyAccJerk-mean()-Y` 
*`fBodyAccJerk-mean()-Z` 
*`fBodyAccJerk-std()-X` 
*`fBodyAccJerk-std()-Y` 
*`fBodyAccJerk-std()-Z` 
*`fBodyAccJerk-meanFreq()-X` 
*`fBodyAccJerk-meanFreq()-Y` 
*`fBodyAccJerk-meanFreq()-Z` 
*`fBodyGyro-mean()-X` 
*`fBodyGyro-mean()-Y` 
*`fBodyGyro-mean()-Z` 
*`fBodyGyro-std()-X` 
*`fBodyGyro-std()-Y` 
*`fBodyGyro-std()-Z` 
*`fBodyGyro-meanFreq()-X` 
*`fBodyGyro-meanFreq()-Y` 
*`fBodyGyro-meanFreq()-Z` 
*`fBodyAccMag-mean()` 
*`fBodyAccMag-std()` 
*`fBodyAccMag-meanFreq()` 
*`fBodyBodyAccJerkMag-mean()` 
*`fBodyBodyAccJerkMag-std()` 
*`fBodyBodyAccJerkMag-meanFreq()` 
*`fBodyBodyGyroMag-mean()` 
*`fBodyBodyGyroMag-std()` 
*`fBodyBodyGyroMag-meanFreq()` 
*`fBodyBodyGyroJerkMag-mean()` 
*`fBodyBodyGyroJerkMag-std()` 
*`fBodyBodyGyroJerkMag-meanFreq()`

### Activity Labels

* `WALKING` 
* `WALKING_UPSTAIRS` 
* `WALKING_DOWNSTAIRS` 
* `SITTING` 
* `STANDING` 
* `LAYING` 

## Transformation details

There are 5 parts:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How ```run_analysis.R``` implements the above steps:

* Require ```reshapre2``` and ```data.table``` librareis.
* Load both test and train data
* Load the features and activity labels.
* Extract the mean and standard deviation column names and data.
* Process the data. There are two parts processing test and train data respectively.
* Merge data set.