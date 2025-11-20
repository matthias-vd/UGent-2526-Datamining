train <- (Year < 2005)

glm.fit <- glm(Direction ~ Lag1 + Lag2,
    data = Smarket, family = binomial, subset = train)

predict(glm.fit, newdata = data.frame(Lag1 = c(-0.8, 1.2), Lag2 = c(1.3, -0.6)),
 type = "response")