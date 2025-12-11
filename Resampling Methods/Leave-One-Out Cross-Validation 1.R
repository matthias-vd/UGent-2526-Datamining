glm.fit2 <- glm(mpg ~ poly(horsepower, 2), data = Auto)
cv.err2 <- cv.glm(Auto, glm.fit2)
cv.delta2 <- cv.err2$delta