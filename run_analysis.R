## Read the test and training files

  subject_test <- read.table("./test/subject_test.txt", sep="")
  X_test <- read.table("./test/X_test.txt", sep = "")
  y_test <- read.table("./test/y_test.txt", sep="")
  subject_train <- read.table("./train/subject_train.txt", sep="")
  X_train <- read.table("./train/X_train.txt", sep="")
  y_train <- read.table("./train/y_train.txt", sep="")
  test_data <- cbind(subject_test, y_test,X_test)
  train_data <- cbind(subject_train, y_train,X_train)

## Merge the training and the test sets to create one dataset

  test_train <- rbind(test_data, train_data)
  name <- read.table("./features.txt", stringsAsFactors = FALSE)
  colnames(test_train) <- c("subject", "activity",name$V2)## Extract only the measurements on the mean and standard deviation for each measurement
  
  namelist <- grep("[M,m]ean|[S,s]td", name$V2,value=TRUE)
  new_test_train <- test_train[,c("subject","activity",namelist)]
  
## Use descriptive activity names to name the activities in the data set
  activity <- read.table("./activity_labels.txt", stringsAsFactors = FALSE)
  activity_labels <- activity[,2]
  for (i in 1:length(new_test_train$activity)){
      new_test_train$activity[i] <- activity_labels[as.numeric(new_test_train$activity[i])]
  }
  
## Appropriately label the data set with descriptive variable names
  library(stringr)
  colnames(new_test_train) <- tolower(names(new_test_train))
  colnames(new_test_train) <- sub("^t","time",names(new_test_train))
  colnames(new_test_train) <- sub("^f","freq",names(new_test_train))
  colnames(new_test_train) <- str_replace_all(names(new_test_train),"[[:punct:]]","")

## create a second, independent tidy data set with the average of each variable for each activity and each subject.
  library(plyr)
  avg_data <- ddply(new_test_train, c("subject","activity"),numcolwise(mean))
  write.table(avg_data,file="./avg_tidy_data.txt",row.names=FALSE)
  
