Getting and Cleaning Data - Course Project CodeBook

====================================

			VARIABLE NAMES

====================================

tBAccM-X 				-			tBodyAcc-mean()-X
tBAccM-Y                -           tBodyAcc-mean()-Y  
tBAccM-Z                -           tBodyAcc-mean()-Z  
tBAccStd-X 				-			tBodyAcc-std()-X 
tBAccStd-Y 				-			tBodyAcc-std()-Y 
tBAccStd-Z				-			tBodyAcc-std()-Z      

tGAccM-X 				-			tGravityAcc-mean()-X  		
tGAccM-Y 				-		    tGravityAcc-mean()-Y   
tGAccM-Z 				-			tGravityAcc-mean()-Z   
tGAccStd-X 				-			tGravityAcc-std()-X
tGAccStd-Y 				-			tGravityAcc-std()-Y 
tGAccStd-Z				-			tGravityAcc-std()-Z  

tBAccJerkM-X 			-			tBodyAccJerk-mean()-X
tBAccJerkM-Y 			-			tBodyAccJerk-mean()-Y 
tBAccJerkM-Z 			-			tBodyAccJerk-mean()-Z 
tBAccJerkStd-X 			-			tBodyAccJerk-std()-X 
tBAccJerkStd-Y 			-			tBodyAccJerk-std()-Y
tBAccJerkStd-Z			-			tBodyAccJerk-std()-Z 

tBGyroM-X 				-			tBodyGyro-mean()-X  
tBGyroM-Y 				-			tBodyGyro-mean()-Y
tBGyroM-Z 				-			tBodyGyro-mean()-Z 
tBGyroStd-X 			-			tBodyGyro-std()-X 
tBGyroStd-Y 			-			tBodyGyro-std()-Y
tBGyroStd-Z				-			tBodyGyro-std()-Z 

tBGyroJerkM-X 			-			tBodyGyroJerk-mean()-X  
tBGyroJerkM-Y 			-			tBodyGyroJerk-mean()-Y 
tBGyroJerkM-Z 			-			tBodyGyroJerk-mean()-Z 
tBGyroJerkStd-X 		-			tBodyGyroJerk-std()-X  
tBGyroJerkStd-Y 		- 			tBodyGyroJerk-std()-Y
tBGyroJerkStd-Z			-			tBodyGyroJerk-std()-Z

tBAccMagM 				-			tBodyAccMag-mean()
tBAccMagStd				-			tBodyAccMag-std()   

tGAccMagM 				-			tGravityAccMag-mean()  
tGAccMagStd 			-			tGravityAccMag-std()

tBAccJerkMagM 			-			tBodyAccJerkMag-mean() 
tBAccJerkMagStd			-			tBodyAccJerkMag-std()   

tBGyroMagM 				-			tBodyGyroMag-mean() 
tBGyroMagStd 			-			tBodyGyroMag-std()  

tBGyroJerkMagM 			-			tBodyGyroJerkMag-mean() 
tBGyroJerkMagStd 		-			tBodyGyroJerkMag-std()

fBAccM-X 				-			fBodyAcc-mean()-X 
fBAccM-Y 				-			fBodyAcc-mean()-Y 
fBAccM-Z 				-			fBodyAcc-mean()-Z 
fBAccStd-X 				-			fBodyAcc-std()-X 
fBAccStd-Y 				-			fBodyAcc-std()-Y   
fBAccStd-Z				-			fBodyAcc-std()-Z

fBAccMFreq-X 			-			fBodyAcc-meanFreq()-X 
fBAccMFreq-Y 			-			fBodyAcc-meanFreq()-Y   	
fBAccMFreq-Z			-			fBodyAcc-meanFreq()-Z 
 
fBAccJerkM-X 			-			fBodyAccJerk-mean()-X
fBAccJerkM-Y 			-			fBodyAccJerk-mean()-Y 
fBAccJerkM-Z 			-			fBodyAccJerk-mean()-Z  
fBAccJerkStd-X 			-			fBodyAccJerk-std()-X  
fBAccJerkStd-Y 			-			fBodyAccJerk-std()-Y 
fBAccJerkStd-Z			-			fBodyAccJerk-std()-Z

fBAccJerkMFreq-X 		-			fBodyAccJerk-meanFreq()-X	
fBAccJerkMFreq-Y 		-			fBodyAccJerk-meanFreq()-Y 
fBAccJerkMFreq-Z		-			fBodyAccJerk-meanFreq()-Z

fBGyroM-X 				-			fBodyGyro-mean()-X 
fBGyroM-Y 				-			fBodyGyro-mean()-Y 
fBGyroM-Z 				-			fBodyGyro-mean()-Z  
fBGyroStd-X 			-			fBodyGyro-std()-X 
fBGyroStd-Y 			-			fBodyGyro-std()-Y 
fBGyroStd-Z				-			fBodyGyro-std()-Z

fBGyroMFreq-X 			-			fBodyGyro-meanFreq()-X  
fBGyroMFreq-Y 			-			fBodyGyro-meanFreq()-Y  
fBGyroMFreq-Z			-			fBodyGyro-meanFreq()-Z  
	
fBAccMagM 				-			fBodyAccMag-mean()   
fBAccMagStd 			-			fBodyAccMag-std()   
fBAccMagMFreq			-			fBodyAccMag-meanFreq()    

fBAccJerkMagM			- 			fBodyBodyAccJerkMag-mean()
fBAccJerkMagStd			-			fBodyBodyAccJerkMag-std() 
fBBAccJerkMagMFreq		-			fBodyBodyAccJerkMag-meanFreq() 
 
fBBGyroMagM 			-			fBodyBodyGyroMag-mean()   
fBBGyroMagStd 			-			fBodyBodyGyroMag-std()  
fBBGyroMagMFreq			-			fBodyBodyGyroMag-meanFreq()
	
fBBGyroJerkMagM 		-			fBodyBodyGyroJerkMag-mean() 
fBBGyroJerkMagStd 		-			fBodyBodyGyroJerkMag-std()
fBBGyroJerkMagMFreq		-			fBodyBodyGyroJerkMag-meanFreq()

====================================

			OBJECTS

====================================

xtest					-			dataframe containing test data
ytest					-			dataframe containing test label data
xtrain					-			dataframe containing training data
ytrain					- 			dataframe containing training label data

subtest					- 			dataframe containing subject number data (for test data)
subtrain				- 			dataframe containing subject number data (for training data)
subject					- 			row-binded dataframe containing both test and training subject number

features				- 			dataframe containing corresponding indexes to feature names
meanIndex				-			array containing index number of words containing "mean"
stdIndex				-			array containing index number of words containing "std"
index					-			concatenated array of both "mean" and "std" word indexes

activity				-			dataframe containing values read from activity_label.txt

merged					-			merged data frame of both test and training data with their respective subject number and labels (using combination of rbind and cbind)

====================================

			PROCEDURE

====================================

1.) Load datasets (X_test, y_test, X_train, y_train) into R
2.) Load subject datasets (from test and train folders)
3.) Load features datasets and perform grep() to obtain feature indexes containing the words "mean" and "std"
4.) Filter out rows that does not have the words obtained by grep()
5.) Filter out both test and training data based on the row index data obtained by Step 4.
6.) Match y_labels to their respective activity using merge() function
7.) rbind subject datasets of test and training data into a single datasets
8.) Merge both training and test datasets with corresponding subject numbers and activity labels
9.) Create new vector containing appropriate descriptive names
10.) Replace all names in main dataset with said vector
11.) Subset data containing only values of mean and std (excluding Subject and Activity column)
12.) Use lapply() function to calculate mean of all columns
13.) Write table into .txt file to be placed in the same directory as R script.