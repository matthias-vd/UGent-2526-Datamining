x <- model.matrix(Salary ~ ., Hitters)[, -1]
y <- Hitters$Salary
grid <- 10^seq(10, -2, length = 100)
ridge.mod <- glmnet(x, y, alpha = 0, lambda = grid)

ridge.pred <- predict(ridge.mod, s = 60, type = "coefficients")[1:20, ]