compute_s_n <- function(n){
    sum((1:n)^2)
}
s_n <- sapply(1:25,compute_s_n)