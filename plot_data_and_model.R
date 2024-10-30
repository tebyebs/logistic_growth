#Script to plot data and model

#growth_data <- read.csv("???")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- exp(6.883) # this is the intercept from model1 - need to converted from log transform 
  
r <- 1.004e-02 # this is coeffic of model
  
K <- 6.00e+10 # just the value of 

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  #scale_y_continuous(trans='log10')


