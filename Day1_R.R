#Comment -- R doesn't see this
#Install Wooldridge Package
install.packages('wooldridge') #hit Ctrl then Enter
#HOw to Load package (once every time we start R)
library(wooldridge)
#Plot the relationship between wage and education
plot(wage1$educ, wage1$wage)
abline(lm(wage ~ educ, data =wage1))
