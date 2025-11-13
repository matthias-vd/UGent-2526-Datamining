compute_s_n <- function(n){
    sum((1:n)^2)
}

s_n <- vector("numeric",25)
for(n in 1:25){
    s_n[n] <- compute_s_n(n)
}