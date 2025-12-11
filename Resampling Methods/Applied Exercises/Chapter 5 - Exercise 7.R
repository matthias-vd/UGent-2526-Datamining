Weekly$Direction <- as.numeric(Weekly$Direction == "Up")
Weekly <- Weekly[1:200, ]
glm.fit1<-glm(Direction~Lag1+Lag2,data=Weekly,family=binomial)
glm.fit2<-glm(Direction~Lag1+Lag2,data=Weekly,subset=-1,family=binomial)
glm.probs2 <- predict(glm.fit2, Weekly[1, ], type = "response")
glm.pred2 <- 0
if (glm.probs2 > 0.5) {
  glm.pred2 <- 1
}
true.direction <- Weekly[1, "Direction"]
glm.correct2 <- (glm.pred2 == true.direction)


error <- rep(0, 200)
for (i in 1:200) {
    glm.fit3<-glm(Direction~Lag1+Lag2,data=Weekly,subset=-i,family=binomial)
    glm.prob3 <- predict(glm.fit3, Weekly[i, ], type = "response")
    glm.pred3 <- as.numeric(glm.prob3 > 0.5)
    error[i] <- as.numeric(glm.pred3 != Weekly[i, "Direction"])
}
loocv<-mean(error)