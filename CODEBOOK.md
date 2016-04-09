# Code Book

This code book documents the process of ETL (Extract, Transform and Load) applied on data collected from the accelerometers from the Samsung Galaxy S smartphone. Data is obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip (in a ZIP file)

Design & Approach

The source data is in TEXT files format with Training and Test data for reference. Here is the. entire steps performed as part of ETL

1.  Downloadin the ZIP file  (manual)
2.  UNZIP the file into relevant folder (manual)
3.  Load TEST and TRAINING txt files into data frames (in R)
4.  Load source variable names for test and training data sets (in R)
5.  Load activity labels (in R)
6.  Merge test and training data frames using rbind (in R)
7.  Filter  data frames to include only mean and standard deviation variables (in R)
8.  Replace activity IDs with the activity labels for readability (in R)
9.  Merge data frames to create single data frame containing the subjects, measurements and activities (in R)
10. Produce "tidy_data_final.txt" with the merged data frame (in R) (output file generated)
11. Create data set using the data.table library for applying group on tidy data by subject and activity(in R)
12. Apply mean and standard deviation calculations across the groups (in R)
13. Produce "tidy_data_processed.txt" as the second expected output (in R) (output file generated)

For more information and how these steps are performed, please check my R file i.e. run_analysis.R

Variables

subjectId: 1 to 30 each representing a participant in the study
activity: the activity that the subject was doing at the time of the measurement

* tBodyAcc-mean-X
* tBodyAcc-mean-Y
* tBodyAcc-mean-Z
* tBodyAcc-std-X
* tBodyAcc-std-Y
* tBodyAcc-std-Z
* tGravityAcc-mean-X
* tGravityAcc-mean-Y
* tGravityAcc-mean-Z
* tGravityAcc-std-X
* tGravityAcc-std-Y
* tGravityAcc-std-Z
* tBodyAccJerk-mean-X
* tBodyAccJerk-mean-Y
* tBodyAccJerk-mean-Z
* tBodyAccJerk-std-X
* tBodyAccJerk-std-Y
* tBodyAccJerk-std-Z
* tBodyGyro-mean-X
* tBodyGyro-mean-Y
* tBodyGyro-mean-Z
* tBodyGyro-std-X
* tBodyGyro-std-Y
* tBodyGyro-std-Z
* tBodyGyroJerk-mean-X
* tBodyGyroJerk-mean-Y
* tBodyGyroJerk-mean-Z
* tBodyGyroJerk-std-X
* tBodyGyroJerk-std-Y
* tBodyGyroJerk-std-Z
* tBodyAccMag-mean
* tBodyAccMag-std
* tGravityAccMag-mean
* tGravityAccMag-std
* tBodyAccJerkMag-mean
* tBodyAccJerkMag-std
* tBodyGyroMag-mean
* tBodyGyroMag-std
* tBodyGyroJerkMag-mean
* tBodyGyroJerkMag-std
* fBodyAcc-mean-X
* fBodyAcc-mean-Y
* fBodyAcc-mean-Z
* fBodyAcc-std-X
* fBodyAcc-std-Y
* fBodyAcc-std-Z
* fBodyAccJerk-mean-X
* fBodyAccJerk-mean-Y
* fBodyAccJerk-mean-Z
* fBodyAccJerk-std-X
* fBodyAccJerk-std-Y
* fBodyAccJerk-std-Z
* fBodyGyro-mean-X
* fBodyGyro-mean-Y
* fBodyGyro-mean-Z
* fBodyGyro-std-X
* fBodyGyro-std-Y
* fBodyGyro-std-Z
* fBodyAccMag-mean
* fBodyAccMag-std
* fBodyBodyAccJerkMag-mean
* fBodyBodyAccJerkMag-std
* fBodyBodyGyroMag-mean
* fBodyBodyGyroMag-std
* fBodyBodyGyroJerkMag-mean
* fBodyBodyGyroJerkMag-std
