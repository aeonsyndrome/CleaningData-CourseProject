# You should create one R script called run_analysis.R that does the following. 
# Merges the training and the test sets to create one data set.
# Extracts only the measurements on the mean and standard deviation for each measurement. 
# Uses descriptive activity names to name the activities in the data set
# Appropriately labels the data set with descriptive variable names. 
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Also fill in README.md and CODEBOOK.md


## Definitions


## Libraries
library(dplyr)

## Load data
x_train    <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
y_train    <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
subj_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
x_test     <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
y_test     <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
subj_test  <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activities <- read.table("UCI HAR Dataset/activity_labels.txt",header = FALSE)
