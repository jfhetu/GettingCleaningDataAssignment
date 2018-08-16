##
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
#     of each variable for each activity and each subject.


run_analysis <- function(){
  # Setting project variables
  project.home.directory <- file.path("UCI HAR Dataset")
  activity.labels <- read.table(file.path(project.home.directory,"activity_labels.txt"), stringsAsFactors = FALSE)
  features.names <- tolower(read.table(file.path(project.home.directory,"features.txt"), stringsAsFactors = FALSE)[,2])
  
  #open the training data set
  directory <- file.path(project.home.directory,"train")
  
  ##Training activity labels
  training_table_filename <- file.path(directory,"y_train.txt")
  if(!file.exists(training_table_filename)) 
  {stop(paste("File ", training_table_filename, "does not exist"))}
  trainingactivity <- read.table(training_table_filename)
  
  ##Training subjects
  subject_table_filename <- file.path(directory,"subject_train.txt")
  if(!file.exists(training_table_filename)) 
  {stop(paste("File ", subject_table_filename, "does not exist"))}
  trainingsubject <- read.table(subject_table_filename)
  
  
  
  ##Training set
  set_table_filename <- file.path(directory,"X_train.txt")
  if(!file.exists(set_table_filename)) 
  {stop(paste("File ", set_table_filename, "does not exist"))}
  trainingset <- read.table(set_table_filename)
  
  ## tidying up the variables in a dplyt tbl
  training <- tbl_df(data.frame(trainingsubject, trainingactivity, trainingset))
  col.from <- names(training)
  col.to <- c("subject", "activity", features.names) 
  
  training <- training %>% rename_at(vars(col.from), function(x) col.to) %>% head(2)
  
  #open the test data set
  directory <- file.path("UCI HAR Dataset","test")
  
  ##Test activity labels
  test_table_filename <- file.path(directory,"y_test.txt")
  if(!file.exists(test_table_filename)) 
  {stop(paste("File ", test_table_filename, "does not exist"))}
  testactivity <- read.table(test_table_filename)
  
  ##Training subjects
  subject_table_filename <- file.path(directory,"subject_test.txt")
  if(!file.exists(test_table_filename)) 
  {stop(paste("File ", subject_table_filename, "does not exist"))}
  testsubject <- read.table(subject_table_filename)
  
  ##Training set
  set_table_filename <- file.path(directory,"X_test.txt")
  if(!file.exists(set_table_filename)) 
  {stop(paste("File ", set_table_filename, "does not exist"))}
  testset <- read.table(set_table_filename)
  
  ## tidying up the variables in a dplyr tbl
  test <- tbl_df(data.frame(testsubject, testactivity, testset))
  col.from <- names(test)
  col.to <- c("subject", "activity", features.names) 
  
  test<- test %>% rename_at(vars(col.from), function(x) col.to) %>% head(2)
  
  # Merge the data sets
  data.all <- bind_rows(training, test)
  
  # Extract only means and standard deviation
  names(data.all)
  data.meanstd <- select(data.all, subject, activity, matches("mean|std"))
  names(data.meanstd)
  
  # Extract only means 
  data.mean <- select(data.meanstd, subject, activity, matches("mean"))
  names(data.mean)
  
  ret<- list( meanstd = data.meanstd, mean = data.mean)
  ret
}
