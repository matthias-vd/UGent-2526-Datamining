set.seed(1)
train <- sample(392, 196)
lm.fit <- lm(mpg ~ horsepower, data = Auto, subset = train)
summary(lm.fit)

set.seed(2)
train2 <- sample(392, 196)
lm.fit2 <- lm(mpg ~ horsepower, data = Auto, subset = train2)
summary(lm.fit2)