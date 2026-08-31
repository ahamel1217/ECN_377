# Day 4 

## ECN 377 - Day 4  |  variance, sd, covariance, correlation.  (all SAMPLE calculations)
## We build this from scratch together -- pick your own numbers (poll the room!).

## --- Sample variance & sd ---
## put a few numbers in a vector called x
x = c(3,3,7)
## find its mean
mean(x)
xbar = mean(x)
## by hand: subtract the mean from each value, square, add up, divide by n - 1
x - xbar #this subracts xbar from each element of vector
(x - xbar)^2 #square each new term
sum((x - xbar)^2) #sum all terms
sum((x - xbar)^2) / (length(x) - 1) #divide by n-1
## check it with the built-in variance function
var(x)
## the sd is the square root of the variance
sqrt(var(x)) #sqrt of the variance
sd(x) #st dev of x

## --- Sample covariance ---
## put two paired variables (same length) in vectors x and y
x = c(6,3,5)
y = c(4,2,1)
## by r: subtract each mean, multiply the pairs, add up, divide by n - 1
x - mean(x)
y - mean(y)
(x - mean(x)) * (y - mean(y))
added = (x - mean(x)) * (y - mean(y))
sum(added) / (length(x) - 1)
## or ... check it with the built-in covariance function
cov(x,y)

## --- Sample correlation ---
## the correlation is the covariance divided by (sd of x  times  sd of y)
cov(x, y) / (sd(x) * sd(y))
## check it with the built-in correlation function
cor(x,y)

## --- Nonlinear: log & exp (allow non-constant, curved relationships) ---
## make a range of positive x-values (call it x)
______
## plot log(x): it flattens out (diminishing).  then plot exp(x): it grows fast.
______
______
## check that exp undoes log, and log undoes exp (pick any positive number):
______
______

## remember: var, sd, cov, cor are all SAMPLE quantities -- our best guesses at the population's.