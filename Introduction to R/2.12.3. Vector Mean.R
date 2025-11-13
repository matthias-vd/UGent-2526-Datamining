library(dslabs)
data("murders")

murder_rate <- (murders$total/murders$population)*100000

mean_murder_rate <- mean(murder_rate)