## download the data file
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/dataset.zip",method="curl")
## unzip the data file
unzip(zipfile="./data/dataset.zip",exdir="./data")

library(data.table)
library(reshape2)
#
# activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")[,2]
# column names
features <- read.table("./data/UCI HAR Dataset/features.txt")[,2]
extract_features <- grepl("mean|std", features)

# test data
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
## set x test column names
names(X_test) <- features
## get the subset (only the measurements on the mean and standard deviation for each measurement)
X_test = X_test[,extract_features]
## read activity labels
y_test[,2] <- activity_labels[y_test[,1]]
names(y_test) <- c("Activity_ID", "Activity_Label")
names(subject_test) <- "subject"
## merge y_test X test columns
test_data <- cbind(as.data.table(subject_test), y_test, X_test)

# train data
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
## set x train column names
names(X_train) <- features
## get the subset (only the measurements on the mean and standard deviation for each measurement)
X_train = X_train[,extract_features]
## read activity labels
y_train[,2] = activity_labels[y_train[,1]]
names(y_train) = c("Activity_ID", "Activity_Label")
names(subject_train) = "subject"
## merge y_test X test columns
train_data <- cbind(as.data.table(subject_train), y_train, X_train)

# merge test and train data
data <- rbind(test_data, train_data)
id_labels <- c("subject", "Activity_ID", "Activity_Label")
data_labels <- setdiff(colnames(data), id_labels)
melt_data <- melt(data, id = id_labels, measure.vars = data_labels)

# apply mean function to dataset using dcast function
tidy_data   = dcast(melt_data, subject + Activity_Label ~ variable, mean)

write.table(tidy_data, file="./tidy_data.txt", row.name=FALSE)

