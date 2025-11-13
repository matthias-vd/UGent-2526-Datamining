library(dslabs)
data("murders")

murder_rate <- (murders$total/murders$population)*100000

low <- murder_rate < 1
low_ind <- which(murder_rate<1)

low_states <- murders$state[low_ind]