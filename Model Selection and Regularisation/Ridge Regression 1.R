grid <- 10^seq(10, -2, length = 100)
x <- model.matrix(medv ~ ., Boston)[, -1]
y <- Boston$medv
ridge.mod <- glmnet(x, y, alpha = 0, lambda = grid)