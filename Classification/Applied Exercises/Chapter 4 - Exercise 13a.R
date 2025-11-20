library(MASS)
data(Boston)
crime01 <- ifelse(Boston$crim > median(Boston$crim), 1, 0)
data <- data.frame(Boston, crime01 = crime01)
set.seed(1)
train <- sample(1:nrow(data), 354)
data.train <- data[train, ]
data.test  <- data[-train, ]
crime01.test <- data.test$crime01
glm.fit <- glm(crime01 ~ nox + rad + dis,data = data.train,family = binomial)
glm.probs <- predict(glm.fit, newdata = data.test, type = "response")
glm.pred <- ifelse(glm.probs > 0.5, 1, 0)
glm.error <- mean(glm.pred != crime01.test)
glm.error
glm.pred[1:10]