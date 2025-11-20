set.seed(1)
x1 <- runif(100)
x2 <- 0.5 * x1 + rnorm(100)/10
y <- 2 + 2 * x1 + 0.3 * x2 + rnorm(100)
x.cor=cor(x1,x2)
lm.fit1 <- lm(y ~ x1 + x2)
beta.hat0=2.13049959710449
beta.hat1=1.43955543492785
beta.hat2=1.00967416582687
MC1=1
MC2=2
lm.fit2 <- lm(y ~ x1)
MC3=1
lm.fit3 <- lm(y ~ x2)
MC4=1
MC5=4
x1 <- c(x1, 0.1)
x2 <- c(x2, 0.8)
y <- c(y, 6)