set.seed(123)
library(ISLR2)
data(Portfolio)
alpha.fn <- function(data, index) {
  X <- data$X[index]
  Y <- data$Y[index]
  return((var(Y) - cov(X, Y)) / (var(X) + var(Y) - 2 * cov(X, Y)))
}
alpha.hat<-rep(0,3)
for (i in 1:3) {
  alpha.hat[i]=alpha.fn(Portfolio, sample(100, 100, replace = T))
}