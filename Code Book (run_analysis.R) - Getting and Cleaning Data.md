Getting and Cleaning Data - Final Project - Code Book

Variables for the Final Project in Getting and Cleaning Data arrived in 8 .txt files received via WinZip compression from the project start page:

1. activity_labels
2. features
3. subject_test
4. subject_train
5. X_test
6. X_train
7. y_test
8. y_train

--activity_labels:
  1. Text file with activity names/six levels:
    "1" WALKING
    "2" WALKING_UPSTAIRS
    "3" WALKING_DOWNSTAIRS
    "4" SITTING
    "5" STANDING
    "6" LAYING
  2. These variables were transformed to remove underscores ("_") and lower capitalization ("WALKING" is now "Walking")
  3. Final data file ("GCD_Final2.txt"): Variable "activity" (factor with 6 levels)
  
--features
  1. Text file with 561 variable names for "X_test/train" data files
  2. 22 "base features" with 17 measures/variables each (some varaibles are not described in the original code book and will be disregarded)
    1. 10 "Time" variables denoted with a "t" at the beginning
      1. 5 variables measured along 3 axes (X, Y, Z with one measurement apiece)
      2. 5 variables measuring magnitude denoted with "Mag" at variable name's end
    2. 7 "Frequency" variables denoted with a "f" at the beginning
      1. 3 variable measured along 3 axes (X, Y, Z with one measurement apiece)
      2. 4 variables measuring magnitude denoted with "Mag" at variable name's end
    3. 5 variables "obtained by averaging the signals in a signal window sample"
  3. These variables were transformed to more "tidy" names by:
    1. Changing "t" and "f" to "Time" and "Frequency"
    2. Changing "Acc" to "Accelerometer"
    3. Changing "Gyro" to "Gyroscope"
    4. Changing "Mag" to "Magnitude"
    5. Removing characters "()-"
  4. Final data file ("GCD_Final2.txt"): Only contains 66 of these original variables (mean and standard deviation measures for each feature)
  
--subject_test/train
  1. Text files with single, numeric variable 1-30
  2. Final data file ("GCD_Final2.txt"): Number of subjects' measure differs between subjects
  
--X_test/train
  1. Final data file ("GCD_Final2.txt"): Text file with 561 measures for 30 subjects across 6 activities

--y_test/train
  1. Text files with single, numeric variable 1-6 
  2. Final data file ("GCD_Final2.txt"): When combined with "subject_test/train" forms data frame with 2 columns by subject ID and activity ID

Final data (GCD_Final2.txt) is a data frame with 180 rows and 68 variables. Each data point is the mean of the feature measures combined within subject by activity. FOR TIME CONSTRAINTS, COLUMN NAMES WERE NOT CHANGED TO REFLECT THE NEW DATA CONTAINED WITHIN.
