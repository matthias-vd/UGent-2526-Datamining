regfit.fwd <- regsubsets(medv ~ ., data = Boston, nvmax = 13, method = "forward")
regfit.bwd <- regsubsets(medv ~ ., data = Boston, nvmax = 13, method = "backward")