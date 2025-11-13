ind <- is.na(na_example)
clean_vector <- na_example[!ind]
vector_mean <- mean(clean_vector)