boot.fn <- function(data, index)
coefficients(lm(medv ~ lstat, data = Boston,subset = index))
bootstrap<-boot(Boston, boot.fn, 10)