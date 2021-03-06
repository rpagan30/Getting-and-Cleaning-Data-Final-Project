## Code Book
by Rafael Pagan  
August 15, 2017  

## Getting and Cleaning Data Course Project
One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Transformations to the data

When executed the run_analysis.R script carries out the following steps to transform the data:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each         variable for each activity and each subject.

Additionally, the feature names were modified to be shorter and more descriptive. Namely "tBody"and "fBody"" labels were replaced with the shorter "Time" and "Frequency" labels.

## List of Included Features
Subject  
TimeAccMeanX  
TimeAccMeanY  
TimeAccMeanZ  
TimeAccStdX  
TimeAccStY  
TimeAccStdZ  
TGravityAccMeanX  
TGravityAccMeanY  
TGravityAccMeanZ  
TGravityAccStdX                  
TGravityAccStdY                   
TGravityAccStdZ   
TimeAccJerkMeanX                   
TimeAccJerkMeanY                  
TimeAccJerkMeanZ  
TimeAccJerkStdX  
TimeAccJerkStdY  
TimeAccJerkStdZ  
TimeGyroMeanX   
TimeGyroMeanY                  
TimeGyroMeanZ  
TimeGyroStdX    
TimeGyroStdY                   
TimeGyroStdZ  
TimeGyroJerkMeanX  
TimeGyroJerkMeanY  
TimeGyroJerkMeanZ  
TimeGyroJerkStdX  
TimeGyroJerkStdY                
TimeGyroJerkStdZ  
TimeAccMagMean  
TimeAccMagStd   
TGravityAccMagMean  
TGravityAccMagStd  
TimeAccJerkMagMean               
TimeAccJerkMagStd  
TimeGyroMagMean     
TimeGyroMagStd                  
TimeGyroJerkMagMean   
TimeGyroJerkMagStd    
FrequencyAccMeanX  
FrequencyAccMeanY  
FrequencyAccMeanZ  
FrequencyAccStdX                
FrequencyAccStdY  
FrequencyAccStdZ  
FrequencyAccMeanFreqX           
FrequencyAccMeanFreqY  
FrequencyAccMeanFreqZ 
FrequencyAccJerkMeanX           
FrequencyAccJerkMeanY  
FrequencyAccJerkMeanZ  
FrequencyAccJerkStdX            
FrequencyAccJerkStdY  
FrequencyAccJerkStdZ  
FrequencyAccJerkMeanFreqX        
FrequencyAccJerkMeanFreqY  
FrequencyAccJerkMeanFreqZ  
FrequencyGyroMeanX  
FrequencyGyroMeanY  
FrequencyGyroMeanZ  
FrequencyGyroStdX   
FrequencyGyroStdY  
FrequencyGyroStdZ  
FrequencyGyroMeanFreqX          
FrequencyGyroMeanFreqY  
FrequencyGyroMeanFreqZ  
FrequencyAccMagMean             
FrequencyAccMagStd  
FrequencyAccMagMeanFreq  
FrequencyBodyAccJerkMagMean       
FrequencyBodyAccJerkMagStd  
FrequencyBodyAccJerkMagMeanFreq   
FrequencyBodyGyroMagMean        
FrequencyBodyGyroMagStd  
FrequencyBodyGyroMagMeanFreq   
FrequencyBodyGyroJerkMagMean    
FrequencyBodyGyroJerkMagStd  
FrequencyBodyGyroJerkMagMeanFreq  
Activity Label

# More information about the features from the original source
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

Features are normalized and bounded within [-1,1].

## Types of activities
The previous features serve as predictors for the following types of activities:
WALKING  
WALKING UPSTAIRS  
WALKING DOWNSTAIRS  
SITTING  
STANDING           
LAYING  
