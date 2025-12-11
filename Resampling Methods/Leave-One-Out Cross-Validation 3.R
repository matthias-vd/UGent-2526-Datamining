cv.error <- rep(0,3)
for (i in 1:3) {
    glm.fit = glm(medv ~ poly(lstat, i), data = Boston)
    cv.error[i] = cv.glm(Boston, glm.fit)$delta[1]
}