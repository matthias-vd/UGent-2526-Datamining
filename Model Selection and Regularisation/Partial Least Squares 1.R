set.seed(1)

x <- model.matrix(medv ~ ., Boston)[, -1]
y <- Boston$medv

train <- sample(1:nrow(Boston), nrow(Boston) / 2)
test <- (-train)
y.test <- y[test]

pls.fit <- plsr(medv ~ ., data = Boston[train, ], scale = TRUE, validation = "CV")
mse_values <- MSEP(pls.fit)$val[1,,]   # Extract CV MSE for each component
optimal_ncomp <- which.min(mse_values)-1
pls.pred <- predict(pls.fit, newdata = Boston[test, ], ncomp = optimal_ncomp)
pls.mse <- mean((pls.pred - y.test)^2)