
setwd("C:/Users/user/Desktop/Coursera/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

features<-read.table("features.txt")
subtest<-read.table("subject_test.txt")
xtest<-read.table("X_test.txt")
ytest<-read.table("y_test.txt")
subtrain<-read.table("subject_train.txt")
xtrain<-read.table("X_train.txt")
ytrain<-read.table("y_train.txt")
activity<-read.table("activity_labels.txt")

features$V2<-as.character(features$V2)

cnames<-list(features$V2)

names(xtest)<-make.names(cnames[[1]])
names(xtrain)<-make.names(cnames[[1]])

names(ytest)<-"Activity"
names(ytrain)<-"Activity"
names(subtest)<-"Subject"
names(subtrain)<-"Subject"


test<-cbind(subtest,ytest,xtest)
train<-cbind(subtrain,ytrain,xtrain)
mydata<-rbind(test,train) 			

meanstd<-mydata[,grepl("Subject|Activity|mean|std",names(mydata))]


names(meanstd)<-gsub("\\.","",names(meanstd))

# Exclude all colums which contain "meanFreq" since this is not the same type of measurement as mean()
# Exclude all colums which contain "BodyBody" (they violate the description by the people that wrote the instructions, it should be Body or Gravity 

meanstd1<-meanstd[,!grepl("meanFreq",names(meanstd))&!grepl("BodyBx)ody",names(meanstd))]


meanstd1$Activity[meanstd1$Activity==1] <-"WALKING"
meanstd1$Activity[meanstd1$Activity==2] <-"WALKING_UPSTAIRS"
meanstd1$Activity[meanstd1$Activity==3] <-"WALKING_DOWNSTAIRS"
meanstd1$Activity[meanstd1$Activity==4] <-"SITTING"
meanstd1$Activity[meanstd1$Activity==5] <-"STANDING"
meanstd1$Activity[meanstd1$Activity==6] <-"LAYING"

library(reshape2)

meltdata<-melt(meanstd1, id=c("Subject","Activity"))

final_table<-dcast(meltdata, Subject + Activity ~ variable, mean)

write.table(final_table, file = "tidydata.txt")  

