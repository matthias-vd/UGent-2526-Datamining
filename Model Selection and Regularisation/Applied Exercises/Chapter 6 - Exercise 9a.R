library(ISLR2)
data(College)
library(glmnet)
set.seed(11)
train <- sample(1:dim(College)[1], dim(College)[1] / 2)
test <- -train
College.train <- College[train, ]
College.test <- College[test, ]


grid <- 10 ^ seq(4, -2, length = 100)
lm.fit<- lm(Apps~., data=College.train)
lm.pred<-predict(lm.fit, College.test)
lm.error<- mean((College.test[, "Apps"]-lm.pred)^2)


x.train <- model.matrix(Apps ~ ., data = College.train)[, -1]
y.train <- College.train$Apps
x.test <- model.matrix(Apps ~ ., data = College.test)[, -1]
y.test <- College.test$Apps
grid <- 10 ^ seq(4, -2, length = 100)
ridge.cv <- cv.glmnet(x.train, y.train, alpha = 0, lambda = grid)
best.lambda <- ridge.cv$lambda.min
ridge.pred <- predict(ridge.cv, s = best.lambda, newx = x.test)
ridge.error <- mean((ridge.pred - y.test)^2)


lasso.cv <-cv.glmnet(x.train, College.train[, "Apps"], alpha=1, lambda=grid)
best.lambda.lasso <- lasso.cv$lambda.min
lasso.pred <- predict(lasso.cv, newx=x.test, s=best.lambda.lasso)
lasso.error <- mean((lasso.pred - y.test)^2)
lasso.fit <- glmnet(x.train, y.train, alpha = 1, lambda = grid)
coef.lasso <- coef(lasso.fit, s = best.lambda.lasso)