regfit.full <- regsubsets(medv ~ ., data = Boston)
reg.summary <- summary(regfit.full)
reg.summary$which[3, ]
MC1 <- 2