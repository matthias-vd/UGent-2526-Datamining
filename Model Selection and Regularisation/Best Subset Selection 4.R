regfit.full <- regsubsets(Sales ~ ., data = Carseats, nvmax = 5)
reg.summary <- summary(regfit.full)
n.predictors <- which.max(reg.summary$rsq)
MC1<- 2