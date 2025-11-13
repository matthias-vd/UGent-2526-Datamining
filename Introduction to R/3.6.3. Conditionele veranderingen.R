library(dslabs)
data("murders")

new_names <- ifelse(nchar(murders$state)>8,murders$abb,murders$state)