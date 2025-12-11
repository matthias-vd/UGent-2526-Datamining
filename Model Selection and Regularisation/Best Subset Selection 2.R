regfit.full <- regsubsets(medv ~ ., data = Boston, nvmax = 13)
reg.summary <- summary(regfit.full)