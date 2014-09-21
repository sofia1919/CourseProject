Codebook
========================================================
Human Activity Recognition Using Smartphones Dataset

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The dataset "tidydata.txt" contains 180 rows and 62 columns and includes:

* tidy data set with the average of each variable (mentioned above) for each of the six activities and each subject(each of the 30 volunteers)
* Column "Subject"- 1:30 volunteers
* Column "Activity"- 1:6 () (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,  SITTING, STANDING, LAYING)
* Attention!: Exclusion of all columns,containing "meanFreq" since this is not the same type of measurement as mean() as well as all columns,containing "BodyBody" (they violate the description by the people that wrote the instructions, it should be Body or Gravity 

The tidydata.txt file includes the following columns:


|    | names.tidydata.      |   |   |   |
|----|----------------------|---|---|---|
| 1  | Subject              |   |   |   |
| 2  | Activity             |   |   |   |
| 3  | tBodyAccmeanX        |   |   |   |
| 4  | tBodyAccmeanY        |   |   |   |
| 5  | tBodyAccmeanZ        |   |   |   |
| 6  | tBodyAccstdX         |   |   |   |
| 7  | tBodyAccstdY         |   |   |   |
| 8  | tBodyAccstdZ         |   |   |   |
| 9  | tGravityAccmeanX     |   |   |   |
| 10 | tGravityAccmeanY     |   |   |   |
| 11 | tGravityAccmeanZ     |   |   |   |
| 12 | tGravityAccstdX      |   |   |   |
| 13 | tGravityAccstdY      |   |   |   |
| 14 | tGravityAccstdZ      |   |   |   |
| 15 | tBodyAccJerkmeanX    |   |   |   |
| 16 | tBodyAccJerkmeanY    |   |   |   |
| 17 | tBodyAccJerkmeanZ    |   |   |   |
| 18 | tBodyAccJerkstdX     |   |   |   |
| 19 | tBodyAccJerkstdY     |   |   |   |
| 20 | tBodyAccJerkstdZ     |   |   |   |
| 21 | tBodyGyromeanX       |   |   |   |
| 22 | tBodyGyromeanY       |   |   |   |
| 23 | tBodyGyromeanZ       |   |   |   |
| 24 | tBodyGyrostdX        |   |   |   |
| 25 | tBodyGyrostdY        |   |   |   |
| 26 | tBodyGyrostdZ        |   |   |   |
| 27 | tBodyGyroJerkmeanX   |   |   |   |
| 28 | tBodyGyroJerkmeanY   |   |   |   |
| 29 | tBodyGyroJerkmeanZ   |   |   |   |
| 30 | tBodyGyroJerkstdX    |   |   |   |
| 31 | tBodyGyroJerkstdY    |   |   |   |
| 32 | tBodyGyroJerkstdZ    |   |   |   |
| 33 | tBodyAccMagmean      |   |   |   |
| 34 | tBodyAccMagstd       |   |   |   |
| 35 | tGravityAccMagmean   |   |   |   |
| 36 | tGravityAccMagstd    |   |   |   |
| 37 | tBodyAccJerkMagmean  |   |   |   |
| 38 | tBodyAccJerkMagstd   |   |   |   |
| 39 | tBodyGyroMagmean     |   |   |   |
| 40 | tBodyGyroMagstd      |   |   |   |
| 41 | tBodyGyroJerkMagmean |   |   |   |
| 42 | tBodyGyroJerkMagstd  |   |   |   |
| 43 | fBodyAccmeanX        |   |   |   |
| 44 | fBodyAccmeanY        |   |   |   |
| 45 | fBodyAccmeanZ        |   |   |   |
| 46 | fBodyAccstdX         |   |   |   |
| 47 | fBodyAccstdY         |   |   |   |
| 48 | fBodyAccstdZ         |   |   |   |
| 49 | fBodyAccJerkmeanX    |   |   |   |
| 50 | fBodyAccJerkmeanY    |   |   |   |
| 51 | fBodyAccJerkmeanZ    |   |   |   |
| 52 | fBodyAccJerkstdX     |   |   |   |
| 53 | fBodyAccJerkstdY     |   |   |   |
| 54 | fBodyAccJerkstdZ     |   |   |   |
| 55 | fBodyGyromeanX       |   |   |   |
| 56 | fBodyGyromeanY       |   |   |   |
| 57 | fBodyGyromeanZ       |   |   |   |
| 58 | fBodyGyrostdX        |   |   |   |
| 59 | fBodyGyrostdY        |   |   |   |
| 60 | fBodyGyrostdZ        |   |   |   |
| 61 | fBodyAccMagmean      |   |   |   |
| 62 | fBodyAccMagstd       |   |   |   |


