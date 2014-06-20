##Getting and Cleaning Data Course Project

###READ ME

This repository contains R code and the related documentation required for the Coursera Data Science/Getting and Cleaning Data course project.
The raw data can be obtained from the following URL:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data that is used in this project was downloaded from the above mentioned source on 13 June 2014. 
The name of the zip file downleded is getdata-projectfiles-UCI HAR Dataset.zip. 
The names of the data files used to produce the tidy data set are mentioned below.

	        * UCI HAR Dataset/test/y_test.txt
	        * UCI HAR Dataset/train/X_train.txt
	        * UCI HAR Dataset/train/y_train.txt
                * UCI HAR Dataset/test/X_test.txt
                
        
Other files that were used for merging and cleaning the data set are as mentioned below:

	       * activity_labels.txt
	       * features_info.txt
	       * features.txt
               * subject_train.txt
	       * subject_test.txt
               
               
As per the instructions the codebook for this project can be found in a file named CodeBook.md in this repository.

The R script named run_analysis.R was used to generate the tidy output data 
("avg.merged.data.set.csv") submitted for the course project is also part of this repository.

###Assumption:

To execute the R file (run_analysis.R) it is assumed that the required data file for this project 'getdata-projectfiles-UCI HAR Dataset.zip' is already downloaded from the aforementioned source URL and has been extracted into the current working directory.

###Step by Step instruction to execute the script & generate tidy data set:

* Step 1: Clone this Git repository.
* Step 2: Copy the 'getdata-projectfiles-UCI HAR Dataset.zip' archive into the cloned Git repository on your computer.
* Step 3: Start R (or R Studio) and set the current working directory to the location of the cloned Git repository on your computer.
* Step 4: Open and run the 'run_analysis.R' script in R (or RStudio). This will produce a file named 'avg.merged.data.set.csv' in the working directory.

### Instructions to view the Tidy Data Set file:
* Step 1: You can read the tidy data set file (created by running the run_analysis.R script above) from your current working directory into R by using read.csv("avg.merged.data.set.csv") function.
* Step 2: Alternativey, tidy data set file 'avg.merged.data.set.csv' has also been uploaded on the Github(https://github.com/AshishRane/Getting-and-Cleaning-Data). Please click on the file name to view the file in tabular format in Github. 

For more details on the variables in the tidy data set please refer to CodeBook.md in this repository.

Following are the environment details in which this script was built & tested 

* Operating System: Apple OSX v10.9.3
* Proecessor: 2.3 GHz Intel Core i5 (16 GB Memory)
* Software: RStudio Version Version 0.98.501
        

###References:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

