# run_analysis.R file

# Data used for this assignment is download from this link (as per the assignment instructions)
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# 
run_analysis <- function(){

  # refer to WORK LOG at the end of this code file for quick reference
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
  
  features_table <- read.table("./UCI HAR Dataset/features.txt", col.names=c("fId", "fName"))
  
  activities_table <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("aId", "aName"))
  
  # CLEAN UP: Some Activity Labels have _ (under score) in them so using gsub to remove it
  activities_table$aName <- gsub("_", "", as.character(activities_table$aName))
  
  
  # Taking only required features from features_table.
  # using grep with regular expressions
  
  reqFeatures <- grep("-mean\\(\\)|-std\\(\\)", features_table$fName)
  
}





# WORK LOG from RStuio (for reference)

# Download the ZIP file and UNZIP to the folder
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# setwd("C:/Users/<your folder>/Desktop/Coursera/cd")
# t <- read.table("./UCI HAR Dataset/test/subject_test.txt")
# str(t)
# # run str(subject_test_table) for quick check