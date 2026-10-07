#TEST SCRIPT OFFICIAL
#Sample Stuff of vector x and y
x <- c(1,1,1)
y <- c(1,1,1)
var(x)
sd(x)
cov(x,y)
cor(x,y)
#Population Covariance
xj <- c(1,8,2)        
yj <- c(7,6,6)        
pj <- c(0.2,0.3,0.5) 
EX  <- sum(xj * pj)               
EY  <- sum(yj * pj)              
EXY <- sum(xj * yj * pj) 
EX2 <- sum(xj^2 *pj) 
EY2 <- sum(yj^2 *pj)
VarX <- EX2 - EX^2 
VarY <- EY2 - EY^2
SDX <- sqrt(VarX)
SDY <- sqrt(VarY)
Cov <- EXY - EX*EY    
Cor <- Cov / (SDX * SDY)
#Deriving b1 (OLS slope)
x <- c(1,1,1)
y <- c(1,1,1)
b1 <- cov(x,y) / var(x)  
#Deriving b0
b0 <- mean(y) - b1 * mean(x) 
#Fitted line from above
y = b0 + b1*X

#Example Regression Problem
data("ceosal1")
reg <- lm(salary ~ roe, data=ceosal1)
b0 = reg$coefficients[1]
b1 = reg$coefficients[2]
#SST, SSR, SSE
SST <- (nrow(ceosal1)-1) * var(ceosal1$salary) #(n-1) * var(y)
SSR <- (nrow(ceosal1)-1) * var(reg$residuals)
SSE <- (nrow(ceosal1)-1) * var(reg$fitted.values)

#find SSR given values and equation
x <- c (5,8,3)
y <- c(15,12,1)
yhat <- 2 + (0.6*x)
uhat2 <- sum((y-yhat)^2)
uhat <- y-yhat

#SST=SSE+SSR
339-141
#R^2=SSE/SST or 1-(SSR/SST)
399-141
258/399

#Problem set 7
library(wooldridge)
data("wage1")
data("bwght")
#Find amt. observations
nrow(wage1)
#mean
mean(wage1$wage)
#sd
sd(wage1$educ)
#make reg line
reg <- lm(wage ~ educ, data=wage1)
#Set Variables
b1 <- reg$coefficients[2]
b0 <- reg$coefficients[1]
#Predict
predictedY <- b0 + b1*(14)
changeY <- b1*(2)
#SSR, SST, R2
SSR <- (nrow(wage1)-1) * var(reg$residuals)
SST <- (nrow(wage1)-1) * var(wage1$wage)
R2 <- 1 - (SSR/SST)

#avg wage given educ=16
mean(wage1$wage[wage1$educ ==16])
