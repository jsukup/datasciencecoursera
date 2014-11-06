Getting and Cleaning Data - Final Project
===================

Getting and Cleaning Data - Course Project
Objective: Merging "Human Activity Recognition Using Smartphones Dataset" test/training data and obtaining average mean/standard deviation for each measurement

Initialization:
1. UCI HAR data was saved to the local hard drive prior to beginning the project. 
2. All data files were put into the same folder to avoid making multiple calls to different working directories. "C://Program Files (x86)/R Statistics/Work/UCI HAR Dataset"

Steps:
1. Load plyr for Step 5
2. Read in variable names from "features.txt" file and save as character vector "varnames."
3. Clean variable names using "clean" function and apply back into varaible "varnames."
4. Read in subject and activity labels saving all to vectors and transforming activity names to labeled factor vectors.
5. Read in data for "x test" and "x train."
6. Apply "varnames" as variable names for combined "x train/test."
7. Change first two variable names to "subject" and "activity" and combine "x train/test" data with subject/activity labels.
8. Generate final data set by extracting all columns from combined data in Step 7 that contain "mean" and "std"
9. Run "ddply" from "plyr" package to calculate averages of "mean" and "std" by each subject/activity
10. Write final data table in .txt format
