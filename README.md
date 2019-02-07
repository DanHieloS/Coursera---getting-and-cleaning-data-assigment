# Coursera---getting-and-cleaning-data-assigment
This is the assigment for week 4 coursera course "Getting and cleaning data"

The purpose of this repo is to find the solution of the assigment mentioned above.
#instructions from coursera
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.

Review criteriamenos 
The submitted data set is tidy.
The Github repo contains the required scripts.
GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
The README that explains the analysis files is clear and understandable.
The work submitted for this project is the work of the student who submitted it.
Getting and Cleaning Data Course Projectmenos 
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names.
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Good luck!

# How the scrip works
## 1 General comments
For this assigment you should:
* download the data form the introduction (they are also below), unzip them into your working directory and work with them
* Develop a scrip.

## 2 Source of data
Those data are extract from a project related Human Activity Recognition Using Smartphones.
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
And here some information about the source:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## 3 About the Scrip
There are 5 steps to accomplish to develop the exercise
* create one data set by merging all others. It requires:
** Read all the tables
** Asign names to the columns
** Merge everything in one data set.
* Extract the measurements required (Mean and Standard deviation)
** Read column names
** Put in a vector the measurements
** Make a concrete subset
* Naming properly every one of the activities in the data set
* Label the data set with descriptive variable names
* Creating anoter tidy data set with the average of each variable for each activity and each subject
** Making second tidy data set
** Writing second tidy data set in txt file
