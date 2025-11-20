lm.fit2 <- lm(medv ~ lstat + I(lstat^2))
lm.fit3 <- lm(medv ~ lstat + I(lstat^2) + I(lstat^3))