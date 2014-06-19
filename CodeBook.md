##Code Book:

The "run_analysis.R" script generates a tidy data set (avg.merged.data.set.csv) using the data set provided (UCI HAR Dataset) in the Getting and Cleaning Data Course Project. 

###Data set information :

The variables & observations in the tidy data set (avg.merged.data.set.csv) are fetched from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

###Important Notes: 
1. The above data set information is referenced from 'features_info.txt' file of the UCI HAR Dataset.
2. meanFreq() variables are excluded from the tidy data set as from the project description asks us to extract only the measurements on the mean and standard deviation for each measurement and it's not clear if meanFreq() variables need to be included. 

There are 68 variables and 180 observations in the tidy data set (avg.merged.data.set.csv). There are total 30 subjects and 6 activities. Average of each variable for each activity and each subject is provided in the tidy data set. Top row is header. 

Description of all the variables in the tidy data set is given in the table below.

1 | subject | int | Identifies the subject who performed the activity. Its range is  from 1 to 30.


###References:
        
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
