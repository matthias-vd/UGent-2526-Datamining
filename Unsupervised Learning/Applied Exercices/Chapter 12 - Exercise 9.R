set.seed(2)
hc.complete <- hclust(dist(USArrests), method = "complete")
labels.complete <- cutree(hc.complete, k = 3)
sd.data <- scale(USArrests)
hc.complete.sd <- hclust(dist(sd.data), method = "complete")
labels.complete.sd <- cutree(hc.complete.sd, k = 3)
MC1 <- 1
MC2 <- 1