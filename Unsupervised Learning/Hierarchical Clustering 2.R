set.seed(564)
x <- matrix(rnorm(50 * 4), ncol = 2)
x[1:25, 1] <- x[1:25, 1] + 4
x[1:25, 2] <- x[1:25, 2] + 4
x[26:50, 1] <- x[26:50, 1] - 4
x[26:50, 2] <- x[26:50, 2] - 4
x[51:75, 1] <- x[51:75, 1] + 4
x[51:75, 2] <- x[51:75, 2] - 4
x[76:100, 1] <- x[76:100, 1] - 4
x[76:100, 2] <- x[76:100, 2] + 4

xsc <- scale(x)
hc.single <- hclust(dist(xsc), method = "single")
hc.labels <- cutree(hc.single, 4)