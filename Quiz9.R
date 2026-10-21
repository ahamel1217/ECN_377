#Quiz this week
#PS9 #1, 5, 6, 9, 13, 14, 15, 16
#log table
#level-level -> changey = b1 * changex
#level-log -> changey = (b1/100%) * %changex
#log-level -> %changey = 100% * b1 * changex
#log-log -> %changey = b1 * %changex
#log-log -> b1 does not change; b0 changes
SSTx <- sum((x - mean(x))^2)
o <- sqrt(SSR/ (n-2))
sd(b1) <- o / sqrt(SSTx)
o^2 <- SSR/ (n-2)
se(b1) <- o / sqrt(SSTx)

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





