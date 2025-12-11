library(MASS)
data(Boston)
set.seed(1)
bestsubset.size <- 12
library(glmnet)
x <- model.matrix(crim ~ ., Boston)[, -1]
y <- Boston$crim
cv.out.lasso <- cv.glmnet(x, y, alpha = 1)
bestlambda.lasso <- cv.out.lasso$lambda.min
cverror.lasso <- cv.out.lasso$cvm[cv.out.lasso$lambda == cv.out.lasso$lambda.min]
set.seed(1)
cv.out.ridge <- cv.glmnet(x, y, alpha = 0)
bestlambda.ridge <- cv.out.ridge$lambda.min
cverror.ridge <- min(cv.out.ridge$cvm)
library(pls)
set.seed(1)
pcr.fit<-pcr(crim ~ ., data = Boston, scale = TRUE,validation="CV")
pcr.msep<-MSEP(pcr.fit, estimate = "CV")
pcr.mse.nored <- min(pcr.msep$val[1, 1, ])
