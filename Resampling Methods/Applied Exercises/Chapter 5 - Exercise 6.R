library(ISLR2)
library(boot)

glm.fit <- glm(default ~ income + balance, data = Default, family = binomial)
glm.se <- summary(glm.fit)$coef[,2]

boot.fn <- function(data, index) {
  fit <- glm(default ~ income + balance, data = data, family = binomial, subset = index)
  return(coef(fit))
}

set.seed(1)
train <- sample(1:nrow(Default), nrow(Default)/2)
boot.test <- boot.fn(Default, train)

set.seed(1)
boot.se <- boot(Default, boot.fn, R = 10)

glm.se
boot.test
boot.se
apply(boot.se$t[,2:3], 2, sd)
MC1=1