train <- 1:400
train.X <- biopsy[train, 1:9]
test.X  <- biopsy[-train, 1:9]
train.Y <- biopsy[train, 10]
test.Y  <- biopsy[-train, 10]
glm.fit <- glm(class ~ ., data = biopsy, subset = train, family = binomial)
glm.probs <- predict(glm.fit, newdata = test.X, type = "response")
glm.pred <- rep("benign", length(glm.probs))
glm.pred[glm.probs > 0.5] <- "malignant"
glm.table <- table(glm.pred, test.Y)
glm.acc <- mean(glm.pred == test.Y)