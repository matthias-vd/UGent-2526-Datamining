train <- (Weekly$Year >= 1990) & (Weekly$Year <= 2008)
test  <- (Weekly$Year >= 2009) & (Weekly$Year <= 2010)


Weekly.test <- Weekly[test, ]
Direction.test <- Weekly$Direction[test]


glm.fit <- glm(Direction ~ Lag2, data = Weekly, family = binomial, subset = train)
glm.probs <- predict(glm.fit, Weekly.test, type = "response")
glm.pred <- ifelse(glm.probs > 0.5, "Up", "Down")
glm.table <- table(glm.pred, Direction.test)
glm.acc <- mean(glm.pred == Direction.test)


lda.fit <- lda(Direction ~ Lag2, data = Weekly, subset = train)
lda.pred <- predict(lda.fit, Weekly.test)$class
lda.table <- table(lda.pred, Direction.test)
lda.acc <- mean(lda.pred == Direction.test)


qda.fit <- qda(Direction ~ Lag2, data = Weekly, subset = train)
qda.pred <- predict(qda.fit, Weekly.test)$class
qda.table <- table(qda.pred, Direction.test)
qda.acc <- mean(qda.pred == Direction.test)


nb.fit <- naiveBayes(Direction ~ Lag2, data = Weekly, subset = train)
nb.pred <- predict(nb.fit, Weekly.test)
nb.table <- table(nb.pred, Direction.test)
nb.acc <- mean(nb.pred == Direction.test)


set.seed(1)
train.X <- as.matrix(Weekly[train, "Lag2"])
test.X  <- as.matrix(Weekly[test, "Lag2"])
train.Direction <- Weekly$Direction[train]

knn.pred <- knn(train.X, test.X, train.Direction, k = 1)
knn.table <- table(knn.pred, Direction.test)
knn.acc <- mean(knn.pred == Direction.test)
MC1=6

glm.acc
lda.acc
qda.acc
nb.acc
knn.acc