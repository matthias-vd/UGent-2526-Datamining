# Load package and data
library(ISLR2)
data(Hitters)

# Calculate the number of players per League using the table() function
table(Hitters$League)