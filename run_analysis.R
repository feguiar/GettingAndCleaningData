library(RCurl)
library(data.table)

mergeDS <- function() {
  ## -- Merging data
  ds_train <- read.table('UCI HAR Dataset/train/X_train.txt')
  ds_test <- read.table('UCI HAR Dataset/test/X_test.txt')
  ds_no_links <- rbind(ds_train, ds_test)
  
  ## -- Merging list of subjects
  s_train <- read.table('UCI HAR Dataset/train/subject_train.txt')
  s_test <- read.table('UCI HAR Dataset/test/subject_test.txt')
  s <- rbind(s_train, s_test)
  
  ## -- Merging activity labels
  activities_train <- read.table('UCI HAR Dataset/train/y_train.txt')
  activities_test <- read.table('UCI HAR Dataset/test/y_test.txt')
  activities <- rbind(activities_train, activities_test)
  
  ds_no_links <- cbind(s, activities, ds_no_links)
  
  ds_no_links
}

getMeanAndStd <- function(ds_no_links) {
  features <- read.table('UCI HAR Dataset/features.txt')
  mean_std <- grep("mean\\(\\)|std\\(\\)", features[,2])
  
  ds_aux <- ds_no_links[,3:ncol(ds_no_links)]
  ds_aux <- ds_aux[,mean_std]
  ds_mean_std <- cbind(ds_no_links[,1:2], ds_aux)
  
  ds_mean_std
}

assignActivityName <- function(ds_mean_std) {
  names(ds_mean_std)[1] <- "subject"
  names(ds_mean_std)[2] <- "activity"
  
  activity_label <- read.table('UCI HAR Dataset/activity_labels.txt')
  activity_label[,2] <- tolower(as.character(activity_label[,2]))
  
  ds_mean_std[,2] <- activity_label[ds_mean_std[,2],2]
  
  ds_mean_std
}

assignVariablesLabel <- function(ds_mean_std) {
  features <- read.table('UCI HAR Dataset/features.txt')
  mean_std <- grep("mean\\(\\)|std\\(\\)", features[,2])
  
  features[,2] <- gsub('\\(|\\)', "", as.character(features[,2]))
  features[,2] <- tolower(as.character(features[,2]))
  
  names(ds_mean_std)[3:ncol(ds_mean_std)] <- features[mean_std,2]
  write.table(ds_mean_std, 'merged_ds.txt', row.names = FALSE)
  
  ds_mean_std
}

createAverageDS <- function(ds_mean_std) {
  average_ds <- aggregate(x=ds_mean_std, by=list(subject=ds_mean_std$subject, activity=ds_mean_std$activity), FUN=mean)
  average_ds <- cbind(average_ds[, 1:2], average_ds[,5:70])
  average_ds <- average_ds[order(average_ds$subject),]
  write.table(average_ds, 'average_ds.txt', row.names = FALSE)
  
  average_ds
}

if (!dir.exists("UCI HAR Dataset")) {
  dataFile <- 'http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
  dir.create('UCI HAR Dataset')
  download.file(dataFile, 'UCI-HAR-dataset.zip', method='curl')
  unzip('UCI-HAR-dataset.zip')
}

## start of step 1 - Merges the training and the test sets to create one data set.
  ds_no_links <- mergeDS()
## end o step 1

## start of step 2 - Extracts only the measurements on the mean and standard deviation for each measurement.
  ds <- getMeanAndStd(ds_no_links)
## end of step 2

## start step 3 - Uses descriptive activity names to name the activities in the data set
  ds <- assignActivityName(ds)
## end step 3

## start step 4 - Appropriately labels the data set with descriptive variable names.
  ds <- assignVariablesLabel(ds)
## end step 4

## start step 5 - From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  average_ds <- createAverageDS(ds)
## end step 5

