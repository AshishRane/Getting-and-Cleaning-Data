##Code Book

The "run_analysis.R" script generates a tidy data set (avg.merged.data.set.csv) using the data set provided (UCI HAR Dataset) in the Getting and Cleaning Data Course Project. 

###Data set information:

The variables & observations in the tidy data set (avg.merged.data.set.csv) are fetched from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

###Important Notes: 
1. The above data set information is referenced from 'features_info.txt' file of the UCI HAR Dataset.
2. meanFreq() variables are excluded from the tidy data set as from the project description asks us to extract only the measurements on the mean and standard deviation for each measurement and it's not clear if meanFreq() variables need to be included. 

There are 68 variables and 180 observations in the tidy data set (avg.merged.data.set.csv). There are total 30 subjects and 6 activities. Average of each variable for each activity and each subject is provided in the tidy data set. Top row is header. 

###Variables Description:

Description of all the variables in the tidy data set is given below :

* Subject  - Identifies the subject who performed the activity (Range - 1 to 30)
* Activity - Name of the activity (Total 6 activities : WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
* tBodyAcc-mean()-X  -   Average of the tBodyAcc Mean X values
* tBodyAcc-mean()-Y  - Average of the tBodyAcc Mean Y values
* tBodyAcc-mean()-Z  - Average of the tBodyAcc Mean Z values
* tBodyAcc-std()-X  - Average of the tBodyAcc Standard Deviation X values
* tBodyAcc-std()-Y  - Average of the tBodyAcc Standard Deviation Y values
* tBodyAcc-std()-Z  - Average of the tBodyAcc Standard Deviation Z values
* tGravityAcc-mean()-X - Average of the tGravityAcc Mean X values
* tGravityAcc-mean()-Y - Average of the tGravityAcc Mean Y values 
* tGravityAcc-mean()-Z - Average of the tGravityAcc Mean Z values
* tGravityAcc-std()-X  - Average of the tGravityAcc Standard Deviation X values
* tGravityAcc-std()-Y  - Average of the tGravityAcc Standard Deviation Y values
* tGravityAcc-std()-Z  - Average of the tGravityAcc Standard Deviation Z values
* tBodyAccJerk-mean()-X  - Average of the tBodyAccJerk Mean X values
* tBodyAccJerk-mean()-Y  - Average of the tBodyAccJerk Mean Y values
* tBodyAccJerk-mean()-Z  - Average of the tBodyAccJerk Mean Z values
* tBodyAccJerk-std()-X  - Average of the tBodyAccJerk Standard Deviation X values
* tBodyAccJerk-std()-Y  - Average of the tBodyAccJerk Standard Deviation Y values
* tBodyAccJerk-std()-Z  - Average of the tBodyAccJerk Standard Deviation Z values
* tBodyGyro-mean()-X  - Average of the tBodyGyro Mean X values
* tBodyGyro-mean()-Y  - Average of the tBodyGyro Mean Y values
* tBodyGyro-mean()-Z  - Average of the tBodyGyro Mean Z values
* tBodyGyro-std()-X  - Average of the tBodyGyro Standard Deviation X values
* tBodyGyro-std()-Y  - Average of the tBodyGyro Standard Deviation Y values
* tBodyGyro-std()-Z  - Average of the tBodyGyro Standard Deviation Z values
* tBodyGyroJerk-mean()-X - Average of the tBodyGyroJerk Mean X values 
* tBodyGyroJerk-mean()-Y - Average of the tBodyGyroJerk Mean Y values
* tBodyGyroJerk-mean()-Z - Average of the tBodyGyroJerk Mean Z values
* tBodyGyroJerk-std()-X  - Average of the tBodyGyroJerk Standard Deviation X values
* tBodyGyroJerk-std()-Y  - Average of the tBodyGyroJerk Standard Deviation Y values
* tBodyGyroJerk-std()-Z  - Average of the tBodyGyroJerk Standard Deviation Z values
* tBodyAccMag-mean() - Average of the tBodyAccMag Mean values
* tBodyAccMag-std()  - Average of the tBodyAccMag Standard Deviation values
* tGravityAccMag-mean()  - Average of the tGravityAccMag Mean values
* tGravityAccMag-std()  - Average of the tGravityAccMag Standard Deviation values
* tBodyAccJerkMag-mean()  - Average of the tBodyAccJerkMag Mean values
* tBodyAccJerkMag-std()  - Average of the tBodyAccJerkMag Standard Deviation values
* tBodyGyroMag-mean()  - Average of  the tBodyGyroMag Mean values
* tBodyGyroMag-std()  - Average of the tBodyGyroMag Standard Deviation values
* tBodyGyroJerkMag-mean() - Average of the tBodyGyroJerkMag Mean values
* tBodyGyroJerkMag-std() - Average of the tBodyGyroJerkMag Standard Deviation values
* fBodyAcc-mean()-X - Average of the fBodyAcc Mean X values
* fBodyAcc-mean()-Y - Average of the fBodyAcc Mean Y values
* fBodyAcc-mean()-Z - Average of the fBodyAcc Mean Z values
* fBodyAcc-std()-X - Average of the fBodyAcc Standard Deviation X values
* fBodyAcc-std()-Y - Average of the fBodyAcc Standard Deviation Y values
* fBodyAcc-std()-Z - Average of the fBodyAcc Standard Deviation Z values
* fBodyAccJerk-mean()-X - Average of the fBodyAccJerk Mean X values
* fBodyAccJerk-mean()-Y - Average of the fBodyAccJerk Mean Y values
* fBodyAccJerk-mean()-Z - Average of the fBodyAccJerk Mean Z values
* fBodyAccJerk-std()-X - Average of the fBodyAccJerk Standard Deviation X values
* fBodyAccJerk-std()-Y - Average of the fBodyAccJerk Standard Deviation Y values
* fBodyAccJerk-std()-Z - Average of the fBodyAccJerk Standard Deviation Z values
* fBodyGyro-mean()-X - Average of the fBodyGyro Mean X values
* fBodyGyro-mean()-Y - Average of the fBodyGyro Mean Y values
* fBodyGyro-mean()-Z - Average of the fBodyGyro Mean Z values
* fBodyGyro-std()-X - Average of the fBodyGyro Standard Deviation X values
* fBodyGyro-std()-Y - Average of the fBodyGyro Standard Deviation Y values
* fBodyGyro-std()-Z - Average of the fBodyGyro Standard Deviation Z values
* fBodyAccMag-mean() - Average of the fBodyAccMag Mean values
* fBodyAccMag-std() - Average of the fBodyAccMag Standard Deviation values
* fBodyBodyAccJerkMag-mean() - Average of the fBodyBodyAccJerkMag Mean values
* fBodyBodyAccJerkMag-std() - Average of the fBodyBodyAccJerkMag Standard Deviation values
* fBodyBodyGyroMag-mean() - Average of the fBodyBodyGyroMag Mean values
* fBodyBodyGyroMag-std() - Average of the fBodyBodyGyroMag Standard Deviation values
* fBodyBodyGyroJerkMag-mean() - Average of the fBodyBodyGyroJerkMag Mean values
* fBodyBodyGyroJerkMag-std() - Average of the fBodyBodyGyroJerkMag Standard Deviation values



###References:
        
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
