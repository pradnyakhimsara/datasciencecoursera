# Code Book for Data Analysed by run_analysis.R 

## Description of Raw data used for the analysis. 
The description snippet has been copied from the features_info.txt provided with the Samsung raw data. 
The features available from the original database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median 
filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal
was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter 
with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, 
tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ,
 fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

More information about these variables can be found in the README.txt and at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
The input data can be obtained at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 


## Analyzed Data Variable Values - 

The estimated mean and standard deviation values of these featuers were used to create the TIDY_DATA.txt
Every row in the tidy data is the mean of each activity for each subject. In all there are 6 activities and 30 subjects leading to 
180 rows of data
The tidy data consists of the following variables - 

"Subject" -- This variable holds the number assigned to each subject. The number ranges from 1 -30 

"Activity" -- This variable holds the activity performed by each subject. The activities can take the following values : 
	LAYING , STANDING , WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING

The following variables are all numeric data
	
"tBodyAcc-mean()-X" -- This column holds the mean of the mean of the body acceleration signal in the X direction for each subject and each activity 

"tBodyAcc-mean()-Y"  -- This column holds the mean of the mean of the body acceleration signal in the Y direction for each subject and each activity 

"tBodyAcc-mean()-Z"  -- This column holds the mean of the mean of the body acceleration signal in the Z direction for each subject and each activity 

"tBodyAcc-std()-X"  -- This column holds the mean of the standard deviation of the body acceleration signal in the X direction for each subject and each activity 

"tBodyAcc-std()-Y"  -- This column holds the mean of the standard deviation of the body acceleration signal in the Y direction for each subject and each activity 

"tBodyAcc-std()-Z" -- This column holds the mean of the standard deviation of the body acceleration signal in the Z direction for each subject and each activity
 
"tGravityAcc-mean()-X" -- This column holds the mean of the mean of the gravity acceleration signal in the X direction for each subject and each activity

"tGravityAcc-mean()-Y"  -- This column holds the mean of the mean of the gravity acceleration signal in the Y direction for each subject and each activity

"tGravityAcc-mean()-Z"  -- This column holds the mean of the mean of the gravity acceleration signal in the Z direction for each subject and each activity

"tGravityAcc-std()-X" -- This column holds the mean of the standard deviation of the gravity acceleration signal in the X direction for each subject and each activity

"tGravityAcc-std()-Y" -- This column holds the mean of the standard deviation of the gravity acceleration signal in the Y direction for each subject and each activity

"tGravityAcc-std()-Z" -- This column holds the mean of the standard deviation of the gravity acceleration signal in the Z direction for each subject and each activity

"tBodyAccJerk-mean()-X" -- This column holds the mean of the mean of the body acceleration jerk signal in the X direction for each subject and each activity

"tBodyAccJerk-mean()-Y" -- This column holds the mean of the mean of the body acceleration jerk signal in the Y direction for each subject and each activity

"tBodyAccJerk-mean()-Z" -- This column holds the mean of the mean of the body acceleration jerk signal in the Z direction for each subject and each activity

"tBodyAccJerk-std()-X" -- This column holds the mean of the standard deviation of the body acceleration jerk signal in the X direction for each subject and each activity 

"tBodyAccJerk-std()-Y" -- This column holds the mean of the standard deviation of the body acceleration jerk signal in the Y direction for each subject and each activity 

"tBodyAccJerk-std()-Z" -- This column holds the mean of the standard deviation of the body acceleration jerk signal in the Z direction for each subject and each activity 

"tBodyGyro-mean()-X" -- This column holds the mean of the mean of the body angular acceleration jerk signal in the X direction for each subject and each activity

"tBodyGyro-mean()-Y" -- This column holds the mean of the mean of the body angular acceleration jerk signal in the Y direction for each subject and each activity

"tBodyGyro-mean()-Z" -- This column holds the mean of the mean of the body angular acceleration jerk signal in the Z direction for each subject and each activity

"tBodyGyro-std()-X" -- This column holds the mean of the standard deviation of the body angular acceleration jerk signal in the X direction for each subject and each activit 

"tBodyGyro-std()-Y" -- This column holds the mean of the standard deviation of the body angular acceleration jerk signal in the Y direction for each subject and each activit

"tBodyGyro-std()-Z" -- This column holds the mean of the standard deviation of the body angular acceleration jerk signal in the Z direction for each subject and each activity 
All other variables also are the mean of each variable for each subject for each activity. 
"tBodyGyroJerk-mean()-X" 
"tBodyGyroJerk-mean()-Y"
 "tBodyGyroJerk-mean()-Z" 
 "tBodyGyroJerk-std()-X" 
 "tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z" 
"tBodyAccMag-mean()" 
"tBodyAccMag-std()" 
"tGravityAccMag-mean()" 
"tGravityAccMag-std()" 
"tBodyAccJerkMag-mean()" 
"tBodyAccJerkMag-std()"
 "tBodyGyroMag-mean()"
 "tBodyGyroMag-std()" 
 "tBodyGyroJerkMag-mean()" 
 "tBodyGyroJerkMag-std()" 
 "fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y" 
"fBodyAcc-mean()-Z"
 "fBodyAcc-std()-X" 
 "fBodyAcc-std()-Y" 
 "fBodyAcc-std()-Z" 
 "fBodyAccJerk-mean()-X" 
 "fBodyAccJerk-mean()-Y" 
"fBodyAccJerk-mean()-Z" 
"fBodyAccJerk-std()-X" 
"fBodyAccJerk-std()-Y" 
"fBodyAccJerk-std()-Z" 
"fBodyGyro-mean()-X" 
"fBodyGyro-mean()-Y" 
"fBodyGyro-mean()-Z" 
"fBodyGyro-std()-X" 
"fBodyGyro-std()-Y" 
"fBodyGyro-std()-Z" 
"fBodyAccMag-mean()" 
"fBodyAccMag-std()"
"fBodyBodyAccJerkMag-mean()" 
"fBodyBodyAccJerkMag-std()" 
"fBodyBodyGyroMag-mean()" 
"fBodyBodyGyroMag-std()" 
"fBodyBodyGyroJerkMag-mean()" 
"fBodyBodyGyroJerkMag-std()"