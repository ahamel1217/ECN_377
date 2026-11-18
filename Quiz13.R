#Quiz 13
#1
#se changes per sample
#4
t <- bj/sebj
t <- (-1.81)/1.09
#5
library(wooldridge)
reg <- lm(log(wage) ~ educ + exper + tenure, data=wage1)
s <- summary(reg)$coefficients
b2 <- s[4,1]
se2 <- s[4,2]
t_hand2 <- b2/se2
t_table2 <- s[4,3]
#7
#if H1: Bj > 0, reject null only if t > c
#6
c <- qt(.95, 27)
#cutoff 1.64 if H1: Bj >0 
#8
c <- qt(.05, 22)
#11
reg <- lm(log(salary) ~ log(sales) + roe, data = ceosal1)
summary(reg)$coefficients
#12
nrow(ceosal1)
df <- 209-1-2
qt(0.95, 206)

#14
reg <- lm(bwght ~ cigs + faminc, data = bwght)
summary(reg)$coefficients
#15
nrow(bwght)
c <- qt(0.01, 1385)

#17
#divide x by 100, multiply slope by 100

#20
reg <- lm(log(price) ~ log(sqrft) + bdrms, data = hprice1)
b0 <- reg$coefficients[1]
b1 <- reg$coefficients[2]
b2 <- reg$coefficients[3]
exp(b0 + (b1*(log(2000))) + b2*3)

#19
reg <- lm(log(wage) ~ educ + exper + tenure, data = wage1)
reg2 <- lm(tenure ~ educ + exper, data =wage1)
1.67/4
  