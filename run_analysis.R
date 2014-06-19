## Read Data into R

# Read Activity labels
Activity_labels<- read.table("activity_labels.txt", sep='', header = FALSE)
names(Activity_labels) <- c('id', 'name')

# Read Features labels
Features <- read.table("features.txt", sep = '', header = FALSE)  
names(Features) <- c('id', 'name')

# Read the data files and assign appropriate column names

X_train<- read.table("X_train.txt", sep='', header = FALSE)
names(X_train) <- Features$name

y_train<- read.table("y_train.txt", sep = '/', header = FALSE)
names(y_train) <- c('activity')

Subj_train<- read.table("subject_train.txt", sep='/', header = FALSE)
names(Subj_train) <- c('subject')

X_test<- read.table("X_test.txt", sep = '', header = FALSE)
names(X_test) <- Features$name

y_test<- read.table("y_test.txt", sep = '/' , header = FALSE)
names(y_test) <- c('activity')

Subj_test <- read.table("subject_test.txt", sep = '/', header = FALSE)
names(Subj_test) <- c('subject')

# Merge the Training and Test sets
X <- rbind(X_train, X_test)
y <- rbind(y_train, y_test)
subject <- rbind(Subj_train, Subj_test)

# Extract only the measurements on the mean and standard deviation for each measurement
# Please note that I have included variables with meanFreq()s as well as it's not clear from the project description whether this need to be excluded

#X <- X[, grep('mean|std', Features$name)] ### meanFreq() variables included
X <- X[,grep('mean\\(\\)|std\\(\\)', Features$name)]### meanFreq() variables excluded


# Renaming activity lables to descriptive activity names 

y$activity <- Activity_labels[y$activity,]$name

# Merge the data sets together
merged.data.set <- cbind(subject, y, X)

# Write the merged data set created above
#write.csv(merged.data.set, "merged.data.set.csv")

# Create Second independent tidy data set with the average of each variable for each activity and each subject. 

avg.merged.data.set <- aggregate(merged.data.set[, 3:dim(merged.data.set)[2]],
                                list(merged.data.set$subject,merged.data.set$activity),mean)
names(avg.merged.data.set)[1:2] <- c('subject', 'activity')

# Write the merged independent tidy data set with averages of each variable for each activity and each subject. 
write.csv(avg.merged.data.set, "avg.merged.data.set.csv")


