glm.fit <- glm(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume,
    data = Smarket, family = binomial)
glm.probs <- predict(glm.fit, type = "response")

glm.pred <- rep("Down",1250)
glm.pred[glm.probs > 0.6] <- "Up"