#Quiz 10
#1, #2, #3, #4, #6, #7, #9, #12, #13, #14, #15
#LOG TABLE
#level-level -> changey = b1 * changex
#level-log -> changey = (b1/100%) * %changex
#log-level -> %changey = 100% * b1 * changex
#log-log -> %changey = b1 * %changex

100*0.011*(-1)
pctchgy <- 100*.05*(-3)
#log-log regression
library(wooldridge)
bwght
reg <- lm(log(bwght) ~ log(faminc), data = bwght)
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
pctchgy <- b1*15
#what makes Var(b1) larger?
#o^2/SSTx
#smaller sample (small SST), X values bunched (small SST), larger error var

#se
SSTx <- (n-1)*(S^2)
se <- o/sqrt(SSTx)

#se w/ SSR
o <- sqrt(SSR/(n-2))
x<- c(1,3,5,9,11)
SSTx <- sum(x-mean(x))^2

#multiply sd by 9
sd <- o/sqrt(SSTx)

#MLR
x1 <- 1
x2 <- 6
y = 5 + (2.5*x1) + (1.3*x2)
chgy <- 1.9*x1 - 0.8*x2

#MLR real data
reg <- lm(wage ~ educ + exper + tenure, data = wage1)
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2] #educ
b2 <- reg$coefficients[3] #exper
b3 <- reg$coefficients[4] #tenure

y = b0 + b1*16 + b2*5 + b3*2
b2*10

#log MLR
reg <- lm(log(salary) ~ log(sales) + roe, data = ceosal1)
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2] #sales
b2 <- reg$coefficients[3] #roe
exp(b0 + (b1*log(5000)) + b2*15)

100*broe*10
0.42 +(1.28*0.39)

-1.62*-0.17
reg1 <- lm(wage ~ educ + exper, data = wage1)
reg2 <- lm(exper ~ educ, data = wage1)
reg3 <- lm(wage ~ educ, data = wage1)
reg2$coefficients[1]-reg3$coefficients[1]