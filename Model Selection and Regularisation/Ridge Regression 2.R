x <- model.matrix(Salary ~ ., Hitters)[, -1]
y <- Hitters$Salary
grid <- 10^seq(10, -2, length = 100)
ridge.mod <- glmnet(x, y, alpha = 0, lambda = grid)
coef_40 <- coef(ridge.mod)[, 40]
ell2 <- sqrt(sum(coef_40[-1]^2))