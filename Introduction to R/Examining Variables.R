# Load package and data
library(ISLR2)
data(Hitters)

# Use the accessor to extract Hits and assign it to the object a
a <- Hitters$Hits
# Determine the class of a
class(a)