# we adapted the function a little for the dodona exercise
# for testing your code please use the predict function defined above
# for submitting your code on dodona, use this function instead
predict.regsubsets <- function(object, newdata, id, ...) {
    mat <- model.matrix(medv ~ ., data = newdata)
    coefi <- coef(object, id = id)
    xvars <- names(coefi)
    mat[, xvars] %*% coefi
}

k <- 10
folds <- sample(1:k, nrow(Boston), replace = TRUE)
cv.errors <- matrix(NA, k, 13, dimnames = list(NULL, paste(1:13)))

for (j in 1:k) {
best.fit <- regsubsets(medv ~ ., data = Boston[folds != j, ], nvmax = 13)
    for (i in 1:13) {
      pred <-predict(best.fit, Boston[folds == j, ], id = i)
      cv.errors[j, i] <- mean((Boston$medv[folds == j] - pred)^2)
    }
}

mean.cv.errors <- apply(cv.errors, 2, mean)
optimal.j <- which.min(mean.cv.errors)
reg.best <- regsubsets(medv ~ ., data = Boston, nvmax = 13)
reg.best.coef <- coef(reg.best, optimal.j)