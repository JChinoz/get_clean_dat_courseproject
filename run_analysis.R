analysis <- function()
{
    library(dplyr)
    ## Reading both test and training data
    xtest <- read.table("./UCI HAR Dataset/test/X_test.txt")
    ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
    xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt")
    ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")

    ## Reading subject number of both test set and training set
    subtest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
    subtrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")
    
    ## Getting indexes of variables based only on words of variables containing "mean()" and "std()"

    features <- read.table("./UCI HAR Dataset/features.txt")
    
    meanIndex <- grep("mean()", features[,2])
    stdIndex <- grep("std()", features[,2])
    index <- c(meanIndex, stdIndex)
    index <- sort(index, decreasing = FALSE)
    
    index <- as.data.frame(index)
    features <- features[features$V1 %in% index$index,]
    
    ## Subset test and training data based on column indexes of selected "mean()" and "std()" features
    
    xtest <- subset(xtest, select=features$V1)
    xtrain <- subset(xtrain, select=features$V1)
    
    ## Reading activity labels
    activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
    
    ## Replace activity labels with integers in ylabels
    ytest <- merge(ytest, activity, by.x ="V1", by.y="V1")
    ytrain <- merge(ytrain, activity, by.x = "V1", by.y="V1")
    
    ## Renaming the ylabels variable to prevent confusion before the cbind occurs
    ytest <- rename(ytest, Activity = V2)
    ytrain <- rename(ytrain, Activity = V2)
    
    ## Renaming and Concatenating subject tables with test and training data
    subtest <- rename(subtest, Subject_No = V1)
    subtrain <- rename(subtrain, Subject_No = V1)
    subject <- rbind(subtest, subtrain)
    
    ## Binding tables to corresponding y_labels and merge both training and test set using rbind
    
    xtest <- cbind(ytest, xtest)
    xtrain <- cbind(ytrain, xtrain)
    merged <- rbind(xtest, xtrain)
    
    ## This part of the code is to take out the first column as the result of merging the indexes to the activity labels
    merged <- merged[,-(1)]
    
    merged <- cbind(subject, merged)
    merged <- arrange(merged, Subject_No) ## merged data completes Q1, Q2 and Q3
    
    print(head(merged, 5)) ## Answer for Q1, Q2 and Q3
    
    ## Question 4 starts here
    
    variables <- c("Subject", "Activity", 
                   "tBAccM-X", "tBAccM-Y", "tBAccM-Z", "tBAccStd-X", "tBAccStd-Y", "tBAccStd-Z",
                   "tGAccM-X", "tGAccM-Y", "tGAccM-Z", "tGAccStd-X", "tGAccStd-Y", "tGAccStd-Z",
                   "tBAccJerkM-X", "tBAccJerkM-Y", "tBAccJerkM-Z", "tBAccJerkStd-X", "tBAccJerkStd-Y", "tBAccJerkStd-Z",
                   "tBGyroM-X", "tBGyroM-Y", "tBGyroM-Z", "tBGyroStd-X", "tBGyroStd-Y", "tBGyroStd-Z",
                   "tBGyroJerkM-X", "tBGyroJerkM-Y", "tBGyroJerkM-Z", "tBGyroJerkStd-X", "tBGyroJerkStd-Y", "tBGyroJerkStd-Z",
                   "tBAccMagM", "tBAccMagStd",
                   "tGAccMagM", "tGAccMagStd", 
                   "tBAccJerkMagM", "tBAccJerkMagStd",
                   "tBGyroMagM", "tBGyroMagStd", 
                   "tBGyroJerkMagM", "tBGyroJerkMagStd",        
                   "fBAccM-X", "fBAccM-Y", "fBAccM-Z", "fBAccStd-X", "fBAccStd-Y", "fBAccStd-Z",
                   "fBAccMFreq-X", "fBAccMFreq-Y", "fBAccMFreq-Z",
                   "fBAccJerkM-X", "fBAccJerkM-Y", "fBAccJerkM-Z", "fBAccJerkStd-X", "fBAccJerkStd-Y", "fBAccJerkStd-Z",
                   "fBAccJerkMFreq-X", "fBAccJerkMFreq-Y", "fBAccJerkMFreq-Z",
                   "fBGyroM-X", "fBGyroM-Y", "fBGyroM-Z", "fBGyroStd-X", "fBGyroStd-Y", "fBGyroStd-Z",
                   "fBGyroMFreq-X", "fBGyroMFreq-Y", "fBGyroMFreq-Z",
                   "fBAccMagM", "fBAccMagStd", "fBAccMagMFreq",
                   "fBAccJerkMagM", "fBAccJerkMagStd","fBBAccJerkMagMFreq", 
                   "fBBGyroMagM", "fBBGyroMagStd", "fBBGyroMagMFreq",
                   "fBBGyroJerkMagM", "fBBGyroJerkMagStd", "fBBGyroJerkMagMFreq")

    colnames(merged) <- variables
    print(names(merged)) ##
    
    ## Question 5 starts here
    avgData <- merged[,3:length(merged)]
    avgData <- lapply(avgData, mean)
    write.table(avgData, file="./averageData.txt", row.name=FALSE)  ## Answer for Q5
    print(avgData)
    
}