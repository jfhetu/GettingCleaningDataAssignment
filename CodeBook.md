# Additions to original CodeBook

this section describes the variables, the data, and any transformations or work that you performed to clean up the data.
The original cookbook is appended in the following section.

## Variables
d <- run_analysis() returns a list containing 2 tables (dplyt::tbl) : d[meanstd, mean]

### meanstd is a table (tbl) containig the following variables:

Variable[1]: subject is the identifier of the subject  

Variable[2]: activity is the identifier of the activity

Variables[3:55]: Mean and standard eviation of triaxial accelerations from the accelerometer (total acceleration), the estimated body acceleration, triaxial Angular velocity from the gyroscope.

```
[1] "subject"                              "activity"                             "tbodyacc-mean()-x"                   
 [4] "tbodyacc-mean()-y"                    "tbodyacc-mean()-z"                    "tbodyacc-std()-x"                    
 [7] "tbodyacc-std()-y"                     "tbodyacc-std()-z"                     "tgravityacc-mean()-x"                
[10] "tgravityacc-mean()-y"                 "tgravityacc-mean()-z"                 "tgravityacc-std()-x"                 
[13] "tgravityacc-std()-y"                  "tgravityacc-std()-z"                  "tbodyaccjerk-mean()-x"               
[16] "tbodyaccjerk-mean()-y"                "tbodyaccjerk-mean()-z"                "tbodyaccjerk-std()-x"                
[19] "tbodyaccjerk-std()-y"                 "tbodyaccjerk-std()-z"                 "tbodygyro-mean()-x"                  
[22] "tbodygyro-mean()-y"                   "tbodygyro-mean()-z"                   "tbodygyro-std()-x"                   
[25] "tbodygyro-std()-y"                    "tbodygyro-std()-z"                    "tbodygyrojerk-mean()-x"              
[28] "tbodygyrojerk-mean()-y"               "tbodygyrojerk-mean()-z"               "tbodygyrojerk-std()-x"               
[31] "tbodygyrojerk-std()-y"                "tbodygyrojerk-std()-z"                "tbodyaccmag-mean()"                  
[34] "tbodyaccmag-std()"                    "tgravityaccmag-mean()"                "tgravityaccmag-std()"                
[37] "tbodyaccjerkmag-mean()"               "tbodyaccjerkmag-std()"                "tbodygyromag-mean()"                 
[40] "tbodygyromag-std()"                   "tbodygyrojerkmag-mean()"              "tbodygyrojerkmag-std()"              
[43] "fbodyacc-mean()-x"                    "fbodyacc-mean()-y"                    "fbodyacc-mean()-z"                   
[46] "fbodyacc-std()-x"                     "fbodyacc-std()-y"                     "fbodyacc-std()-z"                    
[49] "fbodyacc-meanfreq()-x"                "fbodyacc-meanfreq()-y"                "fbodyacc-meanfreq()-z"               
[52] "fbodyaccjerk-mean()-x"                "fbodyaccjerk-mean()-y"                "fbodyaccjerk-mean()-z"               
[55] "fbodyaccjerk-std()-x"                 "fbodyaccjerk-std()-y"                 "fbodyaccjerk-std()-z"                
[58] "fbodyaccjerk-meanfreq()-x"            "fbodyaccjerk-meanfreq()-y"            "fbodyaccjerk-meanfreq()-z"           
[61] "fbodygyro-mean()-x"                   "fbodygyro-mean()-y"                   "fbodygyro-mean()-z"                  
[64] "fbodygyro-std()-x"                    "fbodygyro-std()-y"                    "fbodygyro-std()-z"                   
[67] "fbodygyro-meanfreq()-x"               "fbodygyro-meanfreq()-y"               "fbodygyro-meanfreq()-z"              
[70] "fbodyaccmag-mean()"                   "fbodyaccmag-std()"                    "fbodyaccmag-meanfreq()"              
[73] "fbodybodyaccjerkmag-mean()"           "fbodybodyaccjerkmag-std()"            "fbodybodyaccjerkmag-meanfreq()"      
[76] "fbodybodygyromag-mean()"              "fbodybodygyromag-std()"               "fbodybodygyromag-meanfreq()"         
[79] "fbodybodygyrojerkmag-mean()"          "fbodybodygyrojerkmag-std()"           "fbodybodygyrojerkmag-meanfreq()"     
[82] "angle(tbodyaccmean,gravity)"          "angle(tbodyaccjerkmean),gravitymean)" "angle(tbodygyromean,gravitymean)"    
[85] "angle(tbodygyrojerkmean,gravitymean)" "angle(x,gravitymean)"                 "angle(y,gravitymean)"                
[88] "angle(z,gravitymean)"
```
 

### mean contains:

Variable[1]: subject is the identifier of the subject  

Variable[2]: activity is the identifier of the activity

Variables[3:55]: Mean riaxial accelerations from the accelerometer (total acceleration), the estimated body acceleration, triaxial Angular velocity from the gyroscope. 


```
 [1] "subject"                              "activity"                             "tbodyacc-mean()-x"                   
 [4] "tbodyacc-mean()-y"                    "tbodyacc-mean()-z"                    "tgravityacc-mean()-x"                
 [7] "tgravityacc-mean()-y"                 "tgravityacc-mean()-z"                 "tbodyaccjerk-mean()-x"               
[10] "tbodyaccjerk-mean()-y"                "tbodyaccjerk-mean()-z"                "tbodygyro-mean()-x"                  
[13] "tbodygyro-mean()-y"                   "tbodygyro-mean()-z"                   "tbodygyrojerk-mean()-x"              
[16] "tbodygyrojerk-mean()-y"               "tbodygyrojerk-mean()-z"               "tbodyaccmag-mean()"                  
[19] "tgravityaccmag-mean()"                "tbodyaccjerkmag-mean()"               "tbodygyromag-mean()"                 
[22] "tbodygyrojerkmag-mean()"              "fbodyacc-mean()-x"                    "fbodyacc-mean()-y"                   
[25] "fbodyacc-mean()-z"                    "fbodyacc-meanfreq()-x"                "fbodyacc-meanfreq()-y"               
[28] "fbodyacc-meanfreq()-z"                "fbodyaccjerk-mean()-x"                "fbodyaccjerk-mean()-y"               
[31] "fbodyaccjerk-mean()-z"                "fbodyaccjerk-meanfreq()-x"            "fbodyaccjerk-meanfreq()-y"           
[34] "fbodyaccjerk-meanfreq()-z"            "fbodygyro-mean()-x"                   "fbodygyro-mean()-y"                  
[37] "fbodygyro-mean()-z"                   "fbodygyro-meanfreq()-x"               "fbodygyro-meanfreq()-y"              
[40] "fbodygyro-meanfreq()-z"               "fbodyaccmag-mean()"                   "fbodyaccmag-meanfreq()"              
[43] "fbodybodyaccjerkmag-mean()"           "fbodybodyaccjerkmag-meanfreq()"       "fbodybodygyromag-mean()"             
[46] "fbodybodygyromag-meanfreq()"          "fbodybodygyrojerkmag-mean()"          "fbodybodygyrojerkmag-meanfreq()"     
[49] "angle(tbodyaccmean,gravity)"          "angle(tbodyaccjerkmean),gravitymean)" "angle(tbodygyromean,gravitymean)"    
[52] "angle(tbodygyrojerkmean,gravitymean)" "angle(x,gravitymean)"                 "angle(y,gravitymean)"                
[55] "angle(z,gravitymean)" 
```


### Transformations

The following transformations have been applied to create the tidy datasets:

1. For training data: reading of activity, subjects and accelerometers data into 3 separate data.frames  
  + create a single training dataset that merges the 3 data.frames into 1 (dplyt::tbl)  
  + read variables names, convert them to lowercase  
  + assign variable names to training tbl   
2. For test data: reading of activity, subjects and accelerometers data into 3 separate data.frames  
  + create a single test dataset that merges the 3 data.frames into 1 (dplyt::tbl)  
  + read variables names, convert them to lowercase  
  + assign variable names to test tbl  
3. merge by rows the training and test tbl  into a single 'data.all' dataset  
4. Identify all mean and std variables from variable names (using select(data.all, subject, activity, matches("mean|std")))  
5. create a new dataset with activity, subject and all "mean" or "std" variables.  create a new dataset with activity, subject and all "mean" or "std" variables.  
6. Identify all mean and std variables from variable names (using select(data.all, subject, activity, matches("mean")))  
7. create a new dataset with activity, subject and all "mean"  variables.  
8. return list[ meanstd, mean] of datasets  

#Original Cookbook 

```
==================================================================  
Human Activity Recognition Using Smartphones Dataset  
Version 1.0  
==================================================================  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Universit‡ degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws  
==================================================================  
```
```
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
```

```
For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
```
```
The dataset includes the following files:
=========================================

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
```
```
Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws
```
```
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
```
 