set.seed(1)
train <- 1:400
train.X <- biopsy[train,1:9]
test.X <- biopsy[-train,1:9]
train.Y<- biopsy[train,10]
test.Y<-biopsy[-train,10]

knn.pred1 <- knn(train.X, test.X, train.Y, k = 1)
knn.pred3 <- knn(train.X, test.X, train.Y, k = 3)
knn.table1 <- table(knn.pred1, test.Y)
knn.table3 <- table(knn.pred3, test.Y)
knn.acc1 <- mean(knn.pred1 == test.Y)
knn.acc3 <- mean(knn.pred3 == test.Y)