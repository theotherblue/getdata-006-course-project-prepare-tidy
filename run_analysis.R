#
# run_analysis.R
#

# read bulk data
train.data <- read.csv("./UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
test.data <- read.csv("./UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)

# collate bulk data
data <- rbind(train.data, test.data)

# add subject
subject.train = read.csv("./UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)
subject.test = read.csv("./UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
data <- cbind(data, rbind(subject.train, subject.test))

# add activity
activity.train = read.csv("./UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)
activity.test = read.csv("./UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)
data <- cbind(data, rbind(activity.train, activity.test))

# read the feature names
features = read.csv("./UCI HAR Dataset/features.txt", sep="", header=FALSE)
# rename the mean and std names. 
features[,"V2"] <- gsub('-mean\\(\\)', '.mean', features[,"V2"])
features[,"V2"] <- gsub('-std\\(\\)', '.std', features[,"V2"])

# set the column names from the features and name the subject and activity columns
names(data) <- features[,"V2"]
names(data)[562] <- "subject"
names(data)[563] <- "activity"

# get the indecies of the mean and std columns and filter out those
mean.std <- grepl("\\.mean|\\.std", features[,"V2"])
data <- data[,mean.std]

# read the activity name
activity.labels = read.csv("./UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)

# aggregate on subject and activity
# use mean as means
aggregated.data <- aggregate(. ~ subject + activity, FUN = mean, data=data)

aggregated.data$activity <- factor(aggregated.data$activity, labels=activity.labels[,2])

# write to file
write.table(aggregated.data, file="./summary_activity.txt", sep=",", row.names=FALSE)

