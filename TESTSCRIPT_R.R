#TEST SCRIPT 
#Sample Variance of vector x
x = c(1, 1, 1)
var(x)
#Sample St. Dev
sd(x)
#Sample covariance 
cov(x,y)
#Sample correlation
cor(x,y)
#Population Variance
xvalues = c(value, value)
probs = c(prob, prob_)
EX  <- sum(x * p) #setting variable (ans in values section)
EX2 <- sum(x^2 *p) #setting variable
VarX <- EX2 - EX^2 #setting variable
#Population Standard deviation
St.Dev <- sqrt(VarX)
#Population Covariance
xj <- c(1,0,6)          # x for pairs (0,0) (0,1) (1,0) (1,1)
yj <- c(8,5,7)          # y for those same pairs
pj <- c(0.2,0.3,0.5)  # probabilities
EX  <- sum(xj * pj)               
EY  <- sum(yj * pj)              
EXY <- sum(xj * yj * pj)         
Cov <- EXY - EX*EY    # answer
#Population Correlation of previous example
Cor <- Cov / (sdX * sdY)
#Deriving b1 (OLS slope)
b1 <- cov(x,y) / var(x)  
#Deriving b0
b0 <- mean(y) - b1 * mean(x) 
#Fitted line from above
y = b0 + b1*X

#EXAMPLE PROBLEM to predict yhat
x <- c(8,4,4)
y <- c(1,1,4)
# b1
b1 <- cov(x,y) / var(x)
# b0
b0 <- mean(y) - b1 * mean(x)
# Predict when x = whatever
c(b0=b0, b1=b1)
yhat <- b0 + b1*x

#EXAMPLE PROBLEM TO FIND OLS INTERCEPT b0
x <- c(1,5,1)
y <- c(9,8,0)
# Find E[X] and E[Y]
EX <- mean(x)
EY <- mean(y)
# Find E[X^2] and E[XY]
EX2 <- mean(x^2)
EXY <- mean(x*y)
# Population variance and covariance
VarX <- EX2 - EX^2
CovXY <- EXY - EX*EY
# OLS slope
b1 <- CovXY / VarX
# OLS intercept
b0 <- EY - b1*EX
