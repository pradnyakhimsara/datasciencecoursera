## This code imports all the datasets contained in the UCI HAR data folder. 
## The required data is extracted and merged. Variable names are assigned.
## Each record is also assigned activity label.Finally , the data is summarised 
## by the mean of each variable name, for each activity for each subject.
library(dplyr)
## Constructing folder paths
mainDir = getwd()
testDir = paste(mainDir, "/test/", sep ="")
trainDir = paste(mainDir, "/train/", sep = "")

## Importing required data
activityLabel <- read.table(paste(mainDir, "/activity_labels.txt", sep = ""), sep = "", stringsAsFactors = FALSE )
features <- read.table(paste(mainDir, "/features.txt", sep = ""), sep = "", stringsAsFactors = FALSE)
s_test <- read.table(paste(testDir, "subject_test.txt", sep = ""), sep = "")
x_test <- read.table(paste(testDir, "x_test.txt", sep = ""), sep = "")
y_test <- read.table(paste(testDir, "y_test.txt", sep = ""), sep = "")
s_train <- read.table(paste(trainDir, "subject_train.txt", sep = ""), sep = "")
x_train <- read.table(paste(trainDir, "x_train.txt", sep = ""), sep = "")
y_train <- read.table(paste(trainDir, "y_train.txt", sep = ""), sep = "")

## STEP 1 & 2
## Finding the indices of mean and std dev columns  
mean_idx <-  grep("mean()", features[,2], value = FALSE, fixed = TRUE)
std_idx <- grep("std()", features[,2], value = FALSE, fixed = TRUE)
all_idx <- sort(c(mean_idx, std_idx))
req_features <- features[all_idx, 2]

## Extracting the required columns from the training and testing sets 
req_x_test <- x_test[,all_idx]
req_x_train <- x_train [,all_idx]

## Merging the all the datasets together
all_test <- cbind(s_test, y_test, req_x_test)
all_train <- cbind(s_train, y_train , req_x_train)
all_data <- rbind(all_test, all_train)

## STEP 3 & 4
## Assigning Variable Names to each Column and the activity label to each row
colnames(all_data) <- c("Subject", "Activity", req_features)
all_data_labeled <- mutate(all_data, Activity = activityLabel[Activity,2]) 

## STEP 5
## Finding the mean of each variable for each activity performed by each subject and outputting
## the data as a text file
final_data <- all_data_labeled%>%group_by(Subject, Activity)%>%summarise_each(funs(mean))
write.table(final_data, paste(mainDir,"/tidy_data.txt", sep =""), 
            row.names = FALSE)

## THE END