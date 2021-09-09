#load libraries
library(dplyr)
library(data.table)

#downloading and unziping raw data
data_folder <- "data"
zip_file_name <- paste0(data_folder,"/","UCI_HAR_Dataset.zip")
data_src_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists(data_folder)){
  dir.create(data_folder)
}
download.file(data_src_url, zip_file_name)
unzip(zipfile = zip_file_name, exdir = data_folder)

#loading the data into tables
#common files
features <- read.table(paste0(data_folder,"/","UCI HAR Dataset/features.txt"))
activity_labels <- read.table(paste0(data_folder,"/","UCI HAR Dataset/activity_labels.txt"))

#test data
test_x <- read.table(paste0(data_folder,"/","UCI HAR Dataset/test/X_test.txt"))
test_y <- read.table(paste0(data_folder,"/","UCI HAR Dataset/test/y_test.txt"))
subject_test <- read.table(paste0(data_folder,"/","UCI HAR Dataset/test/subject_test.txt"))

#train data
train_x <- read.table(paste0(data_folder,"/","UCI HAR Dataset/train/X_train.txt"))
train_y <- read.table(paste0(data_folder,"/","UCI HAR Dataset/train/y_train.txt"))
subject_train <- read.table(paste0(data_folder,"/","UCI HAR Dataset/train/subject_train.txt"))

#merging the test with the train
x <- rbind(test_x,train_x)
y <- rbind(test_y,train_y)
subjects <- rbind(subject_test,subject_train)

#giving names to variables of measurements
names(x)<-features$V2
y_factors <- factor(y$V1,labels=activity_labels$V2)

#merging all the data together
data <- data.frame(subject=subjects$V1,activity=y_factors)
data <- cbind(data,x)
data <- data.table(data)

#get the columns containing "mean()" or "std()" and then selecting those columns
#on the dataset
columns <- grep("mean\\(\\)|std\\(\\)", names(data))
data_mean_std <- data %>%
  select(subject,activity,columns)

#giving descriptive names to variables using camel case notation and generating 
#new data set
names(data_mean_std) <-gsub("mean\\(\\)","Mean",names(data_mean_std))
names(data_mean_std) <-gsub("std\\(\\)","Std",names(data_mean_std))
names(data_mean_std) <-gsub("-","",names(data_mean_std))
melted <- melt(data_mean_std,id=c("subject","activity"))


#data set with average of each variable for each activity and subject
tidy_data <- dcast(melted,subject+activity~variable,mean)

#writing new data set to disk
tidy_data_path <- "tidy_data.txt"
write.table(tidy_data,tidy_data_path, row.names = FALSE, quote = FALSE)
