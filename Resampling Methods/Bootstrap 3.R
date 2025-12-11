set.seed(123)

boot.fn2 <- function(data, index)
    return(coef(lm(mpg ~ poly(horsepower, 2), data = data, subset = index)))

boot.coef <- boot.fn2(Auto, sample(392, 392, replace = T))