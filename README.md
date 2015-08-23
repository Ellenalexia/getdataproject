# About

## Warning
This project is schoolwork. It's not optimized, not reviewed, and not flexible. **Do not re-use.**

## What does this project do?

### Overview (homework requirements)
1. Merge training and test sets to create one data set.
2. Extracts for each measurement only the measurements on the mean and standard deviation. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Files and folders
* run_analysis.R is looking for folders named /test and /train
* run_analysis.R is looking for files for subject IDs, activity IDs, and measurements
* file names and syntax are hard-coded for mac/linux (forward slashes)

### Part 1 (STEP 1)

1. Read test data in three chunks: subjects, activities, measurements. There are 561 measurements for each observation.
2. Read train data same as above.
3. Trim whitespace from beginning and end of measurements vector, because dplyr SELECT will use whitespace as separator
4. Use rbind and cbind to join data into dataframe with 3 columns and as many rows as there are observations.

**Note** I did not include inertial signal data because there are no means or std there, and the homework asks to extract "only the measurements on the mean and standard deviation."

### Part 2 (STEPS 2-4)
* Get vector of measurement labels from features.txt
* To deal with duplicate feature names, modify vector of measurement labels to include number, and use make.names to force syntactically valid names for use as column names later.  
* (STEP 2) To extract only mean and std measurements, **select** using contains function
* (STEP 3) To create descriptive activity names, **mutate** to create a new row with labels based on the numeric activity code. 
* (STEP 4) To label with descriptive, **separate** with vector of measurement labels for *into* argument

### Part 3 (STEP 5) 
Homework askes for "a second, independent tidy data set with the average of each variable for each activity and each subject."
* Use **group_by** with grouping on activity and subjectID
* Use **summarise_each** to provide a mean for all the columns that haven't been grouped

# Background

## Why does this project exist?
Script created for Coursera "Getting and Cleaning Data" online class, August 2015.
Course information: https://www.coursera.org/course/getdata 

## What were the goals of the assignment?
Practice implementing principles of preparing and sharing tidy data. 
Professor Leek's guide: https://github.com/jtleek/datasharing

## What's up with the raw data?

See the CODEBOOK.md

### Citation and source for original data
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
