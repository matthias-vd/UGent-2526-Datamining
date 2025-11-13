Auto <- read.csv("Auto.csv",header=T,na.strings="?")
Auto.dim1 <- dim(Auto)
Auto2 <- na.omit(Auto)
Auto.dim2 <- dim(Auto2)