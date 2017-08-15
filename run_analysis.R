#Rafael Pagan
#Getting and Cleaning Data by Johns Hopkins offered through Coursera.
#Final Project

#See the README.Rmd and CodeBook.Rmd for usage and feature extraction details.

## Make data tidy
#Features list
features <- read.table("./data/features.txt")
features <- features[(-1)]
aLabels <- read.table("/data/activity_labels.txt")

#Load Train Data
xTrain<-read.table("./data/train/X_train.txt")
yTrain<-read.table("./data/train/Y_train.txt")
sTrain<-read.table("./data/train/subject_train.txt")
names(xTrain) <- t(features)
names(sTrain) <- "subject"
names(yTrain) <- "activity"
d0 <- data.frame(cbind(sTrain, xTrain, yTrain))

#Load Test Data
xTest <- read.table("./data/test/X_test.txt")
yTest <- read.table("./data/test/Y_test.txt")
sTest <- read.table("./data/test/subject_test.txt")
names(xTest) <- t(features)
names(sTest) <- "subject"
names(yTest) <- "activity"
d1 <- data.frame(cbind(sTest, xTest, yTest))

#Merge both data sets
mergedData = merge(d0, d1, all = TRUE)

#Replace encoded variable with activity names
aLabels<-read.table("./data/activity_labels.txt")
mergedData$activity <- factor(mergedData$activity, levels = c(1,2,3,4,5,6), 
                              labels = as.character(aLabels$V2))

#Subset for features with means and standard deviations.
activity <- mergedData$activity
subject <- mergedData$subject
mergedData2 <- cbind(subject, mergedData[,grep("mean|std", names(mergedData))], activity)

## Make labels tidy
names(mergedData2) <- tolower(names(mergedData2))
names(mergedData2) <- gsub("\\.", "", names(mergedData2))
names(mergedData2) <- gsub("tbody", "time", names(mergedData2))
names(mergedData2) <- gsub("fbody", "frequency", names(mergedData2))

## Write tidy data to file
write.table(mergedData2, file="tidy_UCI_HAR_Dataset.txt", row.name=FALSE) 

## Melt and reshape data frame to calculate the average of each variable 
## for each subject and corresponding.
library(reshape2)
mergeMolten <- melt(mergedData2, id=c("subject", "activity"))
meanData <- dcast(mergeMolten, subject + activity ~ variable, mean)
write.table(meanData, file="tidy_averages_UCI_HAR_Dataset.txt", row.name=FALSE) 
