glm.fit <- glm(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume,data = Weekly,family = binomial)
glm.probs <- predict(glm.fit, type = "response")
glm.pred  <- ifelse(glm.probs > 0.5, "Up", "Down")

glm.table <- table(glm.pred, Weekly$Direction)
glm.acc   <- mean(glm.pred == Weekly$Direction)





MC1=4
MC2=1
MC3=3