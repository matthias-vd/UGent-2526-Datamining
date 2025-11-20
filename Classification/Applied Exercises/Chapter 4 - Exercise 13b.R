library(MASS)
library(e1071)
library(class)

nb.fit <- naiveBayes(crime01 ~ nox + rad + dis, data = data.train)
nb.pred <- predict(nb.fit, data.test)
nb.error <- mean(nb.pred != crime01.test)

set.seed(1)
train.X <- scale(data.train[, c("nox", "rad", "dis")])
test.X <- scale(data.test[, c("nox", "rad", "dis")])
train.crime01 <- data.train$crime01

knn.pred1 <- knn(train.X, test.X, train.crime01, k = 1)
knn.error1 <- mean(knn.pred1 != crime01.test)

set.seed(1)
knn.pred10 <- knn(train.X, test.X, train.crime01, k = 10)
knn.error10 <- mean(knn.pred10 != crime01.test)

MC1 <- 1