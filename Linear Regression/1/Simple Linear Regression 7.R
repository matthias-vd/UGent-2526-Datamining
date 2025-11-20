lm.fit <- lm(medv ~ lstat, data = Boston)
predict(lm.fit, data.frame(lstat=(c(6,8,12))),interval="confidence")