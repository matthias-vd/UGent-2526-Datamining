library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6

hist(with(murders,population_in_millions))