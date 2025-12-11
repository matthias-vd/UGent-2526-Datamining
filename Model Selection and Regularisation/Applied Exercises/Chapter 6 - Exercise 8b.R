set.seed(1)
x <- rnorm(100)
eps <- rnorm(100)

y <- 2 + 3 * x - x^2 + 0.5 * x^3 + eps

data <- data.frame(y, x)
X_poly <- model.matrix(y ~ poly(x, 10, raw = TRUE), data = data)[,-1]

cv.out <- cv.glmnet(X_poly, y, alpha = 1)
bestlam <- cv.out$lambda.min

grid <- 10^seq(10, -2, length = 100)

out <- glmnet(X_poly, y, alpha = 1, lambda = grid)

coef.lasso <- coef(cv.out, s = "lambda.min")