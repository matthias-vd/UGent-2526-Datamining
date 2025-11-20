lm.fit <- lm(medv ~ lstat + I(lstat^2) + crim + lstat:crim + log(rm), data = Boston)
