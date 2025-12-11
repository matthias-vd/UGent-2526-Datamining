cv.out <- cv.glmnet(x[train, ], y[train], alpha = 1)
bestlam <- cv.out$lambda.min
lasso.mod <- glmnet(x[train, ], y[train], alpha = 1, lambda = bestlam)
lasso.pred <- predict(lasso.mod, s = bestlam, newx = x[test, ])
lasso.mse <- mean((lasso.pred - y.test)^2)