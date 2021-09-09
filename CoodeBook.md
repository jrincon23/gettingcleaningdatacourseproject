# Getting and Cleaning Data Course Project - CodeBook

## Modifications to original data set

- Merging the test and training data sets into a single data set
- Selecting only the measurements of standard deviation and mean for each measurement on features
- Giving descriptive names to the activities based on the activity labels included on the original data set
- Labeling the data set with descriptive variables based on the original data set on features and formating it in camel case
- Creating a new tidy data set with the average of each variable for each subject for each activity

## Identifiers
next to the column name is the column number of the tidy data for example [1] corresponds to the first column on the file

- [1] subject: the identifier of the subject of observation
- [2] activity: the activity that was performing the subject of the observation

## Variables of measurement

All of the below variables corresponds to the average of each of the mean and standard deviation variables on the original data (to know the description of each one you must refer to the original data's codebook)

starting from column 3 and on in the same order of apparition

- tBodyAccMeanX
- tBodyAccMeanY
- tBodyAccMeanZ
- tBodyAccStdX
- tBodyAccStdY
- tBodyAccStdZ
- tGravityAccMeanX
- tGravityAccMeanY 
- tGravityAccMeanZ         
- tGravityAccStdX         
- tGravityAccStdY 
- tGravityAccStdZ 
- tBodyAccJerkMeanX       
- tBodyAccJerkMeanY        
- tBodyAccJerkMeanZ        
- tBodyAccJerkStdX        
- tBodyAccJerkStdY         
- tBodyAccJerkStdZ         
- tBodyGyroMeanX 
- tBodyGyroMeanY  
- tBodyGyroMeanZ  
- tBodyGyroStdX  
- tBodyGyroStdY   
- tBodyGyroStdZ   
- tBodyGyroJerkMeanX      
- tBodyGyroJerkMeanY       
- tBodyGyroJerkMeanZ       
- tBodyGyroJerkStdX       
- tBodyGyroJerkStdY        
- tBodyGyroJerkStdZ        
- tBodyAccMagMean         
- tBodyAccMagStd  
- tGravityAccMagMean       
- tGravityAccMagStd       
- tBodyAccJerkMagMean      
- tBodyAccJerkMagStd       
- tBodyGyroMagMean        
- tBodyGyroMagStd 
- tBodyGyroJerkMagMean     
- tBodyGyroJerkMagStd     
- fBodyAccMeanX
- fBodyAccMeanY
- fBodyAccMeanZ
- fBodyAccStdX    
- fBodyAccStdY    
- fBodyAccStdZ   
- fBodyAccJerkMeanX        
- fBodyAccJerkMeanY        
- fBodyAccJerkMeanZ       
- fBodyAccJerkStdX         
- fBodyAccJerkStdY         
- fBodyAccJerkStdZ        
- fBodyGyroMeanX  
- fBodyGyroMeanY  
- fBodyGyroMeanZ 
- fBodyGyroStdX   
- fBodyGyroStdY   
- fBodyGyroStdZ  
- fBodyAccMagMean 
- fBodyAccMagStd  
- fBodyBodyAccJerkMagMean 
- fBodyBodyAccJerkMagStd   
- fBodyBodyGyroMagMean     
- fBodyBodyGyroMagStd     
- fBodyBodyGyroJerkMagMean 
- fBodyBodyGyroJerkMagStd
