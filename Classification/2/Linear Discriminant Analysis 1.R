train <- (Year < 2005)

lda.fit2 <- lda(Direction ~ Lag1 + Lag2+Lag3, data = Smarket, subset = train)