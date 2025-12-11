pca.fit <- prcomp(USArrests, scale = TRUE)
sdev <- pca.fit$sdev
pve1 <- sdev^2 / sum(sdev^2)
loadings <- pca.fit$rotation
USArrests.sd <- scale(USArrests)
subtotal <- USArrests.sd %*% loadings
nominator <- apply(subtotal^2, 2, sum)
denominator <- sum(USArrests.sd^2)
pve2 <- nominator / denominator