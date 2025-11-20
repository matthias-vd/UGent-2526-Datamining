lm.fit <- lm(medv ~ crim + rm + indus, data = Boston)
lm.fit1 <- update(lm.fit, ~ . - rm + lstat)