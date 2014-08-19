## Getting and Cleaning Data: Course Project

## Introduction

Peer Assessment Project for Getting and Cleaning Data, August 2014

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Data used

Unpacked data is stored in `UCI HAR Dataset/` and contains:

`test` is a folder with test data. Data is found in `X_test.txt`, activities in `y_test.txt` and subjects in `subject_test.txt`

`train` is a folder with training data. Data is found in `X_train.txt`, activities in `y_train.txt` and subjects in `subject_train.txt`

`activity_labels.txt` where activity id is mapped to activity name

`features.txt` where names of the bulk data is given

Other files and folders is not used

### Files in this repository

`README.md` this file

`summary_activity.txt` the cleaned and summarised data, comma separated. Se `CodeBook.md` for explanation of the data

`CodeBook.md` describes the cleaned data in `summary_activity.txt`

`run_analysis.R` R script for reading and cleaning the data. Automatically generates `summary_activity.txt`. 

### What the script does

The script reads training and testing data as one data table. Attaches the subject and activity as columns. Finally the script summaries only the mean and std columns of each variable for each activity and each subject.
A file `summary_activity.txt` is created.

#### Usage

In a folder with unpacked data in `UCI HAR Dataset/` just `source(run_analysis.R)`