lm.fit <- lm(formula = medv ~ ., data = Boston)
r.sq <- summary(lm.fit)$r.sq
RSE <- summary(lm.fit)$sigma