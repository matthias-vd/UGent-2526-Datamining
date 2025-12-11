library(ISLR2)

# Convert default to numeric
Default$default <- as.numeric(Default$default == "Yes")

### 1. Logistic regression on full dataset
glm.fit1 <- glm(default ~ income + balance, data = Default, family = binomial)


### 2. Validation set approach (50/50 split)
set.seed(1)
train2 <- sample(1:nrow(Default), nrow(Default) / 2)

glm.fit2 <- glm(default ~ income + balance, data = Default, family = binomial, subset = train2)

glm.prob2 <- predict(glm.fit2, newdata = Default[-train2, ], type = "response")
glm.pred2 <- ifelse(glm.prob2 > 0.5, 1, 0)

val.error2 <- mean(glm.pred2 != Default$default[-train2])


### 3. Repeat with 3 different splits
val.error3 <- rep(0, 3)

for (i in 1:3) {
  set.seed(i)
  train3 <- sample(1:nrow(Default), nrow(Default) / 2)

  glm.fit3 <- glm(default ~ income + balance, data = Default, family = binomial, subset = train3)

  glm.prob3 <- predict(glm.fit3, newdata = Default[-train3, ], type = "response")
  glm.pred3 <- ifelse(glm.prob3 > 0.5, 1, 0)

  val.error3[i] <- mean(glm.pred3 != Default$default[-train3])
}

val.error3


### 4. Add student dummy variable
set.seed(1)
train4 <- sample(1:nrow(Default), nrow(Default) / 2)

glm.fit4 <- glm(default ~ income + balance + student, data = Default, family = binomial, subset = train4)

glm.prob4 <- predict(glm.fit4, newdata = Default[-train4, ], type = "response")
glm.pred4 <- ifelse(glm.prob4 > 0.5, 1, 0)

val.error4 <- mean(glm.pred4 != Default$default[-train4])

val.error2
val.error4
MC1=2