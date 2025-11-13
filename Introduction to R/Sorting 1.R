library(dslabs)
data("murders")

pop <- murders$population

pop <- sort(pop)


hocuspocus <- which.min(murders$population)
pop_min <- murders$population[hocuspocus]
