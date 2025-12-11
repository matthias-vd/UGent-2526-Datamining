train <- sample(1:nrow(x), nrow(x) / 2)
test <- (-train)
y.test <- y[test]

ridge.mod <- glmnet(x[train, ], y[train], alpha = 0, lambda = grid, thresh = 1e-12)
ridge.pred <- predict(ridge.mod, s = 4, newx = x[test, ])
ridge.mse <- mean((ridge.pred - y.test)^2)