lm.fit1 <- lm(medv~lstat + zn + nox + ptratio)

lm.fit2 <- update(lm.fit1, medv ~ . - zn - nox)