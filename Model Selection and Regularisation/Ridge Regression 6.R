cv.out <- cv.glmnet(x[train, ], y[train], alpha = 0)
bestlam <- cv.out$lambda.min
ridge.pred <- predict(ridge.mod, s = bestlam, newx = x[test, ])
ridge.mse <-  mean((ridge.pred - y.test)^2)