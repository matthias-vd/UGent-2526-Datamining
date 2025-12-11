set.seed(123)
boot.fn <- function(data, index)
    coefficients(lm(mpg ~ horsepower + I(horsepower^2), data = data, subset = index))

bootstrap <- boot(Auto,boot.fn,R=10)