# get_clean_dat_courseproject

Getting and Cleaning Data - Course Project

====================================

			PRE-REQUISITE

====================================

1.) Packages required: "dplyr"
2.) run_analysis.R reads UCI HAR Dataset in the same directory where it is placed. If there is any error running the code, ensure that setwd() in R Console is set to where the folder is.

====================================

			WALKTHROUGH

====================================

The run_analysis.R script contains only 1 function: analysis()

Run "analysis()" in R Console and the script will perform all required operation

The R console will print 3 output sequentially:
1.) Output containing the merged dataset showing 81 columns (79 columns for "mean" and "std"; 1 column for subject number and 1 for Activity)(This output should satisfy Q1, Q2 and Q3)
2.) Output containing all the names of the merged dataset after batch rename (This output should satisfy Q4)
3.) Output containing results of lapply mean (This output should satisfy Q5)