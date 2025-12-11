pcr.fit <- pcr(Apps ~ ., data = College.train, scale = TRUE, validation = "CV")
pcr.pred <- predict(pcr.fit, College.test, ncomp = 10)
pcr.error <- mean((College.test$Apps - pcr.pred)^2)

pls.fit <- plsr(Apps ~ ., data = College.train, scale = TRUE, validation = "CV")
pls.pred <- predict(pls.fit, College.test, ncomp = 6)
pls.error <- mean((College.test$Apps - pls.pred)^2)