test.mat <- model.matrix(medv ~ ., data = Boston[test, ])
val.errors <- rep(NA, 13)

for (i in 1:13) {
  coefi <- coef(regfit.best, id = i)
  pred <- test.mat[, names(coefi)] %*% coefi
  val.errors[i] <- mean((Boston$medv[test] - pred)^2)
}