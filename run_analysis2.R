## Getting and Cleaning Data - Course Project

## Objective: Merging "Human Activity Recognition Using Smartphones Dataset" test/training data
## and obtaining average mean/standard deviation for each measurement

# Set working directory on local machine
setwd("C://Program Files (x86)/R Statistics/Work/UCI HAR Dataset")

# Read in variable label files
varnames <- read.table("features.txt", sep = "") # Call "features.txt" for variable labels
varnames <- as.character(varnames$V2)) # Convert factor variable "V2" to character vector "varnames"

# Clean variable labels
clean <- function(x){
    varnames <- gsub("^t", "Time", varnames)
    varnames <- gsub("^f", "Frequency", varnames)
    varnames <- gsub("*Acc", "Accelerometer", varnames)
    varnames <- gsub("*Gyro", "Gyroscope", varnames)
    varnames <- gsub("*Mag", "Magnitude", varnames)
    varnames <- gsub("\\()", " ", varnames)
    varnames <- gsub("-", " ", varnames)
    varnames
}

varnames <- clean(varnames)

# Read in subject and activity labels
tract <- read.table("y_train.txt") # Call "y_train.txt" for activity labels
tract <- tract$V1 # Convert variable "V1" to vector
tract <- factor(tract, 1:6, labels=c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")) # Convert to activity names

trsub <- read.table("subject_train.txt") # Call "subject_train.txt" for subject labels
trsub <- trsub$V1 # Convert variable "V1" to vector

teact <- read.table("y_test.txt") # Call "y_test.txt" for activity labels
teact <- teact$V1 # Convert variable "V1" to vector
teact <- factor(teact, 1:6, labels=c("Walking", "Walking Upstairs", "Walking Downstairs", "Sitting", "Standing", "Laying")) # Convert to activity names

tesub <- read.table("subject_test.txt") # Call "subject_test.txt" for subject labels
tesub <- tesub$V1 # Convert variable "V1" to vector

# Read in data and combine tables
xtrain <- read.table("x_train.txt") # Call "x_train.txt" for test data
xtest<- read.table("x_test.txt") # Call "x_train.txt" for test data

names(xtrain) <- varnames # Apply variable names
names(xtest) <- varnames # Apply variable names

x <- cbind(trsub, tract, xtrain) # Combine all three training files
y <- cbind(tesub, teact, xtest) # Combine all three test files
names(x)[1:2] <- c("subject", "activity") # Change first two column names to "subject" and "activity"
names(y)[1:2] <- c("subject", "activity") # Change first two column names to "subject" and "activity"
xy <- rbind(x,y) # Final merge of test/train data and labels

# 
