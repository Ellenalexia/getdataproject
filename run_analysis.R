## Created for Coursera :: Getting and Cleaning Data ::
## August 2015
## Peer evaluators: note that data is "wide."
## Please see README.md for more explanation

library(dplyr)
library(stringr)

## STEP 1 : Merge training and test sets to create one data set.

testSubjects <- read.csv("test/subject_test.txt", header=FALSE, col.names = c("subjectID"))
testActivityCodes <- read.csv("test/y_test.txt", header=FALSE, col.names = c("activityID"))
testMeasurements <- read.csv("test/X_test.txt", header=FALSE, col.names = c("measurements"), 
                             stringsAsFactors=FALSE)
trainSubjects <- read.csv("train/subject_train.txt", header=FALSE, col.names = c("subjectID"))
trainActivityCodes <- read.csv("train/y_train.txt", header=FALSE, col.names = c("activityID"))
trainMeasurements <- read.csv("train/X_train.txt", header=FALSE, col.names = c("measurements"), 
                              stringsAsFactors=FALSE)

testdata <- cbind(testSubjects,testActivityCodes,lapply(testMeasurements,trimws))
traindata <- cbind(trainSubjects,trainActivityCodes,lapply(trainMeasurements,trimws))

mergedData <- rbind(testdata,traindata)

## get names  of the features + deal with dups.
measurementLabels <- read.csv("features.txt", header=FALSE, sep=" ",stringsAsFactors = FALSE)
measurementLabels$V3 <- make.names(paste(measurementLabels$V2,measurementLabels$V1), unique=TRUE)

## get names of activities (could use file, but hard-coding makes it easier to read)
activityLabels <- c('WALKING','WALKING_UPSTAIRS','WALKING_DOWNSTAIRS','SITTING','STANDING','LAYING')

## use dplyr package functions because they are more like sql
mergedDataTable <- tbl_df(mergedData)

tidyMeanDataTable <-
  mergedDataTable %>%
## STEP 4: Appropriately label the data set with descriptive variable names.
  separate(measurements,
           into = measurementLabels$V3, remove = TRUE, sep="[:space:]+", convert = TRUE, extra = "drop") %>%
## STEP 3: Use descriptive activity names to name the activities in the data set
  mutate(activity = activityLabels[activityID]) %>%
## STEP 2: Extract for each measurement only the measurements on the mean and standard deviation.
  select(subjectID,activity,contains("std"),contains("mean")) %>%
## STEP 5: Create a 2nd tidy data set w/ average of each variable for each activity and each subject.
  group_by(activity,subjectID) %>%
  summarise_each(funs(mean))

## PROJECT PART 1 'Please upload your data set as a txt file created with...'
  write.table(tidyMeanDataTable, file="tidyMeans.txt", sep=",", row.name=FALSE, col.names=TRUE)