## Getting and Cleaning Data - Course Project

## Objective: Merging "Human Activity Recognition Using Smartphones Dataset" test/training data
## and obtaining average mean/standard deviation for each measurement

# Set working directory on local machine
setwd("C://Program Files (x86)/R Statistics/Work/UCI HAR Dataset")

# Read in label files
varnames <- read.table("features.txt", sep = "") # Call "features.txt" for variable labels
vars <- as.character(varnames$V2) # Convert factor variable "V2" to character vector "vars"

trlab <- read.table("y_train.txt") # Call "y_train.txt" for activity labels
trl <- trlab$V1 # Convert variable "V1" to vector "trl"

telab <- read.table("y_test.txt") # Call "y_test.txt" for activity labels
tel <- telab$V1 # Convert variable "V1" to vector "tel"

trsub <- read.table("subject_train.txt") # Call "subject_train.txt" for subject labels
trs <- trsub$V1 # Convert variable "V1" to vector "trs"

tesub <- read.table("subject_test.txt") # Call "subject_test.txt" for subject labels
tes <- tesub$V1 # Convert variable "V1" to vector "tes"
