set.seed(1)

x <- model.matrix(medv ~ ., Boston)[, -1]
y <- Boston$medv

train <- sample(1:nrow(Boston), nrow(Boston) / 2)
test <- (-train)
y.test <- y[test]

pcr.fit <- pcr(medv ~ ., data = Boston, subset = train, scale = TRUE, validation = "CV", ncomp = 10)
mse.values <- MSEP(pcr.fit)$val[1,,]
optimal.M <- which.min(mse.values)
pcr.pred <-  predict(pcr.fit, newdata = Boston[test, ], ncomp = 5)
pcr.mse <- mean((pcr.pred - y[test])^2)