set.seed(2)
x <- matrix(rnorm(20 * 3 * 50, mean = 0, sd = 0.3), ncol = 50)
x[1:20, 2] <- 1
x[21:40, 1] <- 2
x[21:40, 2] <- 2
x[41:60, 1] <- 1
true.labels <- c(rep(1, 20), rep(2, 20), rep(3, 20))

pr.out <- prcomp(x)
plot(pr.out$x[,1], pr.out$x[,2], col = true.labels, pch = 19)
km.out3 <- kmeans(x, centers = 3, nstart = 20)
km.out2 <- kmeans(x, centers = 2, nstart = 20)
km.out4 <- kmeans(x, centers = 4, nstart = 20)
km.out.pca <- kmeans(pr.out$x[,1:2], centers = 3, nstart = 20)
x.sd <- scale(x)
km.out.sd <- kmeans(x.sd, centers = 3, nstart = 20)
km.out3$cluster
km.out2$cluster
km.out4$cluster
km.out.pca$cluster
km.out.sd$cluster