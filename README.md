# datacleaning

Getting and Cleaning Data Assignment Work

R and supporting Tools Used:
OS: Windows 10 Pro 
R version 3.2.4 Revised (2016-03-16 r70336)
RStudio 0.99.893
Git GUI 2.8.0


Required file for the assignment work:

- [run_analysis.R](https://github.com/KishoreDG/datacleaning/blob/master/run_analysis.R)
- [README.md](https://github.com/KishoreDG/datacleaning/blob/master/README.md)


Please find the instruction on how to get the code and run it locally:

1. Get the code using Git Hub UI or you can fork it
   https://github.com/KishoreDG/datacleaning.git

2. Download and UNZIP to the relevant local folder on your PC/Mac (you will these instructions in the assignment itself)
   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

3. Launch RStudio. Make sure that working directory is set. In RStudio, you can use this option under "Session" menu.
   Make sure that you are pointing to the right folder where "run_analysis.R" file is located. When you Fork it and
   Clone it, you should have folder on your PC/Mac. ** I Used Git HUB UI for Cloning"

4. Step 3 is very important. Next step is to initialize the run_analysis.R file in RStudio
   source("run_analysis.R")
   
5. Run the R script using run_analysis(). 

6. Once the process is done, you shoud be able to see 2 output files (tidy_data_final.txt and tidy_data_final.txt)


Issues I came across during development, testing and how to fix them : 

1. For data.table to work, you need do install.packages("data.table")

Tips:

I have used str() and summary() functions a lot during the development phase. These functions are really
helpful in making sure that variables and data are OK before proceeding to the next step.