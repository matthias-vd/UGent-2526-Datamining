cv.error <- rep(0,5)
for (i in 1:5) {
    glm.fit = glm(mpg ~ poly(weight, i), data = Auto)
    cv.error[i] = cv.glm(Auto, glm.fit)$delta[1]
}