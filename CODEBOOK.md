# Codebook
## Citation and source for original data
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Variables
Tidy data set includes:
* Subject ID
* Activity
* Means of original measurements that were means and standard deviations. See variable list below.

## Summary

The original data are human movement measurements from a smartphone taken in 2012.

Specifically:
* 30 volunteers ages 19-48 years
* 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
* Smartphone (Samsung Galaxy S II) worn on the waist 

Using phone's embedded accelerometer and gyroscope, scientists captured 
* 3-axial linear acceleration and 
* 3-axial angular velocity 
* at a constant rate of 50Hz
These measurements are provided in a "561-feature vector with time and frequency domain variables"

## Study Design
See original data source for more information about the study.

## Variable list
* Numeric endings correspond to original column placement in source data.
activity (values include: 'WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING')
subjectID
tBodyAcc.std...X.4
tBodyAcc.std...Y.5
tBodyAcc.std...Z.6
tGravityAcc.std...X.44
tGravityAcc.std...Y.45
tGravityAcc.std...Z.46
tBodyAccJerk.std...X.84
tBodyAccJerk.std...Y.85
tBodyAccJerk.std...Z.86
tBodyGyro.std...X.124
tBodyGyro.std...Y.125
tBodyGyro.std...Z.126
tBodyGyroJerk.std...X.164
tBodyGyroJerk.std...Y.165
tBodyGyroJerk.std...Z.166
tBodyAccMag.std...202
tGravityAccMag.std...215
tBodyAccJerkMag.std...228
tBodyGyroMag.std...241
tBodyGyroJerkMag.std...254
fBodyAcc.std...X.269
fBodyAcc.std...Y.270
fBodyAcc.std...Z.271
fBodyAccJerk.std...X.348
fBodyAccJerk.std...Y.349
fBodyAccJerk.std...Z.350
fBodyGyro.std...X.427
fBodyGyro.std...Y.428
fBodyGyro.std...Z.429
fBodyAccMag.std...504
fBodyBodyAccJerkMag.std...517
fBodyBodyGyroMag.std...530
fBodyBodyGyroJerkMag.std...543
tBodyAcc.mean...X.1
tBodyAcc.mean...Y.2
tBodyAcc.mean...Z.3
tGravityAcc.mean...X.41
tGravityAcc.mean...Y.42
tGravityAcc.mean...Z.43
tBodyAccJerk.mean...X.81
tBodyAccJerk.mean...Y.82
tBodyAccJerk.mean...Z.83
tBodyGyro.mean...X.121
tBodyGyro.mean...Y.122
tBodyGyro.mean...Z.123
tBodyGyroJerk.mean...X.161
tBodyGyroJerk.mean...Y.162
tBodyGyroJerk.mean...Z.163
tBodyAccMag.mean...201
tGravityAccMag.mean...214
tBodyAccJerkMag.mean...227
tBodyGyroMag.mean...240
tBodyGyroJerkMag.mean...253
fBodyAcc.mean...X.266
fBodyAcc.mean...Y.267
fBodyAcc.mean...Z.268
fBodyAcc.meanFreq...X.294
fBodyAcc.meanFreq...Y.295
fBodyAcc.meanFreq...Z.296
fBodyAccJerk.mean...X.345
fBodyAccJerk.mean...Y.346
fBodyAccJerk.mean...Z.347
fBodyAccJerk.meanFreq...X.373
fBodyAccJerk.meanFreq...Y.374
fBodyAccJerk.meanFreq...Z.375
fBodyGyro.mean...X.424
fBodyGyro.mean...Y.425
fBodyGyro.mean...Z.426
fBodyGyro.meanFreq...X.452
fBodyGyro.meanFreq...Y.453
fBodyGyro.meanFreq...Z.454
fBodyAccMag.mean...503
fBodyAccMag.meanFreq...513
fBodyBodyAccJerkMag.mean...516
fBodyBodyAccJerkMag.meanFreq...526
fBodyBodyGyroMag.mean...529
fBodyBodyGyroMag.meanFreq...539
fBodyBodyGyroJerkMag.mean...542
fBodyBodyGyroJerkMag.meanFreq...552
angle.tBodyAccMean.gravity..555
angle.tBodyAccJerkMean..gravityMean..556
angle.tBodyGyroMean.gravityMean..557
angle.tBodyGyroJerkMean.gravityMean..558
angle.X.gravityMean..559
angle.Y.gravityMean..560
angle.Z.gravityMean..561