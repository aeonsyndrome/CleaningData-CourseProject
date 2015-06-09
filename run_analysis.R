## This file contains the code necessary to complete the Course Project for
## Coursera's Getting and Cleaning Data course.
## Please see README.md and CODEBOOK.md for more information

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
subj_merged <- rbind(subj_train,subj_test)
rm(x_train,y_train,subj_train,x_test,y_test,subj_test)
print("Merged training and test data")

## Replace Activity labels and Features/Metrics in merged data
features[,2] <- gsub("\\(","",features[,2])
features[,2] <- gsub("\\)","",features[,2])
features[,2] <- gsub(",","-",features[,2])
subj_merged <- rename(subj_merged, Subject = V1)
colnames(x_merged) <- features[,2]
y_merged <- merge(y_merged,activities, by.x="V1",by.y="ID")
y_merged <- select(y_merged,Activity)
print("Finished cleaning")

## Subset only columns with mean or std
meanstd_columns <- names(x_merged[,grep("mean|std", names(x_merged))])
x_merged <- x_merged[,meanstd_columns]

## Combine all data and cleanup
tidy <- cbind(subj_merged, y_merged, x_merged)
rm(subj_merged, y_merged, x_merged, activities, features, meanstd_columns)

## Create tidy set with average of each variable by activity & subject (related: dplyr rocks!)
tidy_average <- summarise_each(group_by(tidy, Activity, Subject),funs(mean))

## Write to file, all done!
write.table(tidy_average,"tidy_data.txt",row.names=FALSE)