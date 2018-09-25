# 1. Compute the measures of central tendency for salary and reduction which variable has highest center?

# measures of central tendency for salary
library(RcmdrPlugin.IPSUR)
x<- c(mean(RcmdrTestDrive$salary),median(RcmdrTestDrive$salary))
x

# measures of central tendency for reduction
y<- c(median(RcmdrTestDrive$reduction),mean(RcmdrTestDrive$reduction))
y

# check for variable with highest center by plotting histogram or by checking kurtosis which describes the amount of peakedness of a distribution
library(psych)
kurtosi(RcmdrTestDrive$salary)

kurtosi(RcmdrTestDrive$reduction)

# variable reduction has more kurtosis and more peaked hence more highest center

# plotting and comparing histogram for variable salary and reduction

y<-RcmdrTestDrive$reduction
h<- hist(y, breaks = 10, col = "green", xlab = "reduction", 
         main= "histogram of reduction with normal curve")


x<-RcmdrTestDrive$salary
h<- hist(x, breaks = 10, col = "yellow", xlab = "salary", 
         main= "histogram of salary with normal curve")

# reduction is not completely continuous so there will be no peak for center
# salary is more peaked from center as it is continous
# reduction variable has more highest center as it is more peaked by seeing histo curve overall as compare to salary variable


# 2. Which measure of center is more appropriate for before and after?

# boxplot for median of after variable

boxplot(RcmdrTestDrive$after,horizontal = T,col = "blue",xlab="after",ylab="Boxplot", main="boxplot for median of after variable")
# More data is concentrated on Left because of assymetrical distribution

boxplot(RcmdrTestDrive$before,horizontal = T,col = "red",xlab="before",ylab="Boxplot", main="boxplot for median of before variable")
# this is more balanced distribution, so median of before variable would be more appropriate for the measure of center


# Assignment8.3
# A recent national study showed that approximately 44.7% of college students have used Wikipedia as a source in at least one of their term papers. Let X equal the number of students in a random sample of size n = 31 who have used Wikipedia as a source.
# Perform the below functions

# a. Find the probability that X is equal to 17 
dbinom(17, size = 31, prob = 0.447)

# b. Find the probability that X is at most 13
pbinom(13, size = 31, prob = 0.447)

# c. Find the probability that X is bigger than 11
pbinom(11, size = 31, prob = 0.447, lower.tail = FALSE)

# d. Find the probability that X is at least 15
pbinom(14, size = 31, prob = 0.447, lower.tail = FALSE)

# e. Find the probability that X is between 16 and 19, inclusive
sum(dbinom(16:19, size = 31, prob = 0.447))
diff(pbinom(c(19, 15), size = 31, prob = 0.447, lower.tail = FALSE))
