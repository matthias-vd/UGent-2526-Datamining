set.seed(1)
train <- sample(506,300)
lm.fit1 <- lm(medv~lstat,data=Boston,subset=train)
lm.fit2 <- lm(medv~lstat+poly(lstat,2),data=Boston,subset=train)
lm.fit3 <- lm(medv~lstat+poly(lstat,2)+poly(lstat,3),data=Boston,subset=train)
mse1 <- mean((medv - predict(lm.fit1, Boston))[-train]^2)
mse2 <- mean((medv - predict(lm.fit2, Boston))[-train]^2)
mse3 <- mean((medv - predict(lm.fit3, Boston))[-train]^2)

MC1 <- 3