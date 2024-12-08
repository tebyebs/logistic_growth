# growth_data <- read.csv("experiment.csv")
# library(ggplot2)

#plot the original data (which is logistic)
ggplot(aes(t,N), data = growth_data) +
  
  geom_point() +
  
  xlab("t") +
  
  ylab("y") +
  
  theme_bw()

#function to generate a logistic curve 
logistic_fun <- function(t) {
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  return(N)
}

#altering this to use a function with exponential growth 

exp_fun <- function(t) {
  N <- N0*exp(r*t)
  return(N)
}

#parameters for both
N0 <- exp(6.883) 
r <- 1.004e-02 
K <- 6.00e+10 

#plotting both
ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_function(fun=exp_fun, colour="blue")
