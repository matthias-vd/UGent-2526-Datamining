lm.fit <- lm(medv ~ lstat, data = Boston)
confint(lm.fit, level=0.90)