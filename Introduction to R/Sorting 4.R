pop <- murders$population
pop_min_index <- order(pop)[1]
states <- murders$state
smallest_city <- states[pop_min_index]