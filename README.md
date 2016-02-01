# tidy-data
Project in Data Cleaning course 

First read in each of the 3 test files(subject, x,y) and 3 training files(subject,x,y)
Column bind the 3 files in each set to create a training set and a test set with 563 variables each
Then row bind to create a single merged file with training data and test data of 563 variables and 10299 rows

The variables are named as V1, V2,....
Change the variable names to Subject, activity and the names of the observations

Create a dataframe by sekecting columns with only mean and std values of the variables
The resulting dataframe now has 88 variables

Change names to lower case and eliminate "_-()" non-alphanumeric characters, also change
    leading t to "time" and leading f to "freq"

Create a new tidy data set by aggregating/summarizing observationsbased on combination of (Subject + Activity) and 
      creating a mean of the observations that are duplicated ussing ddply from the Pylr library.
The resulting dataframe now has 180 rows and 88 columns
Write this data frame to a new table
