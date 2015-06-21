library(dplyr)
library(tidyr)
    var<-read.table("features.txt")##reading in the variable labels
    act<-read.table("activity_labels.txt") ##reading in the activity values
    varlabel<-sapply(var[2], as.character)##reading out the variable titles into a character vector
    actlabel<-sapply(act[2], as.character) ##reading out the activity titles into a character vector, the order will be the same as the numbers assigned to them 
    testsub<-read.table("./test/subject_test.txt") ##reading the subject data from the test data
    xtest<-read.table("./test/X_test.txt") ##reading the X data from the test data
    ytest<-read.table("./test/y_test.txt") ##reading the y data from the test data
    xtrain<-read.table("./train/X_train.txt") ##reading the X data from the train data
    ytrain<-read.table("./train/y_train.txt") ##reading the Y data from the train data
    trainsub<-read.table("./train/subject_train.txt") ##reading the subject data from the train data
    testtotal<-cbind(testsub,ytest, xtest) ##combining all the test data
    traintotal<-cbind(trainsub, ytrain, xtrain) ##combining all the train data
    rm(var,act,testsub,xtest,ytest,xtrain,ytrain,trainsub) ##clearing unneeded objects from memory
    variables<-c("Subject", "Activity", varlabel) ##creating a character vector for column names
    colnames(testtotal)<-variables ##labeling the columns in test data
    colnames(traintotal)<-variables ##labeling the columns in train data
    testtotal<-tbl_df(testtotal) ##converting to tbl so dplyr can be used
    traintotal<-tbl_df(traintotal) ##converting to tbl so dplyr can be used
    totaldata<- rbind(testtotal,traintotal) ##combines the two data sets to complete requirement 1
    
    ##Requirement 1 complete. 
    variables<-gsub("mean()", "MEANKEEP", variables) ##Changing the names so the means and standard deviations can be sorted after make.names() is applied
    variables<-gsub("std()", "STDKEEP", variables)
    variables<-make.names(variables, unique=TRUE)##making the variable titles into valid names for later selection
    colnames(totaldata)<-variables##changes the column names of totaldata
    totaldata<-arrange(totaldata,Subject, Activity)  ##rearranges things by subject, then activity
    totaldata$Activity<-factor(totaldata$Activity, labels=actlabel) ##changing Activity column from integer to factor variable with the activity labels completing requirement 2
    desireddata<-select(totaldata, Subject, Activity, contains("MEANKEEP"), contains("STDKEEP"), -contains("Freq")) ##selects out the mean and standard deviation for each measurement completing requirement 3. Removes the frequency variables as these are not mean or standard deviations.
    
    ## Requirements 2 & 3 complete
    variables<-names(desireddata) ##collecting the names of the current variables in the data set
    ## The following commands are intended to create descriptive variable names from the original variable names
    variables<-gsub("X", 'X-axis', variables)
    variables<-gsub("Y", 'Y-axis', variables)
    variables<-gsub("Z", 'Z-axis', variables)
    variables<-gsub("tBodyAcc", "Body Accelerometer Time Domain ", variables)
    variables<-gsub("tGravityAcc", "Gravity Accelerometer Time Domain ", variables)
    variables<-gsub("tBodyGyro", "Body Gyroscope Time Domain ", variables)
    variables<-gsub("tBodyGyro", "Gravity Gyroscope Time Domain ", variables)
    variables<-gsub("fBodyAcc", "Body Accelerometer FFT ", variables)
    variables<-gsub("fBodyBodyAcc", "Body Accelerometer FFT ", variables)
    variables<-gsub("fGravityAcc", "Gravity Accelerometer FFT ", variables)
    variables<-gsub("fBodyGyro", "Body Gyroscope FFT ", variables)
    variables<-gsub("fBodyBodyGyro", "Body Gyroscope FFT ", variables)
    variables<-gsub("fGravityAcc", "Gravity Gyroscope FFT ", variables)
    variables<-gsub(".MEANKEEP", 'Mean ', variables)
    variables<-gsub(".STDKEEP", "Standard Deviation ", variables)
    variables<-gsub("Jerk", "Jerk Signal ", variables)
    variables<-gsub("Mag", "Magnitude ", variables)
    variables<-gsub("\\.","", variables)
    colnames(desireddata)<-variables ##assigns the new names to the data frame
    ##Requirement 4 complete
    
    aveactivity<-group_by(desireddata, Subject, Activity) %>% summarise_each(funs(mean))##Organizing the data first by subject then by activity, then calculating the average for each acivity and each subject completing requirement 5
    ## Requirement 5 complete. Each variable has its own column, each different observation is on one row, there is one observational unit (subject + activity)
    write.table(aveactivity, "tidy_accelerometer_data.txt", row.name=FALSE) ##Tidy data file is outputted. 
    