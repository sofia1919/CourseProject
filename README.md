README
========================================================
####The run_analysis.R code does the following:


*Merges the training and the test sets to create one data set

*Extracts only the measurements on the mean and standard deviation for each measurement

*Uses descriptive activity names to name the activities in the data set

*Appropriately labels the data set with descriptive activity names

*Creates a second, independent tidy data set with the average of each variable for each activity and each subject


```{r}
#Setting the working directory
setwd("C:/Users/user/Desktop/Coursera/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

features<-read.table("features.txt")
subtest<-read.table("subject_test.txt")
xtest<-read.table("X_test.txt")
ytest<-read.table("y_test.txt")
subtrain<-read.table("subject_train.txt")
xtrain<-read.table("X_train.txt")
ytrain<-read.table("y_train.txt")
activity<-read.table("activity_labels.txt")

#Checking how many rows and colums have xtrain and xtest
dim(xtest)
[1] 2947  561
> dim(xtrain)
[1] 7352  561


features$V2<-as.character(features$V2)

#Creating a list of the columnames
cnames<-list(features$V2)

#Setting the names from the "cnames" list as colnames of both tables "xtest" and "xtrain"
#Changing the names of ytest,ytrain,subtest,subtrain

names(xtest)<-make.names(cnames[[1]])
names(xtrain)<-make.names(cnames[[1]])

names(ytest)<-"Activity"
names(ytrain)<-"Activity"
names(subtest)<-"Subject"
names(subtrain)<-"Subject"

#Using cbind to create one dataset for "test" and "train"
test<-cbind(subtest,ytest,xtest)
train<-cbind(subtrain,ytrain,xtrain)

#Create the final table with test and train data

mydata<-rbind(test,train) 			

dim(mydata)
[1] 10299   563

# Subsetting only the measurements on the mean and standard deviation for each measurement.

meanstd<-mydata[,grepl("Subject|Activity|mean|std",names(mydata))]
> dim(meanstd)
[1] 10299    81

# Making tha names of the columns more userfriendly to work with

names(meanstd)<-gsub("\\.","",names(meanstd))
> head(names(meanstd))
[1] "Subject"       "Activity"      "tBodyAccmeanX" "tBodyAccmeanY" "tBodyAccmeanZ" "tBodyAccstdX" 

# Exclude all colums which contain "meanFreq" since this is not the same type of measurement as mean()
# Exclude all colums which contain "BodyBody" (they violate the description by the people that wrote the instructions, it should be Body or Gravity 

meanstd1<-meanstd[,!grepl("meanFreq",names(meanstd))&!grepl("BodyBx)ody",names(meanstd))]
> dim(meanstd1)
[1] 10299    62

#Replacing the numeric values with the labels for the respective activity

meanstd1$Activity[meanstd1$Activity==1] <-"WALKING"
meanstd1$Activity[meanstd1$Activity==2] <-"WALKING_UPSTAIRS"
meanstd1$Activity[meanstd1$Activity==3] <-"WALKING_DOWNSTAIRS"
meanstd1$Activity[meanstd1$Activity==4] <-"SITTING"
meanstd1$Activity[meanstd1$Activity==5] <-"STANDING"
meanstd1$Activity[meanstd1$Activity==6] <-"LAYING"

library(reshape2)

#Reshaping the data to aggregate the data and finally estimate average of each variable for each activity and each subject

meltdata<-melt(meanstd1, id=c("Subject","Activity"))

final_table<-dcast(meltdata, Subject + Activity ~ variable, mean)
head(final_table,12)

Subject           Activity tBodyAccmeanX tBodyAccmeanY tBodyAccmeanZ
1         1             LAYING     0.2215982  -0.040513953   -0.11320355
2         1            SITTING     0.2612376  -0.001308288   -0.10454418
3         1           STANDING     0.2789176  -0.016137590   -0.11060182
4         1            WALKING     0.2773308  -0.017383819   -0.11114810
5         1 WALKING_DOWNSTAIRS     0.2891883  -0.009918505   -0.10756619
6         1   WALKING_UPSTAIRS     0.2554617  -0.023953149   -0.09730200
7         2             LAYING     0.2813734  -0.018158740   -0.10724561
8         2            SITTING     0.2770874  -0.015687994   -0.10921827
9         2           STANDING     0.2779115  -0.018420827   -0.10590854
10        2            WALKING     0.2764266  -0.018594920   -0.10550036
11        2 WALKING_DOWNSTAIRS     0.2776153  -0.022661416   -0.11681294
12        2   WALKING_UPSTAIRS     0.2471648  -0.021412113   -0.15251390


dim(final_table)
[1] 180  62

#Saving the tidydata table as a .txt file in the working directory

write.table(final_table, file = "tidydata.txt", row.name=FALSE) 
```







