---
title: "README"
author: "Fernando Aguiar"
output: html_document
---

## Project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set.
4. Appropriately labels the data set with descriptive activity names.
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Good luck!

## Steps

1. It is necessary to have te packages for the follow libraries

```
library(RCurl)
```
```
library(data.table)
```

2. Run the run_analysis.R script

## Script

1. [Step 1] Uses rbind to merge data from train and test sets. (variables, activities and subjects)
    ```{r}
mergeDS()
    ```
2. [Step 2] Uses grep function to search by mean() and std() variables with a regex.
    ```{r}
getMeanAndStd(ds_no_links)
    ```
3. [Step 3] Bind two columns, with the activity ids and the subjects numbers. For each activity ids its used the data set for the activity     labes to appropriately name them.
    ```{r}
assignActivityName(ds)
    ```
4. [Step 4] Uses names() function to appropriately name the variables and create the merged_ds.txt with the tidy and merged data set.
    ```{r}
assignVariablesLabel(ds)
    ```
5. [Step 5] Uses aggregate() function to create a data set with the average of each variable for each activity and each subject, named average_ds and create its .txt file.
    ```{r}
reateAverageDS(ds)
    ```
  

## Outputs

1. A .txt file named marged_ds with the tidy data.

2. A .txt file named average_ds with the tidy data for the average of the values for each variable for each activity and each subject.
