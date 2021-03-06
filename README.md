## README
by Rafael Pagan  
August 15, 2017

## Getting and Cleaning Data Course Project README
This repository contains the work to fulfill the requirements of the final project for the course Getting and Cleaning Data by Johns Hopkins, offered through Coursera.

Additional to this read me, in it you will find:

-A script that takes the messy data set from the "Human Activity Recognition Using Smartphones Data Set" (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and produces a tidy data set, "tidy_UCI_HAR_Dataset.txt", and, "tidy_averages_UCI_HAR_Dataset.txt", a data set that includes the means of all of the features per subject presented in the code book. Both have been produced according to the definitions presented by Hadley Wickham in his paper "Tidy Data" (http://www.stat.wvu.edu/~jharner/courses/stat623/docs/tidy-dataJSS.pdf).

-A code book that describes the processing applied to the original data set.  

USAGE:

1. Copy the run_analysis.R script to a working directory that contains a folder named "data" with the extracted UCI HAR Data set.
2. Run the R script.

``` {R script}
source('./run_analysis.R')
```
