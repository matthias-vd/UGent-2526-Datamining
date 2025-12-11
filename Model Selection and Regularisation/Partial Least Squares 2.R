set.seed(1)

pls.fit <-  plsr(medv ~ ., data = Boston, scale = TRUE, ncomp = 9)