train <- (Year < 2005)
Smarket.2005 <- Smarket[!train,]
Direction.2005 <- Direction[!train]
lda.fit3 <- lda(Direction ~ poly(Lag1, 2) + Lag2, data = Smarket, subset = train)

lda.pred3 <- predict(lda.fit3, Smarket.2005)
lda.class3 <- lda.pred3$class
lda.table3<- table(lda.class3, Direction.2005)
lda.acc3 <- mean(lda.class3 == Direction.2005)