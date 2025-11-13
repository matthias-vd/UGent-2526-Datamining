library(dslabs)
data(murders)

murder_rate <- (murders$total/murders$population)*100000

low <- murder_rate < 1