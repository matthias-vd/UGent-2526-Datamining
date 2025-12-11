set.seed(123)
alpha.fn <- function(data, index) {
  X <- data$X[index]
  Y <- data$Y[index]
  return((var(Y) - cov(X, Y)) / (var(X) + var(Y) - 2 * cov(X, Y)))
}

bootstrap <- boot(Portfolio, alpha.fn, R = 10)