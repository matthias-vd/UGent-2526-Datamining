library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

population_in_millions_log <- log10(population_in_millions)
total_gun_murders_log <- log10(total_gun_murders)