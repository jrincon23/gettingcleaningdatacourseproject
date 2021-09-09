# Getting and Cleaning Data Course Project
This corresponds to the course project for Getting and Cleaning Data

## Included files
- Readme.md
- run_analysis.R: Contains all the pieces of code to tidy the data and resolve the course project in general
- tidy_data.txt: the tidy data set output from run_analysis.R
- Codebook.md: A code book explaining the tidy data set

## Process applied to tiddy the raw data on run_analysis.R source code
- Creates the data folder
- Downloads the data set and unzip it on the data folder
- Loads the common files (features and activity labels)
- Loads the test (x, y and subjects) and train files (x, y and subjects)
- Merges the test data with the train data (each set on different data set test_x with train_x (x merged data set), test_y with train_y (y merged data set) and test_subjects with train_subjects) (subjects merged data set)
- Using the features data set names the variables on the measurements in the x merged data set
- Using the activity labels convert to factor the observations on y merged giving a value on activity label to each observation in y merged
- Creates a data frame with the columns subject, activity and appending the columns of variables in x merged data set to this new data set (data)
- On the new data frame (data), selects just the columns subject, activity and variable column corresponding to mean and standard deviation (columns with mean() and std() on their name according to the Codebook of the raw data)
- Formats the variable names on this new data frame (data) to remove the "-" and substitute the words mean() for Mean and std() for Std to use all the variable names in camel case notation, also keeping the original names of columns to know which variable references which one on the original data (refer to the original codebook to learn more about these variables)
- Creates a new data set with subject and variable as identifiers and all the variables as a narrow and tall data set (tidy 1 data set)
- From this new tidy data set (tidy 1 data set), creates a new wide dataset summarizing the mean of each on of the variables selected (mean and standard deviation variables) per subject per activity
- Saves this new data set to disk as tidy_data.csv

