library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6

boxplot(with(murders,population_in_millions))