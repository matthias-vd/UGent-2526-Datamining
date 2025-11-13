install.packages('ISLR2')
library(ISLR2)
data(Auto)

Auto$origin = as.factor(Auto$origin)
class(Auto$origin)