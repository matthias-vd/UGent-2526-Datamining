pr.out <- prcomp(USArrests, scale = TRUE)
pr.center <- pr.out$'center'
pr.scale <- pr.out$'scale'