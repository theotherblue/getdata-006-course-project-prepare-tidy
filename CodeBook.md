### Getting and Cleaning Data: Course Project

### CodeBook

##### Description and columns of the aggregated data in summary_activity.txt

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

###### Legend

Acc: acceleration

Jerk: body linear acceleration and angular velocity

Mag: magnitude of three-dimensional signals were calculated using the Euclidean norm

###### Columns 

* "subject" subject id. Group of 30 volunteers within an age bracket of 19-48 years
* "activity" Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist

Time domain data

* "tBodyAcc.mean-X" 
* "tBodyAcc.mean-Y"          
* "tBodyAcc.mean-Z"
* "tBodyAcc.std-X"
* "tBodyAcc.std-Y"
* "tBodyAcc.std-Z"           
* "tGravityAcc.mean-X" 
* "tGravityAcc.mean-Y"
* "tGravityAcc.mean-Z"
* "tGravityAcc.std-X"        
* "tGravityAcc.std-Y"
* "tGravityAcc.std-Z"
* "tBodyAccJerk.mean-X"
* "tBodyAccJerk.mean-Y"      
* "tBodyAccJerk.mean-Z"
* "tBodyAccJerk.std-X"
* "tBodyAccJerk.std-Y"
* "tBodyAccJerk.std-Z"       
* "tBodyGyro.mean-X"
* "tBodyGyro.mean-Y"
* "tBodyGyro.mean-Z"
* "tBodyGyro.std-X"          
* "tBodyGyro.std-Y"
* "tBodyGyro.std-Z"
* "tBodyGyroJerk.mean-X"
* "tBodyGyroJerk.mean-Y"     
* "tBodyGyroJerk.mean-Z"
* "tBodyGyroJerk.std-X"
* "tBodyGyroJerk.std-Y"
* "tBodyGyroJerk.std-Z"      
* "tBodyAccMag.mean"
* "tBodyAccMag.std"
* "tGravityAccMag.mean"
* "tGravityAccMag.std"       
* "tBodyAccJerkMag.mean"
* "tBodyAccJerkMag.std"
* "tBodyGyroMag.mean"
* "tBodyGyroMag.std"         
* "tBodyGyroJerkMag.mean"
* "tBodyGyroJerkMag.std"

Frequency domain. Fast Fourier Transform (FFT) was applied

* "fBodyAcc.mean-X"
* "fBodyAcc.mean-Y"          
* "fBodyAcc.mean-Z"
* "fBodyAcc.std-X"
* "fBodyAcc.std-Y"
* "fBodyAcc.std-Z"           
* "fBodyAccJerk.mean-X"
* "fBodyAccJerk.mean-Y"
* "fBodyAccJerk.mean-Z"
* "fBodyAccJerk.std-X"       
* "fBodyAccJerk.std-Y"
* "fBodyAccJerk.std-Z"
* "fBodyGyro.mean-X" 
* "fBodyGyro.mean-Y"         
* "fBodyGyro.mean-Z" 
* "fBodyGyro.std-X"   
* "fBodyGyro.std-Y"      
* "fBodyGyro.std-Z"          
* "fBodyAccMag.mean"     
* "fBodyAccMag.std"        
* "fBodyBodyAccJerkMag.mean" 
* "fBodyBodyAccJerkMag.std"  
* "fBodyBodyGyroMag.mean"   
* "fBodyBodyGyroMag.std"   
* "fBodyBodyGyroJerkMag.mean"
* "fBodyBodyGyroJerkMag.std" 
