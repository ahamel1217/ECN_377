# Quiz 10 (Wed 11/4) will have 11 questions taken from these problems:
#1, #2, #3, #4, #6, #7, #9, #11, #14, #16, #17.
#1 

x1 <- 3
x2 <- 3
logy <- 2.2 +0.021*x1 -.028*x2
pctchgy <- 100 *(0.021*x1 -.028*x2)

#2 
library(wooldridge)
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
b2 <- reg$coefficients[3]
b3 <- reg$coefficients[4]
educ <- 12
exper <- 10
tenure <- 3
pctchgy <- 100*((b1*educ) + (b2*exper) + (b3*tenure))
y <- exp(b0 + (b1*educ) + (b2*exper) + (b3*tenure))

#4
#regression passes through mean
#sample covariance of Xj and the residulas is 0
#sample avg of residuals is 0

#5
reg2 <- lm(colGPA ~ ACT + hsGPA, data = gpa1)
b0 <- reg2$coefficients[1]
b1 <- reg2$coefficients[2]
b2 <- reg2$coefficients[3]
y <- b0 + b1*mean(gpa1$ACT) + b2*mean(gpa1$hsGPA)
mean(gpa1$colGPA)

#6
y <- 4.1 + (1.7*x1) - (2.1*x2)
x1 <- 11.8
x2 <- 7.1 

#7
vote1$totexpend <- vote1$expendA + vote1$expendB
lm(voteA ~ expendA + expendB + totexpend, data = vote1)

#9
#MLR4, omitted variables

#11
b1tilde <- 0.79
b2hat <- -1.24
delta1 <- 0.49
b1hat <- b1tilde - (b2hat*delta1)

#12
lm(bwght ~ cigs, data = bwght)
reg <- lm(bwght ~ cigs + faminc, data = bwght)
b1 <- reg$coefficients[2]
b2hat <- reg$coefficients[3]

#13
SLR <- lm(faminc ~ cigs, data = bwght)
delta1 <- SLR$coefficients[2]
b2hat*delta1

#15

