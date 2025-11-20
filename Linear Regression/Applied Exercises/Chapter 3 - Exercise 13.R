set.seed(1)
x=rnorm(100)
eps=rnorm(100, mean = 0, sd = 0.5)
y=-1 + 0.5 * x + eps
y.length=length(y)
beta0=-1
beta1=0.5
pairs(y~x)
lm.fit1=lm(y~x)
beta.hat0=-1.01884630695388
beta.hat1=0.499469806914036
abline(lm.fit1, col = "blue", lwd = 2)
abline(a = beta0, b = beta1, col = "red", lwd = 2, lty = 2)
legend("topleft", legend = c("Least squares", "Population line"),col = c("blue", "red"), lwd = 2, lty = c(1,2), bty="n")
lm.fit2=lm(y ~ x + I(x**2))
MC1=2
MC2=1
MC3=2
MC4=3