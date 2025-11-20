glm.probs <- predict(glm.fit, type = "response")

glm.pred <- rep('benign', 683)
glm.pred[glm.probs > 0.5] <- 'malignant'

glm.table<-table(glm.pred, biopsy$class)
glm.acc<-mean(glm.pred == biopsy$class)