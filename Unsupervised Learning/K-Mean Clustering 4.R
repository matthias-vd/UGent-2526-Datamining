within <- rep(0, 12)
for(i in 1:12) {
    set.seed(i)
    km.out <- kmeans(animals, centers = i, nstart = 20)
    within[i] <- km.out$tot.withinss
}

plot(within, ylab = "within-cluster sum of squares", xlab = "K")

MC1 <- 3