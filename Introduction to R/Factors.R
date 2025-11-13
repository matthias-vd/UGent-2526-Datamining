# Load package and data
library(ISLR2)
data(Hitters)

# Determine the number of Leagues included in this variable
length(levels(Hitters$League))