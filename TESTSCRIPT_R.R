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
xvalues <- c(0, 0, 1, 1)          # x for pairs (0,0) (0,1) (1,0) (1,1)
yvalues <- c(0, 1, 0, 1)          # y for those same pairs
probs <- c(0.4, 0.1, 0.1, 0.4)  # probabilities
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
#EXAMPLE PROBLEM to predict haty
x <- c(5,1,8)
y <- c(0,0,4)
# E[X] and E[Y]
EX <- mean(x)
EY <- mean(y)
# E[X^2] and E[XY]
EX2 <- mean(x^2)
EXY <- mean(x*y)
# Population variance
VarX <- EX2 - EX^2
# Population covariance
CovXY <- EXY - EX*EY
# OLS slope
b1 <- CovXY / VarX
# OLS intercept
b0 <- EY - b1*EX
# Predict when x = 4
yhat <- b0 + b1*4
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
