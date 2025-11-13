# Load package and data
library(ISLR2)
data(Hitters)

# Use the accessor to extract Hits and assign it to a
a <- Hitters$Hits
# Use the square brackets to extract Hits and assign it to b
b <- Hitters[["Hits"]]
# Check if a and b are identical
identical(a,b)