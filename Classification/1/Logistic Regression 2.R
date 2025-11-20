glm.fit <- glm(Direction ~ Lag1 + Lag2, data = Smarket, family = binomial)
coef(glm.fit)