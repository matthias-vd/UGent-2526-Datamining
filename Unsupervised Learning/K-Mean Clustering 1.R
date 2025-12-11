set.seed(2)
x2 <- matrix(rnorm(50 * 2), ncol = 2)
x2[1:25, 1] <- x2[1:25, 1] + 0.5
x2[1:25, 2] <- x2[1:25, 2] - 0.5

km.out <- kmeans(x2, 2, nstart = 20)

plot(x2, col = (km.out$cluster + 1), main = "K-Means Clustering Results with K=2",
     xlab = "", ylab = "", pch = 20, cex = 2)
