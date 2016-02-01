# Code Book explaining the variables used for the Project

The original data for this project is available from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The merged dataframe of the training and test data with only the mean data variables extracted comprises 88 variables of 10299 total observations.

The time domain variables were indicated with a leading "time" prefix while the frequency domain variables were indicated with a leading "freq" prefix

There are duplicate subject and activity observations and so by the principle of tidy data, those observations have been averaged.

Resulting data frame was written to the avg_tidy_data.txt file and comprises 180 observations of 88 variables

## Activity labels are the following:

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

## Variables(88):

subject
activity
timebodyaccmeanx 
timebodyaccmeany 
timebodyaccmeanz
timebodyaccstdx 
timebodyaccstdy 
timebodyaccstdz 
timegravityaccmeanx
timegravityaccmeany 
timegravityaccmeanz 
timegravityaccstdx 
timegravityaccstdy
timegravityaccstdz 
timebodyaccjerkmeanx 
timebodyaccjerkmeany
timebodyaccjerkmeanz 
timebodyaccjerkstdx 
timebodyaccjerkstdy
timebodyaccjerkstdz
timebodygyromeanx 
timebodygyromeany 
timebodygyromeanz 
timebodygyrostdx
timebodygyrostdy 
timebodygyrostdz 
timebodygyrojerkmeanx 
timebodygyrojerkmeany
timebodygyrojerkmeanz 
timebodygyrojerkstdx 
timebodygyrojerkstdy
timebodygyrojerkstdz 
timebodyaccmagmean 
timebodyaccmagstd
timegravityaccmagmean 
timegravityaccmagstd 
timebodyaccjerkmagmean
timebodyaccjerkmagstd 
timebodygyromagmean 
timebodygyromagstd
timebodygyrojerkmagmean 
timebodygyrojerkmagstd 
freqbodyaccmeanx
freqbodyaccmeany 
freqbodyaccmeanz 
freqbodyaccstdx 
freqbodyaccstdy
freqbodyaccstdz 
freqbodyaccmeanfreqx 
freqbodyaccmeanfreqy
freqbodyaccmeanfreqz 
freqbodyaccjerkmeanx 
freqbodyaccjerkmeany
freqbodyaccjerkmeanz 
freqbodyaccjerkstdx 
freqbodyaccjerkstdy
freqbodyaccjerkstdz 
freqbodyaccjerkmeanfreqx 
freqbodyaccjerkmeanfreqy
freqbodyaccjerkmeanfreqz
freqbodygyromeanx 
freqbodygyromeany 
freqbodygyromeanz 
freqbodygyrostdx
freqbodygyrostdy 
freqbodygyrostdz 
freqbodygyromeanfreqx 
freqbodygyromeanfreqy
freqbodygyromeanfreqz 
freqbodyaccmagmean 
freqbodyaccmagstd
freqbodyaccmagmeanfreq 
freqbodybodyaccjerkmagmean 
freqbodybodyaccjerkmagstd
freqbodybodyaccjerkmagmeanfreq 
freqbodybodygyromagmean 
freqbodybodygyromagstd
freqbodybodygyromagmeanfreq 
freqbodybodygyrojerkmagmean
freqbodybodygyrojerkmagstd 
freqbodybodygyrojerkmagmeanfreq
angletbodyaccmeangravity 
angletbodyaccjerkmeangravitymean
angletbodygyromeangravitymean 
angletbodygyrojerkmeangravitymean
anglexgravitymean 
angleygravitymean 
anglezgravitymean
