library(MASS)
data(biopsy)
biopsy <- biopsy[,2:11]
biopsy <- na.omit(biopsy)

glm.fit <- glm(class ~ V1 + V2 + V3 + V4 + V5 + V6 + V7 + V8 + V9, family=binomial)