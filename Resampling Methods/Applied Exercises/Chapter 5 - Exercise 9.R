mu.hat <- mean(medv)
n <- length(medv)
s <- sd(medv)
est.sd <- s / sqrt(n)

boot.fn.mean <- function(data, index) {
  return(coef(lm(medv ~ 1, data = data[index, ])))
}
set.seed(1)
boot.se.mean <- boot(data = Boston, statistic = boot.fn.mean, R = 10)

boot.se.mean2 <- 0.4112905

ci.lower <- mu.hat - 2 * boot.se.mean2
ci.upper <- mu.hat + 2 * boot.se.mean2
ci.bootstrap <- c(ci.lower, ci.upper)
t.test.result <- t.test(Boston$medv)
ci.ttest <- t.test.result$conf.int

medv.median <- median(medv)

boot.fn.median <- function(data, index) {
  return(median(data$medv[index]))
}
set.seed(1)
boot.se.median <- boot(data = Boston, statistic = boot.fn.median, R = 10)

boot.se.median2 <-0.3378445

perc10 <- quantile(medv, 0.10)

boot.fn.perc <- function(data, index) {
  return(quantile(data$medv[index], 0.10))
}
set.seed(1)
boot.se.perc <- boot(data = Boston, statistic = boot.fn.perc, R = 10)

boot.se.perc2 <-0.2635758

MC1<-1