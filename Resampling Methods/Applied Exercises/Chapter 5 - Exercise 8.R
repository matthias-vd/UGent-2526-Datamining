set.seed(1)
data.n<- 100
data.p<-2
x <- rnorm(100)
y <- x - 2*x^2 + rnorm(100)
data <- data.frame(y = y, x = x)
loocv1 <- rep(0, 4)
for (i in 1:4) {
  fit <- glm(y ~ poly(x, i, raw = TRUE), data = data)
  loocv1[i] <- cv.glm(data, fit)$delta[1]
}
loocv1
set.seed(2)
loocv2 <- rep(0, 4)
for (i in 1:4) {
  fit <- glm(y ~ poly(x, i, raw = TRUE), data = data)
  loocv2[i] <- cv.glm(data, fit)$delta[1]
}
loocv2
MC1 <- 1
MC2 <- 2
coefs <- list()
for (i in 1:4) {
  fit <- glm(y ~ poly(x, i, raw = TRUE), data = data)
  coefs[[i]] <- summary(fit)$coef
}
MC3 <- 2