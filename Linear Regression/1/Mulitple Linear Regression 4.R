lm.fit <- lm(medv~. -age -crim, data=Boston)
summary(lm.fit)