set.seed(1)
mpg01 <- ifelse(Auto$mpg > median(Auto$mpg), 1, 0)
data <- data.frame(Auto, mpg01 = mpg01)
pairs(data[, c("mpg", "cylinders", "weight", "displacement", "horsepower", "mpg01")])
train <- sample(1:nrow(data), 235)
data.test <- data[-train, ]
mpg01.test <- data.test$mpg01
lda.fit <- lda(mpg01 ~ cylinders + weight + displacement + horsepower,
               data = data, subset = train)
lda.pred <- predict(lda.fit, newdata = data.test)$class
lda.acc <- mean(lda.pred == mpg01.test)