animals <- na.omit(animals)
pr.out <- prcomp(animals, scale = TRUE)
pr.rotation <- pr.out$rotation
pve <- pr.out$sdev^2 / sum(pr.out$sdev^2)
MC1<- 4
MC2<- 4