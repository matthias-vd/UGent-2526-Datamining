qda.fit <- qda(mpg01 ~ cylinders + weight + displacement + horsepower,data = data.train)
qda.pred <- predict(qda.fit, data.test)$class
qda.acc <- mean(qda.pred == mpg01.test)
glm.fit <- glm(mpg01 ~ cylinders + weight + displacement + horsepower,data = data.train, family = binomial)
glm.probs <- predict(glm.fit, data.test, type = "response")
glm.pred <- ifelse(glm.probs > 0.5, 1, 0)
glm.acc <- mean(glm.pred == mpg01.test)
nb.fit <- naiveBayes(mpg01 ~ cylinders + weight + displacement + horsepower, data = data.train)
nb.pred <- predict(nb.fit, data.test)
nb.acc <- mean(nb.pred == mpg01.test)
set.seed(1)
vars <- c("cylinders", "weight", "displacement", "horsepower")
train.X <- scale(data.train[, vars])
test.X  <- scale(data.test[, vars])
train.mpg01 <- data.train$mpg01
knn.pred <- knn(train.X, test.X, factor(train.mpg01), k = 5)
knn.acc <- mean(knn.pred == mpg01.test)
glm.acc
nb.acc
knn.acc