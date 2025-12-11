library(leaps)
set.seed(1)
x <- matrix(rnorm(1000 * 20), 1000, 20)
b <- rnorm(20)
b[3] <- 0
b[4] <- 0
b[9] <- 0
b[10] <- 0
b[19] <- 0
eps <- rnorm(1000)
y <- x %*% b + eps
train <- sample(seq(1000), 100, replace = FALSE)
test <- -train
x.train <- x[train, ]
x.test <- x[test, ]
y.train <- y[train]
y.test <- y[test]
train.data <- data.frame(y = y.train, x.train)
regfit.full <- regsubsets(y ~ ., data = train.data, nvmax = 20)
train.errors <- rep(NA, 20)
train.mat <- model.matrix(y ~ ., data = train.data)
for (i in 1:20) {
  coefi <- coef(regfit.full, id = i)
  pred <- train.mat[, names(coefi)] %*% coefi
  train.errors[i] <- mean((y.train - pred)^2)
}
test.errors<- rep(NA, 20)
test.data <- data.frame(y = y.test, x.test)
test.mat <- model.matrix(y ~ ., data = test.data)
for (i in 1:20) {
  coefi <- coef(regfit.full, id = i)
  pred <- test.mat[, names(coefi)] %*% coefi
  test.errors[i] <- mean((y.test - pred)^2)
}
modelsize.train<- which.min(train.errors)
modelsize.test<-which.min(test.errors)
coef.bestmodel<- coef(regfit.full,id=modelsize.test)