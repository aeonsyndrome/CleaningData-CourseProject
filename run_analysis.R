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

## Load features and activities
activities <- read.table("UCI HAR Dataset/activity_labels.txt",header = FALSE,col.names =c("ID","Activity"))
features   <- read.table("UCI HAR Dataset/features.txt",header = FALSE)
print("Finished loading data")

## Merge training and test data
x_merged <- rbind(x_train,x_test)
y_merged <- rbind(y_train,y_test)
subj_merged <- rbind (subj_train,subj_test)
rm(x_train,y_train,subj_train,x_test,y_test,subj_test)
print("Merged training and test data")

## Replace Activity labels and Features/Metrics in merged data
features[,2] <- gsub("\\(","",features[,2])
features[,2] <- gsub("\\)","",features[,2])
features[,2] <- gsub(",","-",features[,2])
colnames(x_merged) <- features[,2]
y_merged <- merge(y_merged,activities, by.x="V1",by.y="ID") 
y_merged <- select(y_merged,Activity)

## Combine all data and cleanup
tidy <- cbind(subj_merged, y_merged, x_merged)
rm(subj_merged, y_merged, x_merged)