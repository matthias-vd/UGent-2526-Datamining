lm.fit <- lm(medv ~ lstat + rm, data = Boston)
vif(lm.fit)