---
title: "CodeBook"
author: "Fernando Aguiar"
output: html_document
---

Data Set Information
--------------------

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Variable Description
--------------------

|Variable | Description|
|------------- | -------------|
|subject	| Subject |
|activities	| The activity performed|
|tbodyacc-mean-x	| Mean time for acceleration of body for X direction|
|tbodyacc-mean-y	| Mean time for acceleration of body for Y direction|
|tbodyacc-mean-z	| Mean time for acceleration of body for Z direction|
|tbodyacc-std-x	| Standard deviation of time for acceleration of body for X direction|
|tbodyacc-std-y	| Standard deviation of time for acceleration of body for Y direction|
|tbodyacc-std-z	| Standard deviation of time for acceleration of body for Z direction|
|tgravityacc-mean-x	| Mean time of acceleration of gravity for X direction|
|tgravityacc-mean-y	| Mean time of acceleration of gravity for Y direction|
|tgravityacc-mean-z	| Mean time of acceleration of gravity for Z direction|
|tgravityacc-std-x	| Standard deviation of time of acceleration of gravity for X direction|
|tgravityacc-std-y	|  deviation of time of acceleration of gravity for Y direction|
|tgravityacc-std-z	| Standard deviation of time of acceleration of gravity for Z direction|
|tbodyaccjerk-mean-x	| Mean time of body acceleration jerk for X direction|
|tbodyaccjerk-mean-y	| Mean time of body acceleration jerk for Y direction|
|tbodyaccjerk-mean-z	| Mean time of body acceleration jerk for Z direction|
|tbodyaccjerk-std-x	| Standard deviation of time of body acceleration jerk for X direction|
|tbodyaccjerk-std-y	| Standard deviation of time of body acceleration jerk for Y direction|
|tbodyaccjerk-std-z	| Standard deviation of time of body acceleration jerk for Z direction|
|tbodygyro-mean-x	| Mean body gyroscope measurement for X direction|
|tbodygyro-mean-y	| Mean body gyroscope measurement for Y direction|
|tbodygyro-mean-z	| Mean body gyroscope measurement for Z direction|
|tbodygyro-std-x	| Standard deviation of body gyroscope measurement for X direction|
|tbodygyro-std-y	| Standard deviation of body gyroscope measurement for Y direction|
|tbodygyro-std-z	| Standard deviation of body gyroscope measurement for Z direction|
|tbodygyrojerk-mean-x	| Mean jerk signal of body for X direction|
|tbodygyrojerk-mean-y	| Mean jerk signal of body for Y direction|
|tbodygyrojerk-mean-z	| Mean jerk signal of body for Z direction|
|tbodygyrojerk-std-x	| Standard deviation of jerk signal of body for X direction|
|tbodygyrojerk-std-y	| Standard deviation of jerk signal of body for Y direction|
|tbodygyrojerk-std-z	| Standard deviation of jerk signal of body for Z direction|
|tbodyaccmag-mean	| Mean magnitude of body Acc|
|tbodyaccmag-std	| Standard deviation of magnitude of body Acc|
|tgravityaccmag-mean	| Mean gravity acceleration magnitude|
|tgravityaccmag-std	| Standard deviation of gravity acceleration magnitude|
|tbodyaccjerkmag-mean	| Mean magnitude of body acceleration jerk|
|tbodyaccjerkmag-std	| Standard deviation of magnitude of body acceleration jerk|
|tbodygyromag-mean	| Mean magnitude of body gyroscope measurement|
|tbodygyromag-std	| Standard deviation of magnitude of body gyroscope measurement|
|tbodygyrojerkmag-mean	| Mean magnitude of body body gyroscope jerk measurement|
|tbodygyrojerkmag-std	| Standard deviation of magnitude of body body gyroscope jerk measurement|
|fbodyacc-mean-x	| Mean frequency of body acceleration for X direction|
|fbodyacc-mean-y	| Mean frequency of body acceleration for Y direction|
|fbodyacc-mean-z	| Mean frequency of body acceleration for Z direction|
|fbodyacc-std-x	| Standard deviation of frequency of body acceleration for X direction|
|fbodyacc-std-y	| Standard deviation of frequency of body acceleration for Y direction|
|fbodyacc-std-z	| Standard deviation of frequency of body acceleration for Z direction|
|fbodyaccjerk-mean-x	| Mean frequency of body accerlation jerk for X direction|
|fbodyaccjerk-mean-y	| Mean frequency of body accerlation jerk for Y direction|
|fbodyaccjerk-mean-z	| Mean frequency of body accerlation jerk for Z direction|
|fbodyaccjerk-std-x	| vStandard deviation frequency of body accerlation jerk for X direction|
|fbodyaccjerk-std-y	| Standard deviation frequency of body accerlation jerk for Y direction|
|fbodyaccjerk-std-z	| Standard deviation frequency of body accerlation jerk for Z direction|
|fbodygyro-mean-x	| Mean frequency of body gyroscope measurement for X direction|
|fbodygyro-mean-y	| Mean frequency of body gyroscope measurement for Y direction|
|fbodygyro-mean-z	| Mean frequency of body gyroscope measurement for Z direction|
|fbodygyro-std-x	| Standard deviation frequency of body gyroscope measurement for X direction|
|fbodygyro-std-y	| Standard deviation frequency of body gyroscope measurement for Y direction|
|fbodygyro-std-z	| Standard deviation frequency of body gyroscope measurement for Z direction|
|fbodyaccmag-mean	| Mean frequency of body acceleration magnitude|
|fbodyaccmag-std	| Standard deviation of frequency of body acceleration magnitude|
|fbodybodyaccjerkmag-mean	| Mean frequency of body acceleration jerk magnitude|
|fbodybodyaccjerkmag-std	| Standard deviation of frequency of body acceleration jerk magnitude|
|fbodybodygyromag-mean	| Mean frequency of magnitude of body gyroscope measurement|
|fbodybodygyromag-std	| Standard deviation of frequency of magnitude of body gyroscope measurement|
|fbodybodygyrojerkmag-mean	| Mean frequency of magnitude of body gyroscope jerk measurement|
|fbodybodygyrojerkmag-std	| Standard deviation frequency of magnitude of body gyroscope jerk measurement|

Data Structure
--------------

    ## 'data.frame':    10299 obs. of  68 variables:
    ##  $ subject                  : int  1 1 1 1 1 1 1 1 1 1 ...
    ##  $ activity                 : chr  "standing" "standing" "standing" "standing" ...
    ##  $ tbodyacc-mean-x          : num  0.289 0.278 0.28 0.279 0.277 ...
    ##  $ tbodyacc-mean-y          : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
    ##  $ tbodyacc-mean-z          : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
    ##  $ tbodyacc-std-x           : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
    ##  $ tbodyacc-std-y           : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
    ##  $ tbodyacc-std-z           : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
    ##  $ tgravityacc-mean-x       : num  0.963 0.967 0.967 0.968 0.968 ...
    ##  $ tgravityacc-mean-y       : num  -0.141 -0.142 -0.142 -0.144 -0.149 ...
    ##  $ tgravityacc-mean-z       : num  0.1154 0.1094 0.1019 0.0999 0.0945 ...
    ##  $ tgravityacc-std-x        : num  -0.985 -0.997 -1 -0.997 -0.998 ...
    ##  $ tgravityacc-std-y        : num  -0.982 -0.989 -0.993 -0.981 -0.988 ...
    ##  $ tgravityacc-std-z        : num  -0.878 -0.932 -0.993 -0.978 -0.979 ...
    ##  $ tbodyaccjerk-mean-x      : num  0.078 0.074 0.0736 0.0773 0.0734 ...
    ##  $ tbodyaccjerk-mean-y      : num  0.005 0.00577 0.0031 0.02006 0.01912 ...
    ##  $ tbodyaccjerk-mean-z      : num  -0.06783 0.02938 -0.00905 -0.00986 0.01678 ...
    ##  $ tbodyaccjerk-std-x       : num  -0.994 -0.996 -0.991 -0.993 -0.996 ...
    ##  $ tbodyaccjerk-std-y       : num  -0.988 -0.981 -0.981 -0.988 -0.988 ...
    ##  $ tbodyaccjerk-std-z       : num  -0.994 -0.992 -0.99 -0.993 -0.992 ...
    ##  $ tbodygyro-mean-x         : num  -0.0061 -0.0161 -0.0317 -0.0434 -0.034 ...
    ##  $ tbodygyro-mean-y         : num  -0.0314 -0.0839 -0.1023 -0.0914 -0.0747 ...
    ##  $ tbodygyro-mean-z         : num  0.1077 0.1006 0.0961 0.0855 0.0774 ...
    ##  $ tbodygyro-std-x          : num  -0.985 -0.983 -0.976 -0.991 -0.985 ...
    ##  $ tbodygyro-std-y          : num  -0.977 -0.989 -0.994 -0.992 -0.992 ...
    ##  $ tbodygyro-std-z          : num  -0.992 -0.989 -0.986 -0.988 -0.987 ...
    ##  $ tbodygyrojerk-mean-x     : num  -0.0992 -0.1105 -0.1085 -0.0912 -0.0908 ...
    ##  $ tbodygyrojerk-mean-y     : num  -0.0555 -0.0448 -0.0424 -0.0363 -0.0376 ...
    ##  $ tbodygyrojerk-mean-z     : num  -0.062 -0.0592 -0.0558 -0.0605 -0.0583 ...
    ##  $ tbodygyrojerk-std-x      : num  -0.992 -0.99 -0.988 -0.991 -0.991 ...
    ##  $ tbodygyrojerk-std-y      : num  -0.993 -0.997 -0.996 -0.997 -0.996 ...
    ##  $ tbodygyrojerk-std-z      : num  -0.992 -0.994 -0.992 -0.993 -0.995 ...
    ##  $ tbodyaccmag-mean         : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
    ##  $ tbodyaccmag-std          : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
    ##  $ tgravityaccmag-mean      : num  -0.959 -0.979 -0.984 -0.987 -0.993 ...
    ##  $ tgravityaccmag-std       : num  -0.951 -0.976 -0.988 -0.986 -0.991 ...
    ##  $ tbodyaccjerkmag-mean     : num  -0.993 -0.991 -0.989 -0.993 -0.993 ...
    ##  $ tbodyaccjerkmag-std      : num  -0.994 -0.992 -0.99 -0.993 -0.996 ...
    ##  $ tbodygyromag-mean        : num  -0.969 -0.981 -0.976 -0.982 -0.985 ...
    ##  $ tbodygyromag-std         : num  -0.964 -0.984 -0.986 -0.987 -0.989 ...
    ##  $ tbodygyrojerkmag-mean    : num  -0.994 -0.995 -0.993 -0.996 -0.996 ...
    ##  $ tbodygyrojerkmag-std     : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...
    ##  $ fbodyacc-mean-x          : num  -0.995 -0.997 -0.994 -0.995 -0.997 ...
    ##  $ fbodyacc-mean-y          : num  -0.983 -0.977 -0.973 -0.984 -0.982 ...
    ##  $ fbodyacc-mean-z          : num  -0.939 -0.974 -0.983 -0.991 -0.988 ...
    ##  $ fbodyacc-std-x           : num  -0.995 -0.999 -0.996 -0.996 -0.999 ...
    ##  $ fbodyacc-std-y           : num  -0.983 -0.975 -0.966 -0.983 -0.98 ...
    ##  $ fbodyacc-std-z           : num  -0.906 -0.955 -0.977 -0.99 -0.992 ...
    ##  $ fbodyaccjerk-mean-x      : num  -0.992 -0.995 -0.991 -0.994 -0.996 ...
    ##  $ fbodyaccjerk-mean-y      : num  -0.987 -0.981 -0.982 -0.989 -0.989 ...
    ##  $ fbodyaccjerk-mean-z      : num  -0.99 -0.99 -0.988 -0.991 -0.991 ...
    ##  $ fbodyaccjerk-std-x       : num  -0.996 -0.997 -0.991 -0.991 -0.997 ...
    ##  $ fbodyaccjerk-std-y       : num  -0.991 -0.982 -0.981 -0.987 -0.989 ...
    ##  $ fbodyaccjerk-std-z       : num  -0.997 -0.993 -0.99 -0.994 -0.993 ...
    ##  $ fbodygyro-mean-x         : num  -0.987 -0.977 -0.975 -0.987 -0.982 ...
    ##  $ fbodygyro-mean-y         : num  -0.982 -0.993 -0.994 -0.994 -0.993 ...
    ##  $ fbodygyro-mean-z         : num  -0.99 -0.99 -0.987 -0.987 -0.989 ...
    ##  $ fbodygyro-std-x          : num  -0.985 -0.985 -0.977 -0.993 -0.986 ...
    ##  $ fbodygyro-std-y          : num  -0.974 -0.987 -0.993 -0.992 -0.992 ...
    ##  $ fbodygyro-std-z          : num  -0.994 -0.99 -0.987 -0.989 -0.988 ...
    ##  $ fbodyaccmag-mean         : num  -0.952 -0.981 -0.988 -0.988 -0.994 ...
    ##  $ fbodyaccmag-std          : num  -0.956 -0.976 -0.989 -0.987 -0.99 ...
    ##  $ fbodybodyaccjerkmag-mean : num  -0.994 -0.99 -0.989 -0.993 -0.996 ...
    ##  $ fbodybodyaccjerkmag-std  : num  -0.994 -0.992 -0.991 -0.992 -0.994 ...
    ##  $ fbodybodygyromag-mean    : num  -0.98 -0.988 -0.989 -0.989 -0.991 ...
    ##  $ fbodybodygyromag-std     : num  -0.961 -0.983 -0.986 -0.988 -0.989 ...
    ##  $ fbodybodygyrojerkmag-mean: num  -0.992 -0.996 -0.995 -0.995 -0.995 ...
    ##  $ fbodybodygyrojerkmag-std : num  -0.991 -0.996 -0.995 -0.995 -0.995 ...

Summary
-------

    ##     subject        activity         tbodyacc-mean-x   tbodyacc-mean-y   
    ##  Min.   : 1.00   Length:10299       Min.   :-1.0000   Min.   :-1.00000  
    ##  1st Qu.: 9.00   Class :character   1st Qu.: 0.2626   1st Qu.:-0.02490  
    ##  Median :17.00   Mode  :character   Median : 0.2772   Median :-0.01716  
    ##  Mean   :16.15                      Mean   : 0.2743   Mean   :-0.01774  
    ##  3rd Qu.:24.00                      3rd Qu.: 0.2884   3rd Qu.:-0.01062  
    ##  Max.   :30.00                      Max.   : 1.0000   Max.   : 1.00000  
    ##  tbodyacc-mean-z    tbodyacc-std-x    tbodyacc-std-y     tbodyacc-std-z   
    ##  Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.00000   Min.   :-1.0000  
    ##  1st Qu.:-0.12102   1st Qu.:-0.9924   1st Qu.:-0.97699   1st Qu.:-0.9791  
    ##  Median :-0.10860   Median :-0.9430   Median :-0.83503   Median :-0.8508  
    ##  Mean   :-0.10892   Mean   :-0.6078   Mean   :-0.51019   Mean   :-0.6131  
    ##  3rd Qu.:-0.09759   3rd Qu.:-0.2503   3rd Qu.:-0.05734   3rd Qu.:-0.2787  
    ##  Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.00000   Max.   : 1.0000  
    ##  tgravityacc-mean-x tgravityacc-mean-y  tgravityacc-mean-z
    ##  Min.   :-1.0000    Min.   :-1.000000   Min.   :-1.00000  
    ##  1st Qu.: 0.8117    1st Qu.:-0.242943   1st Qu.:-0.11671  
    ##  Median : 0.9218    Median :-0.143551   Median : 0.03680  
    ##  Mean   : 0.6692    Mean   : 0.004039   Mean   : 0.09215  
    ##  3rd Qu.: 0.9547    3rd Qu.: 0.118905   3rd Qu.: 0.21621  
    ##  Max.   : 1.0000    Max.   : 1.000000   Max.   : 1.00000  
    ##  tgravityacc-std-x tgravityacc-std-y tgravityacc-std-z tbodyaccjerk-mean-x
    ##  Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000   
    ##  1st Qu.:-0.9949   1st Qu.:-0.9913   1st Qu.:-0.9866   1st Qu.: 0.06298   
    ##  Median :-0.9819   Median :-0.9759   Median :-0.9665   Median : 0.07597   
    ##  Mean   :-0.9652   Mean   :-0.9544   Mean   :-0.9389   Mean   : 0.07894   
    ##  3rd Qu.:-0.9615   3rd Qu.:-0.9464   3rd Qu.:-0.9296   3rd Qu.: 0.09131   
    ##  Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000   
    ##  tbodyaccjerk-mean-y tbodyaccjerk-mean-z tbodyaccjerk-std-x
    ##  Min.   :-1.000000   Min.   :-1.000000   Min.   :-1.0000   
    ##  1st Qu.:-0.018555   1st Qu.:-0.031552   1st Qu.:-0.9913   
    ##  Median : 0.010753   Median :-0.001159   Median :-0.9513   
    ##  Mean   : 0.007948   Mean   :-0.004675   Mean   :-0.6398   
    ##  3rd Qu.: 0.033538   3rd Qu.: 0.024578   3rd Qu.:-0.2912   
    ##  Max.   : 1.000000   Max.   : 1.000000   Max.   : 1.0000   
    ##  tbodyaccjerk-std-y tbodyaccjerk-std-z tbodygyro-mean-x  
    ##  Min.   :-1.0000    Min.   :-1.0000    Min.   :-1.00000  
    ##  1st Qu.:-0.9850    1st Qu.:-0.9892    1st Qu.:-0.04579  
    ##  Median :-0.9250    Median :-0.9543    Median :-0.02776  
    ##  Mean   :-0.6080    Mean   :-0.7628    Mean   :-0.03098  
    ##  3rd Qu.:-0.2218    3rd Qu.:-0.5485    3rd Qu.:-0.01058  
    ##  Max.   : 1.0000    Max.   : 1.0000    Max.   : 1.00000  
    ##  tbodygyro-mean-y   tbodygyro-mean-z   tbodygyro-std-x   tbodygyro-std-y  
    ##  Min.   :-1.00000   Min.   :-1.00000   Min.   :-1.0000   Min.   :-1.0000  
    ##  1st Qu.:-0.10399   1st Qu.: 0.06485   1st Qu.:-0.9872   1st Qu.:-0.9819  
    ##  Median :-0.07477   Median : 0.08626   Median :-0.9016   Median :-0.9106  
    ##  Mean   :-0.07472   Mean   : 0.08836   Mean   :-0.7212   Mean   :-0.6827  
    ##  3rd Qu.:-0.05110   3rd Qu.: 0.11044   3rd Qu.:-0.4822   3rd Qu.:-0.4461  
    ##  Max.   : 1.00000   Max.   : 1.00000   Max.   : 1.0000   Max.   : 1.0000  
    ##  tbodygyro-std-z   tbodygyrojerk-mean-x tbodygyrojerk-mean-y
    ##  Min.   :-1.0000   Min.   :-1.00000     Min.   :-1.00000    
    ##  1st Qu.:-0.9850   1st Qu.:-0.11723     1st Qu.:-0.05868    
    ##  Median :-0.8819   Median :-0.09824     Median :-0.04056    
    ##  Mean   :-0.6537   Mean   :-0.09671     Mean   :-0.04232    
    ##  3rd Qu.:-0.3379   3rd Qu.:-0.07930     3rd Qu.:-0.02521    
    ##  Max.   : 1.0000   Max.   : 1.00000     Max.   : 1.00000    
    ##  tbodygyrojerk-mean-z tbodygyrojerk-std-x tbodygyrojerk-std-y
    ##  Min.   :-1.00000     Min.   :-1.0000     Min.   :-1.0000    
    ##  1st Qu.:-0.07936     1st Qu.:-0.9907     1st Qu.:-0.9922    
    ##  Median :-0.05455     Median :-0.9348     Median :-0.9548    
    ##  Mean   :-0.05483     Mean   :-0.7313     Mean   :-0.7861    
    ##  3rd Qu.:-0.03168     3rd Qu.:-0.4865     3rd Qu.:-0.6268    
    ##  Max.   : 1.00000     Max.   : 1.0000     Max.   : 1.0000    
    ##  tbodygyrojerk-std-z tbodyaccmag-mean  tbodyaccmag-std  
    ##  Min.   :-1.0000     Min.   :-1.0000   Min.   :-1.0000  
    ##  1st Qu.:-0.9926     1st Qu.:-0.9819   1st Qu.:-0.9822  
    ##  Median :-0.9503     Median :-0.8746   Median :-0.8437  
    ##  Mean   :-0.7399     Mean   :-0.5482   Mean   :-0.5912  
    ##  3rd Qu.:-0.5097     3rd Qu.:-0.1201   3rd Qu.:-0.2423  
    ##  Max.   : 1.0000     Max.   : 1.0000   Max.   : 1.0000  
    ##  tgravityaccmag-mean tgravityaccmag-std tbodyaccjerkmag-mean
    ##  Min.   :-1.0000     Min.   :-1.0000    Min.   :-1.0000     
    ##  1st Qu.:-0.9819     1st Qu.:-0.9822    1st Qu.:-0.9896     
    ##  Median :-0.8746     Median :-0.8437    Median :-0.9481     
    ##  Mean   :-0.5482     Mean   :-0.5912    Mean   :-0.6494     
    ##  3rd Qu.:-0.1201     3rd Qu.:-0.2423    3rd Qu.:-0.2956     
    ##  Max.   : 1.0000     Max.   : 1.0000    Max.   : 1.0000     
    ##  tbodyaccjerkmag-std tbodygyromag-mean tbodygyromag-std 
    ##  Min.   :-1.0000     Min.   :-1.0000   Min.   :-1.0000  
    ##  1st Qu.:-0.9907     1st Qu.:-0.9781   1st Qu.:-0.9775  
    ##  Median :-0.9288     Median :-0.8223   Median :-0.8259  
    ##  Mean   :-0.6278     Mean   :-0.6052   Mean   :-0.6625  
    ##  3rd Qu.:-0.2733     3rd Qu.:-0.2454   3rd Qu.:-0.3940  
    ##  Max.   : 1.0000     Max.   : 1.0000   Max.   : 1.0000  
    ##  tbodygyrojerkmag-mean tbodygyrojerkmag-std fbodyacc-mean-x  
    ##  Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.0000  
    ##  1st Qu.:-0.9923       1st Qu.:-0.9922      1st Qu.:-0.9913  
    ##  Median :-0.9559       Median :-0.9403      Median :-0.9456  
    ##  Mean   :-0.7621       Mean   :-0.7780      Mean   :-0.6228  
    ##  3rd Qu.:-0.5499       3rd Qu.:-0.6093      3rd Qu.:-0.2646  
    ##  Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.0000  
    ##  fbodyacc-mean-y   fbodyacc-mean-z   fbodyacc-std-x    fbodyacc-std-y    
    ##  Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.00000  
    ##  1st Qu.:-0.9792   1st Qu.:-0.9832   1st Qu.:-0.9929   1st Qu.:-0.97689  
    ##  Median :-0.8643   Median :-0.8954   Median :-0.9416   Median :-0.83261  
    ##  Mean   :-0.5375   Mean   :-0.6650   Mean   :-0.6034   Mean   :-0.52842  
    ##  3rd Qu.:-0.1032   3rd Qu.:-0.3662   3rd Qu.:-0.2493   3rd Qu.:-0.09216  
    ##  Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.00000  
    ##  fbodyacc-std-z    fbodyaccjerk-mean-x fbodyaccjerk-mean-y
    ##  Min.   :-1.0000   Min.   :-1.0000     Min.   :-1.0000    
    ##  1st Qu.:-0.9780   1st Qu.:-0.9912     1st Qu.:-0.9848    
    ##  Median :-0.8398   Median :-0.9516     Median :-0.9257    
    ##  Mean   :-0.6179   Mean   :-0.6567     Mean   :-0.6290    
    ##  3rd Qu.:-0.3023   3rd Qu.:-0.3270     3rd Qu.:-0.2638    
    ##  Max.   : 1.0000   Max.   : 1.0000     Max.   : 1.0000    
    ##  fbodyaccjerk-mean-z fbodyaccjerk-std-x fbodyaccjerk-std-y
    ##  Min.   :-1.0000     Min.   :-1.0000    Min.   :-1.0000   
    ##  1st Qu.:-0.9873     1st Qu.:-0.9920    1st Qu.:-0.9865   
    ##  Median :-0.9475     Median :-0.9562    Median :-0.9280   
    ##  Mean   :-0.7436     Mean   :-0.6550    Mean   :-0.6122   
    ##  3rd Qu.:-0.5133     3rd Qu.:-0.3203    3rd Qu.:-0.2361   
    ##  Max.   : 1.0000     Max.   : 1.0000    Max.   : 1.0000   
    ##  fbodyaccjerk-std-z fbodygyro-mean-x  fbodygyro-mean-y  fbodygyro-mean-z 
    ##  Min.   :-1.0000    Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
    ##  1st Qu.:-0.9895    1st Qu.:-0.9853   1st Qu.:-0.9847   1st Qu.:-0.9851  
    ##  Median :-0.9590    Median :-0.8917   Median :-0.9197   Median :-0.8877  
    ##  Mean   :-0.7809    Mean   :-0.6721   Mean   :-0.7062   Mean   :-0.6442  
    ##  3rd Qu.:-0.5903    3rd Qu.:-0.3837   3rd Qu.:-0.4735   3rd Qu.:-0.3225  
    ##  Max.   : 1.0000    Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000  
    ##  fbodygyro-std-x   fbodygyro-std-y   fbodygyro-std-z   fbodyaccmag-mean 
    ##  Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000   Min.   :-1.0000  
    ##  1st Qu.:-0.9881   1st Qu.:-0.9808   1st Qu.:-0.9862   1st Qu.:-0.9847  
    ##  Median :-0.9053   Median :-0.9061   Median :-0.8915   Median :-0.8755  
    ##  Mean   :-0.7386   Mean   :-0.6742   Mean   :-0.6904   Mean   :-0.5860  
    ##  3rd Qu.:-0.5225   3rd Qu.:-0.4385   3rd Qu.:-0.4168   3rd Qu.:-0.2173  
    ##  Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000   Max.   : 1.0000  
    ##  fbodyaccmag-std   fbodybodyaccjerkmag-mean fbodybodyaccjerkmag-std
    ##  Min.   :-1.0000   Min.   :-1.0000          Min.   :-1.0000        
    ##  1st Qu.:-0.9829   1st Qu.:-0.9898          1st Qu.:-0.9907        
    ##  Median :-0.8547   Median :-0.9290          Median :-0.9255        
    ##  Mean   :-0.6595   Mean   :-0.6208          Mean   :-0.6401        
    ##  3rd Qu.:-0.3823   3rd Qu.:-0.2600          3rd Qu.:-0.3082        
    ##  Max.   : 1.0000   Max.   : 1.0000          Max.   : 1.0000        
    ##  fbodybodygyromag-mean fbodybodygyromag-std fbodybodygyrojerkmag-mean
    ##  Min.   :-1.0000       Min.   :-1.0000      Min.   :-1.0000          
    ##  1st Qu.:-0.9825       1st Qu.:-0.9781      1st Qu.:-0.9921          
    ##  Median :-0.8756       Median :-0.8275      Median :-0.9453          
    ##  Mean   :-0.6974       Mean   :-0.7000      Mean   :-0.7798          
    ##  3rd Qu.:-0.4514       3rd Qu.:-0.4713      3rd Qu.:-0.6122          
    ##  Max.   : 1.0000       Max.   : 1.0000      Max.   : 1.0000          
    ##  fbodybodygyrojerkmag-std
    ##  Min.   :-1.0000         
    ##  1st Qu.:-0.9926         
    ##  Median :-0.9382         
    ##  Mean   :-0.7922         
    ##  3rd Qu.:-0.6437         
    ##  Max.   : 1.0000
