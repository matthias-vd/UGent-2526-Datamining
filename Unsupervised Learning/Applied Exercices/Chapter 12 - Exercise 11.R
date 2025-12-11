genes <- read.csv("Ch10Ex11.csv", header = FALSE)
genes.dim <- dim(genes)

genes.cor <- cor(genes)
dist.cor  <- as.dist(1 - genes.cor)

hc.complete <- hclust(dist.cor, method = "complete")
hc.single   <- hclust(dist.cor, method = "single")
hc.average  <- hclust(dist.cor, method = "average")