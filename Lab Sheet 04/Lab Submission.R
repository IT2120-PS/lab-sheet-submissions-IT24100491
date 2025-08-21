setwd("C:\\Users\\IT24100491\\Desktop\\IT24100491")
#Q1
branch_data <- read. table("Exercise. txt", header = TRUE, sep=",")
print (branch_data)

#Q2
fix(branch_data)
str (branch_data)
attach(branch_data)

#Q3
# Obtain boxplot for Sales_X1
boxplot (branch_data$Sales_x1, main="Box plot for Sales", outline=TRUE, outpch=8, horizontal=TRUE)

#Q4
##five-number summary
summary(Advertising_X2)

#IQR
IQR(Advertising_x2)

#Q5
get. outliers <- function(z){
  q1 <- quantile(z) [2]
  q3 <- quantile(z) [4]
  iqr <- q3 - q1
  
  ub <- q3 + 1.5*iqr
  1b <- q1 - 1.5*iqr
  
  print (paste("Upper Bound = ", ub))
  print (paste("Lower Bound = ", 1b))
  print (paste("outliers:", paste(sort(z[z<lb | z>ub]), collapse = ",")))
  
  # check for outliers in the 'years' variable
  get. outliers (Years_X3)
