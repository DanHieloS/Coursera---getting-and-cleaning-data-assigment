install.packages("plyr")
library(plyr)

# 0. Downloading dataset
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")

# Unzip dataSet to /data directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")


# 1. create one data set by merging all others. It requires::

# 1.1 Read all the tables

# 1.1.1 trainings tables:
a_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
b_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")

# 1.1.2 testing tables:
a_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
b_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")

# 1.1.3 feature vector:
features <- read.table('./data/UCI HAR Dataset/features.txt')

# 1.1.4 activity labels:
activityLabels = read.table('./data/UCI HAR Dataset/activity_labels.txt')

# 1.2 Asign names to the columns:
colnames(a_train) <- features[,2] 
colnames(b_train) <-"activityId"
colnames(subject_train) <- "subjectId"

colnames(a_test) <- features[,2] 
colnames(b_test) <- "activityId"
colnames(subject_test) <- "subjectId"

colnames(activityLabels) <- c('activityId','activityType')

# 1.3 Merge everything in one data set:
alltrain <- cbind(b_train, subject_train, a_train)
alltest <- cbind(b_test, subject_test, a_test)
allInOne <- rbind(alltrain, alltest)

# 2. Extract the measurements required (Mean and Standard deviation)

# 2.1 Read column names:
colNames <- colnames(allInOne)

# 2.2 Put in a vector the measurements:
mean_and_std <- (grepl("activityId" , colNames) | 
                         grepl("subjectId" , colNames) | 
                         grepl("mean.." , colNames) | 
                         grepl("std.." , colNames) 
)

# 2.3 Make a concrete subset:
setForMeanAndStd <- allInOne[ , mean_and_std == TRUE]

# 3. Naming properly every one of the activities in the data set:
setWithActivityNames <- merge(setForMeanAndStd, activityLabels,
                              by='activityId',
                              all.x=TRUE)
# 4. Label the data set with descriptive variable names.
# Made in steps 1.3, 2.2, 2.3.

# 5. Creating anoter tidy data set with the average of each variable for each activity and each subject

# 5.1 second tidy data set 
secTidySet <- aggregate(. ~subjectId + activityId, setWithActivityNames, mean)
secTidySet <- secTidySet[order(secTidySet$subjectId, secTidySet$activityId),]

# 5.2 Writing second tidy data set in txt file
write.table(secTidySet, "secTidySet.txt", row.name=FALSE)