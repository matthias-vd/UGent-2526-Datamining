set.seed(2)
x <- matrix(rnorm(50 * 2), ncol = 2)
x[1:25, 1] <- x[1:25, 1] + 3
x[1:25, 2] <- x[1:25, 2] - 4

hc.average <- hclust(dist(x), method = "average")
hc.single  <- hclust(dist(x), method = "single")