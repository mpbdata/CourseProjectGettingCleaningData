﻿##RUNNING THE SCRIPT
The script is intended to be run with the UCI HAR Dataset folder created from the unzipped data as your working directory. The script relies on the dplyr package and tidyr packages. 
##PROCESSING OF RAW DATA
In order to construct a data frame from the dispersed data, the script will read all the text files into R using the read.table() function. In addition to the accelerometer data in the test and train folders the variable names and activities are read from features.txt and activity_labels.txt. They are transferred to character vectors so they could be used later in providing descriptive names.

The script next creates two data frames, one containing the test data (testtotal) and the other the train data (traintotal). The cbind() function is used to accomplish this. The subject ID values are put in the first column, the data corresponding to the activities in the second column, and all of the measurements in the X_test or X_train files comprise the rest of the data frame. 

After these two data frames are created the script clears the previous data frames to free up memory. A character vector containing the characters “Subject” and Activity” along with the character vectors previously created from features.txt and activity_labels.txt is then created and used to assign column names to the testtotal and traintotal data frames. The data frames are then converted into a data frame tbl using the tbl_df() function from the dplyr package so the dplyr functions will work properly. 

These two data frames are then combined using the rbind() functions. As the two data sets had no values in the Subject column in common this is an easy way to unify the data into one data frame. The new data frame is called totaldata. 
The assignment requires the means and standard deviations of the measurements to be separated from the data. This was interpreted as the variables with either mean() or std() in their names. The gsub() function is applied to replace mean() or std() with MEANKEEP or STDKEEP in the character vector previously used to label the columns. The make.names() function is then applied to the modified character vector that is subsequently applied to the column names of totaldata.

It was necessary to do this because the dplyr functions will not work properly unless the column names are properly formatted. If the make.names() function is used on the unaltered column names it would replace the () in mean() or std(). This makes it difficult to separate the desired variables form variables with “mean” or “std” in their title that are not mean or standard deviation measurements. By changing mean() and std() with gsub() to MEANKEEP and STDKEEP the script identifies the variables needed for the tidy data, makes the columns distinct from other variables with the phrase mean or std, and puts the title in a form that will not be altered by the make.names() function.

The arrange function of the dplyr package is then used to organize totaldata by Subject and then Activity. In order to fulfil the requirement for descriptive activity names, the Activity column of totaldata is converted into a factor vector with labels corresponding to the activity names in activity_labels.txt. When read into R the order of the labels corresponds to their numeric labels (i.e. the first label name has a numeric label of 1). This insures the correct activity labels are applied to the correct numbers in the activity column. 

The select() function of the dplyr package is then used by the script to create a new data frame called desireddata. The columns of desireddata are Subject, Activity, and the columns containing the phrase MEANKEEP or STDKEEP. This creates a data frame containing only the Subject, Activity, and the means and standard deviations of the measurements.

The variable names were made more descriptive using a series of gsub() functions to replace the shorthand in the original variables names with more descriptive terms. The modified variable names are then applied to the column names of desireddata.

The group_by() and summarise_each() functions of the dplyr package were then used to calculate the average values for each variable corresponding to each subject and activity in desireddata and a final data frame aveactivity was created as a result. The aveactivity data frame is then read out into a tab-deliminated text file using the write.table() function.

##SCRIPT RESULT
The file produced by the script is organized by Subject, and then Activity, with both descriptive activity names and descriptive variable names. It has one observation per row, one variable per column, and only one observational variable in the table. This is a tidy data set as defined by the course lectures and the article by Hadley Wickham. 
