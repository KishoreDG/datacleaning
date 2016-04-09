# run_analysis.R file

# Data used for this assignment is download from this link (as per the assignment instructions)
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# 
run_analysis <- function(){

  # declare variables to hold the data and initialize the data as well
 
  # LOADING OF TEST DATA 
  subject_test_table = read.table("./UCI HAR Dataset/test/subject_test.txt")
  X_test_table = read.table("./UCI HAR Dataset/test/X_test.txt")
  Y_test_table = read.table("./UCI HAR Dataset/test/Y_test.txt")
  
  # LOADING OF TRAINING DATA
  subject_train_table = read.table("./UCI HAR Dataset/train/subject_train.txt")
  X_train_table = read.table("./UCI HAR Dataset/train/X_train.txt")
  Y_train_table = read.table("./UCI HAR Dataset/train/Y_train.txt")
  
  # LOADING OF FEATURES and ACTIVITIES
  features_table <- read.table("./UCI HAR Dataset/features.txt", col.names=c("featureId", "featureName"))
  activities_table <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("activityId", "activityName"))
  
  # CLEAN UP: Some Activity Labels have _ (under score) in them so using gsub to remove it
  activities_table$activityName <- gsub("_", "", as.character(activities_table$activityName))
  
  # Extracts only the measurements on the mean and standard deviation for each measurement.
  #    using grep with regular expressions
  reqFeatures <- grep("-mean\\(\\)|-std\\(\\)", features_table$featureName)
  
  
  # Merges the training and the test sets to create one data set.
  # using rbind (there may be other way but I am using rbind)
  
  subject_merged_table <- rbind(subject_test_table, subject_train_table)
  names(subject_merged_table) <- "subjectId"
  
  X_merged_table <- rbind(X_test_table, X_train_table)
  X_merged_table <- X_merged_table[, reqFeatures]
  names(X_merged_table) <- gsub("\\(|\\)", "", features_table$featureNamel[reqFeatures])
  
  
  Y_merged_table <- rbind(Y_test_table, Y_train_table)
  names(Y_merged_table) = "activityId"
  
  activity <- merge(Y_merged_table, activities_table, by="activityId")$activityName
  
  # merge data frames of different columns to form one data table
  merged_data <- cbind(subject_merged_table, X_merged_table, activity)
  write.table(merged_data, "tidy_data_final.txt")
  
  
  # From the data set in step 4, creates a second, independent tidy data set with the average of 
  # each variable for each activity and each subject.
  
  library(data.table)
  dataTable <- data.table(merged_data)
  dataProcessed <- dataTable[, lapply(.SD, mean), by=c("subjectId", "activity")]
  write.table(dataProcessed, "tidy_data_processed.txt",row.name=FALSE)
  
}
