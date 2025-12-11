set.seed(17)
cv.error.10 <- rep(0 ,10)
for (i in 1:10) {
   glm.fit <- glm(medv ~ poly(lstat, i), data = Boston)
   cv.error.10[i] <- cv.glm(Boston, glm.fit, K = 10)$delta[1]
}