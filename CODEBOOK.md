## Course Project Codebook

### Description of the files in this repository

The files used in this project can be download by following this [link](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). The scripts in this repo assumes these files (in the `UCI HAR Dataset` folder) are located in your working directory.

Use `source(run_analysis.R)` to run the script. The code will do the following actions

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set 
4. Appropriately labels the data set with descriptive variable names.  
5. From the data set `tidy` in step 4, creates a second, independent tidy data set `tidy_average` with the average of each variable for each activity and each subject, and saves it to `tidy_data.txt`.

### Source Data Information

The data used in this project represents data collected from the accelerometers from a Samsung Galaxy S smartphone during various physical experiments.The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

The phone recorded acceleration and velocity in each of three dimensions (X, Y, and Z) at 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

A full description is available [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### Resulting Data Information

The final tidy data table can be found in `tidy_data.txt` in a space-seperated text file. The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The full list of features, for each subject/activity combination (human readable):

- "tBodyAcc-mean-X"              
- "tBodyAcc-mean-Y"              
- "tBodyAcc-mean-Z"              
- "tBodyAcc-std-X"               
- "tBodyAcc-std-Y"               
- "tBodyAcc-std-Z"               
- "tGravityAcc-mean-X"           
- "tGravityAcc-mean-Y"           
- "tGravityAcc-mean-Z"           
- "tGravityAcc-std-X"            
- "tGravityAcc-std-Y"            
- "tGravityAcc-std-Z"            
- "tBodyAccJerk-mean-X"          
- "tBodyAccJerk-mean-Y"          
- "tBodyAccJerk-mean-Z"          
- "tBodyAccJerk-std-X"           
- "tBodyAccJerk-std-Y"           
- "tBodyAccJerk-std-Z"           
- "tBodyGyro-mean-X"             
- "tBodyGyro-mean-Y"             
- "tBodyGyro-mean-Z"             
- "tBodyGyro-std-X"              
- "tBodyGyro-std-Y"              
- "tBodyGyro-std-Z"              
- "tBodyGyroJerk-mean-X"         
- "tBodyGyroJerk-mean-Y"         
- "tBodyGyroJerk-mean-Z"         
- "tBodyGyroJerk-std-X"          
- "tBodyGyroJerk-std-Y"          
- "tBodyGyroJerk-std-Z"          
- "tBodyAccMag-mean"             
- "tBodyAccMag-std"              
- "tGravityAccMag-mean"          
- "tGravityAccMag-std"           
- "tBodyAccJerkMag-mean"         
- "tBodyAccJerkMag-std"          
- "tBodyGyroMag-mean"            
- "tBodyGyroMag-std"             
- "tBodyGyroJerkMag-mean"        
- "tBodyGyroJerkMag-std"         
- "fBodyAcc-mean-X"              
- "fBodyAcc-mean-Y"              
- "fBodyAcc-mean-Z"              
- "fBodyAcc-std-X"               
- "fBodyAcc-std-Y"               
- "fBodyAcc-std-Z"               
- "fBodyAcc-meanFreq-X"          
- "fBodyAcc-meanFreq-Y"          
- "fBodyAcc-meanFreq-Z"          
- "fBodyAccJerk-mean-X"          
- "fBodyAccJerk-mean-Y"          
- "fBodyAccJerk-mean-Z"          
- "fBodyAccJerk-std-X"           
- "fBodyAccJerk-std-Y"           
- "fBodyAccJerk-std-Z"           
- "fBodyAccJerk-meanFreq-X"      
- "fBodyAccJerk-meanFreq-Y"      
- "fBodyAccJerk-meanFreq-Z"      
- "fBodyGyro-mean-X"             
- "fBodyGyro-mean-Y"             
- "fBodyGyro-mean-Z"             
- "fBodyGyro-std-X"              
- "fBodyGyro-std-Y"              
- "fBodyGyro-std-Z"              
- "fBodyGyro-meanFreq-X"         
- "fBodyGyro-meanFreq-Y"         
- "fBodyGyro-meanFreq-Z"         
- "fBodyAccMag-mean"             
- "fBodyAccMag-std"              
- "fBodyAccMag-meanFreq"         
- "fBodyBodyAccJerkMag-mean"     
- "fBodyBodyAccJerkMag-std"      
- "fBodyBodyAccJerkMag-meanFreq" 
- "fBodyBodyGyroMag-mean"        
- "fBodyBodyGyroMag-std"         
- "fBodyBodyGyroMag-meanFreq"    
- "fBodyBodyGyroJerkMag-mean"    
- "fBodyBodyGyroJerkMag-std"     
- "fBodyBodyGyroJerkMag-meanFreq"