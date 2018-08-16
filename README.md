---
title: "README"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Getting and Cleaning Data : Final Assignment


Project based on Human Activity Recognition Using Smartphones Dataset, Version 1.0

See:
 * http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 * https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Author : Jean-Francois Hetu (2018)

###   This file explains how all of the scripts work and how they are connected.

There is one script run_analysis( (in run_analysis.R) that executes the following tasks and returns the required datasets in tabls (tbl):

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

run_analysis() must be executed in the directory containing the raw dataset, respecting the following file structure:

* 'run_analysis.R'    : R script 
* 'README.md'        : This file
* 'CodeBook.md'       : CodeBook describing variables, data and transformation
* 'UCI HAR Dataset/'  : Raw data set
  + 'train/	'		
  + 'train/X_train.txt': Training set.
  + 'train/y_train.txt': Training labels.
  + 'train/subject_train.txt': subject labels
  + 'test/'
  + 'test/X_test.txt': Test set.
  + 'test/y_test.txt': Test labels.
  + 'test/subject_train.txt': subject labels
  + features_info.txt	
  + activity_labels.txt
  + features.txt		
  + README.txt
  
  ### How to use the script
  
  * run_analysis() : function that reads the raw data and create two tidy datasets 
  
  Execute the followings
  * source(run_analysis.R)
  * d <- run_analysis()
  
  1. 'd' is a list with two tables (tbl): list[ meanstd, mean]
  
  1.1 'd\$meanstd' contains tidy table of average and standard deviation of each variable for each activity and each subject.
  
  1.2 'd\$mean' contains tidy table of average of each variable for each activity and each subject.
  
