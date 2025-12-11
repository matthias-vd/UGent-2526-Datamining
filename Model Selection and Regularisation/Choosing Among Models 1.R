train <- sample(c(TRUE, FALSE), nrow(Boston), rep = TRUE)
test <- !train
regfit.best <- regsubsets(medv ~ ., data = Boston[train, ], nvmax = 13)