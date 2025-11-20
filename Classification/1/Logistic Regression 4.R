glm.fit <- glm(Direction ~ Lag1 + Lag2, data = Smarket, family = binomial)
glm.probs <- predict(glm.fit, type="response")