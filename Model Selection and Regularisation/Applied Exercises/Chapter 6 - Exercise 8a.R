set.seed(1)
x <- rnorm(100)
eps <- rnorm(100)

y <- 2 + 3 * x - x^2 + 0.5 * x^3 + eps

data <- data.frame(y, x, x2 = x^2, x3 = x^3, x4 = x^4, x5 = x^5,
                   x6 = x^6, x7 = x^7, x8 = x^8, x9 = x^9, x10 = x^10)

regfit.full <- regsubsets(y ~ ., data = data, nvmax = 10)
regfit.summary <- summary(regfit.full)

# Extract model selection metrics
min_cp <- min(regfit.summary$cp)
min_bic <- min(regfit.summary$bic)
max_adjR2 <- max(regfit.summary$adjr2)

max_adjr2 <- which.max(regfit.summary$adjr2)
coef_bestmodel <- coef(regfit.full, max_adjr2)

regfit.fwd <- regsubsets(y ~., data = data, nvmax =10, method = "forward")
regfit.bwd <- regsubsets(y ~., data = data, nvmax = 10, method = "backward")

max_adjR2_fwd <- which.max(summary(regfit.fwd)$adjr2)
max_adjR2_bwd <- which.max(summary(regfit.bwd)$adjr2)

coef.fwd <- coef(regfit.fwd, max_adjR2_fwd)
coef.bwd <- coef(regfit.bwd, max_adjR2_bwd)