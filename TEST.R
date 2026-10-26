#TEST SCRIPT OFFICIAL
#Sample Stuff of vector x and y
x <- c(1,1,1)
y <- c(1,1,1)
var(x)
sd(x)
cov(x,y)
cor(x,y)
#E[X] = 2, E[X^2] = 20 SD = 3X-7 
#sd(3x-7)
#sqrt(3^2 * VarX)
#12
#Var(aX+bY) = a^2*Var(X) + 2ab* Cov(x,y)
(4*8)+(2*2*-3)*-4.7
#Population Covariance
xj <- c(1,4,5,8)        
yj <- c(12,4,10,7)        
pj <- c(0.3,0.2,0.1,0.4) 
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
SSE <- 147
SST<- 147/0.69
SST-SSE
38*6

#Problem set 7
library(wooldridge)
data("wage1")
#Find amt. observations
nrow(wage1)
#mean
mean(wage1$wage)
#sd
sd(wage1$tenure)
#make reg line
reg <- lm(wage ~ tenure, data=wage1)
#Set Variables
b1 <- reg$coefficients[2]
b0 <- reg$coefficients[1]
reg$residuals[9]
#Predict
predictY <- b0 + b1*(14)
changeY <- b1*(2)
actualY <- 8
resid <- predictY - actualY
#SSR, SST, R2
SSR <- (nrow(wage1)-1) * var(reg$residuals)
SST <- (nrow(wage1)-1) * var(wage1$wage)
R2 <- 1 - (SSR/SST)

#avg wage given educ=16
mean(wage1$wage[wage1$educ ==16])

x<-c(1,7,8,9,10)
y<- c(2,6,4,12,11)
b1<- cov(x,y)/var(x)
b0<- mean(y) -b1 * mean(x)
reg<- lm(x~y)
2 - (b0 + b1*9)

#LOG TABLE
#level-level -> changey = b1 * changex
#level-log -> changey = (b1/100%) * %changex
#log-level -> %changey = 100% * b1 * changex
#log-log -> %changey = b1 * %changex

#log-log -> b1 does not change; b0 changes
#level-level -> x*c, then b1*1/c, b0 unchanged
SSTx <- sum((x - mean(x))^2)
o <- sqrt(SSR/ (n-2))
sd(b1) <- o / sqrt(SSTx)
o^2 <- SSR/ (n-2)
se(b1) <- o / sqrt(SSTx)
(44.8/100)*15
0.35*-12
library(wooldridge)
reg<-lm(log(salary) ~ roe, data = ceosal1)
reg$coefficients[2]*5*100
reg<- lm(salary ~ log(sales), data = ceosal1)
(reg$coefficients[2]/100)*10
93/14
9/sqrt(8)
x<- c(2,3,6,8,9)
SSTx <- sum((x - mean(x))^2)
5/sqrt(SSTx)
176/49
o<-sqrt(827/13)
o/sqrt(14)
reg <- lm(wage ~ educ, data = wage1)
sqrt(sum(reg$residuals^2) / (nrow(wage1) - 2))
summary(reg)$sigma
x<-wage1$educ
sum((x - mean(x))^2)

#log-level, MLR predcition
x1 <- 16
x2 <- 4
x3 <- 2
logwage <- b0 + (b1*x1) + (b2*x2) + (b3*x3)
predwage <- exp(b0 + (b1*16) + (b2*4) + (b3*2))
chgx1 <- 0
chgx2 <- 1
chgx3 <- 1
pctchgwage <- 100*((b1*chgx1)+ (b2*chgx2) + (b3*chgx3))
